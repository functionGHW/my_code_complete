" Templates: {{{1
" to add templates for new file type, see below
"
" "some new file type
" let g:template['newft'] = {}
" let g:template['newft']['keyword'] = "some abbrevation"
" let g:template['newft']['anotherkeyword'] = "another abbrevation"
" ...
"

" ===For HTML Begin========================
let g:template['html'] = {}
let g:template['html']['p'] = "<p class=\"\">".g:rs."...".g:re."</p>"
let g:template['html']['a'] = "<a target=\"_blank\" href=\"#\">".g:rs."...".g:re."</a>"
let g:template['html']['div'] = "<div class=\"\">".g:rs."...".g:re."</div>"
let g:template['html']['span'] = "<span class=\"\">".g:rs."...".g:re."</span>"
let g:template['html']['script'] = "<script src=\"".g:rs."...".g:re."\"></script>"
let g:template['html']['link'] = "<link rel=\"stylesheet\" media=\"screen\" href=\"".g:rs."...".g:re."\" />"
let g:template['html']['img'] = "<img class=\"\" alt=\"\" src=\"".g:rs."...".g:re."\" />"

let g:template['html']['htmltemplate'] = "<!DOCTYPE html>\<cr>".
            \"<html lang=\"en\">\<cr>".
                \"<head>\<cr>".
                    \"<title>New Page</title>\<cr>".
                    \"<link rel=\"stylesheet\" media=\"screen\" href=\"styles/style.css\" />\<cr>".
                \"</head>\<cr>".
                \"<body>\<cr>".
                    \"<div id=\"main_container\">\<cr>".g:template['html']['p'].
                    \"\<cr></div>\<cr>".
                    \"<script src=\"scripts/onload.js\"></script>\<cr>".
                \"</body>\<cr>".
            \"</html>\<cr>"

" ===For HTML End==========================

" ===For C sharp Begin=====================
let g:template['cs'] = {}
" ===For C sharp End=====================

