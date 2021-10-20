root = true

[*]
end_of_line = lf
charset = utf-8
max_line_length = 80

[*.md]
indent_style = space
indent_size = 2
insert_final_newline = true
trim_trailing_whitespace = false
max_line_length = 180

[*.{vim,sh,py,php}]
indent_style = space
indent_size = 4
insert_final_newline = true
trim_trailing_whitespace = true
max_line_length = 80

[*.rb]
indent_style = space
indent_size = 2
insert_final_newline = true
trim_trailing_whitespace = true
max_line_length = 120

[*.{yml,yaml}]
indent_style = space
indent_size = 2

[Vagrantfile]
indent_style = space
indent_size = 2

[*.{bat,vbs,ps1}]
end_of_line = CRLF
