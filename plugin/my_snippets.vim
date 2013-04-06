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

" ===For C# Begin==========================
let g:template['cs'] = {}
let g:template['cs']['for'] = "for( ".g:rs."...".g:re." ; ".g:rs."...".g:re." ; ".g:rs."...".g:re." )\<cr>".
                             \"{\<cr>".
                                    \g:rs."to do".g:re."\<cr>".
                             \"}"
let g:template['cs']['foreach'] = "foreach (".g:rs."T item".g:re." in ".g:rs."items".g:re.")\<cr>".
                                 \"{\<cr>".
                                        \g:rs."to do".g:re."\<cr>".
                                 \"}"
let g:template['cs']['switch'] = "switch (".g:rs."...".g:re.")\<cr>".
                                \"{\<cr>".
                                    \"case ".g:rs."...".g:re.":\<cr>".
                                        \"break;\<cr>".
                                    \"default:\<cr>".
                                        \"break;\<cr>".
                                \"}"
let g:template['cs']['if'] = "if (".g:rs."...".g:re.")\<cr>".
                            \"{\<cr>".
                                    \g:rs."to do".g:re."\<cr>".
                            \"}"
let g:template['cs']['while'] = "while (".g:rs."...".g:re.")\<cr>".
                               \"{\<cr>".
                                    \g:rs."...".g:re."\<cr>".
                               \"}"
let g:template['cs']['dow'] = "do\<cr>{\<cr>} while(".g:rs."..".g:re.")"
let g:template['cs']['ife'] = "if (".g:rs."...".g:re.")\<cr>".
                             \"{\<cr>".
                                    \g:rs."to do".g:re."\<cr>".
                             \"}\<cr>".
                             \"else\<cr>".
                             \"{\<cr>".
                                    \g:rs."...".g:re."\<cr>".
                             \"}"
let g:template['cs']['try'] = "try\<cr>{\<cr>".g:rs."to do".g:re."\<cr>}"
let g:template['cs']['catch'] = "catch (".g:rs."System.Exception ex".g:re.")\<cr>".
                               \"{\<cr>".g:rs."to do".g:re."\<cr>}"
let g:template['cs']['finally'] = "finally\<cr>{\<cr>".g:rs."to do".g:re."\<cr>}"

let g:template['cs']['tryc'] = g:template['cs']['try']."\<cr>".g:template['cs']['catch']
let g:template['cs']['trycf'] = g:template['cs']['try']."\<cr>".
                               \g:template['cs']['catch']."\<cr>".
                               \g:template['cs']['finally']
let g:template['cs']['tryf'] = g:template['cs']['try']."\<cr>".
                               \g:template['cs']['finally']

let g:template['cs']['getset'] = "\<cr>{\<cr>get\<cr>".
                                           \"{\<cr>".g:rs."get".g:re."\<cr>}\<cr>".
                                           \"set\<cr>".
                                           \"{\<cr>".g:rs."get".g:re."\<cr>}\<cr>}"

let g:template['cs']['read'] = "Console.Read();"
let g:template['cs']['readl'] = "Console.ReadLine();"
let g:template['cs']['readk'] = "Console.ReadKey();"
let g:template['cs']['wrt'] = "Console.Write(".g:rs."obj or expr".g:re.");"
let g:template['cs']['wrtl'] = "Console.WriteLine(".g:rs."obj or expr".g:re.");"

let g:template['cs']['Main'] = "static void Main(string[] args)\<cr>".
                              \"{\<cr>".
                                    \g:rs."to do".g:re."\<cr>".
                              \"}// end Main"

let g:template['cs']['cstemplate'] = "using System;\<cr>".
                                    \"using System.Collections.Generic;\<cr>".
                                    \"using System.Linq;\<cr>".
                                    \"using System.Text;\<cr>\<cr>".
                                    \"namespace ".g:rs."...".g:re."\<cr>".
                                    \"{\<cr>".
                                        \"public class ".g:rs."...".g:re."\<cr>".
                                        \"{\<cr>".
                                        \g:template['cs']['Main'].
                                        \"}// end class\<cr>".
                                    \"}// end namespace"

" ===For C# End===========================

