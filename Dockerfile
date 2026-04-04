FROM debian:12-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    git \
    fzf \
    ripgrep \
    nodejs \
    npm \
    python3 \
    python3-pip \
    python3-venv \
    yamllint \
    shfmt \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash dev

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY vimrc vimrc.bundles /home/dev/
RUN chown -R dev:dev /home/dev

USER dev

RUN vim +PlugInstall +q

RUN pip3 install --user black yamlfmt dockerfmt

RUN npm install -g yarn

RUN vim +"CocInstall coc-pyright coc-json coc-html coc-css coc-sh coc-yaml" +q

WORKDIR /home/dev

CMD ["vim"]
