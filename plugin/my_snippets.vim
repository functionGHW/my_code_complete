" Templates: {{{1
" to add templates for new file type, see below
"
" "some new file type
" let g:template['newft'] = {}
" let g:template['newft']['keyword'] = "some abbrevation"
" let g:template['newft']['anotherkeyword'] = "another abbrevation"
" ...
"


" ===Define Functions=====================

" [Get converted file name like 'file.c' ]
function! InsertFileName()
    let _name=expand("%:t")
    "let filename=toupper(filename)
    "let _name=substitute(filename,'\.','_',"g")
    "let _name="__"._name."__"
    return _name
endfunction

" [Get current path]
function! GetCurrentPath()
    let _name=expand("%:p:h")
    "let filename=toupper(filename)
    "let _name=substitute(filename,'\.','_',"g")
    "let _name="__"._name."__"
    return _name
endfunction
" ===Define Functions=====================


" ===Additional for c, cpp, _ Begin========
let g:template['_']['xfn'] = "\<c-r>=InsertFileName()\<cr>"
let g:template['_']['xpath'] = "\<c-r>=GetCurrentPath()\<cr>"
let g:template['_']['filedeclaration'] = "/* FileName: <c-r>=InsertFileName()\<cr>\<cr>".
                                        \"Copyright (c) functionghw".
                                        \"Author:\<cr>".
                                        \"\tfunctionghw <functionghw@hotmail.com>\<cr>".
                                        \"Description:\<cr>".
                                        \"\<cr>".
                                        \"*/\<cr>"
" ===Additional for c, cpp, _ End==========

" ===For HTML Begin========================
let g:template['html'] = {}
let g:template['html']['p'] = "<p class=\"\">".g:rs."...".g:re."</p>"
let g:template['html']['a'] = "<a target=\"_blank\" href=\"#\">".g:rs."...".g:re."</a>"
let g:template['html']['div'] = "<div class=\"\">".g:rs."...".g:re."</div>"
let g:template['html']['span'] = "<span class=\"\">".g:rs."...".g:re."</span>"
let g:template['html']['script'] = "<script src=\"".g:rs."...".g:re."\"></script>"
let g:template['html']['link'] = "<link rel=\"stylesheet\" media=\"screen\" href=\"".g:rs."...".g:re."\" />"
let g:template['html']['img'] = "<img class=\"\" alt=\"\" src=\"".g:rs."...".g:re."\" />"

let g:template['html']['blkqut'] = "<blockquote class=\"\">".g:rs."...".g:re."</blockquote>"
let g:template['html']['pre'] = "<pre>".g:rs."...".g:re."</pre>"
let g:template['html']['li'] = "<li>".g:rs."...".g:re."</li>"
let g:template['html']['ul'] = "<ul class=\"\">\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                    \g:template['html']['li']."\<cr>".
                              \"</ul>\<cr>"
let g:template['html']['ol'] = "<ol class=\"\">\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                    \g:template['html']['li']."\<cr>".
                              \"</ol>\<cr>"

let g:template['html']['option'] = "<option value=\"".g:rs."...".g:re."\">".g:rs."...".g:re."</option>"
let g:template['html']['select'] = "<select id=\"".g:rs."...".g:re."\">\<cr>".
                                        \g:template['html']['option']."\<cr>".
                                \"</select>"

let g:template['html']['table'] = "<table class=\"".g:rs."...".g:re."\">\<cr>".
                                        \"<tr>\<cr><td></td>\<cr><td></td>\<cr></tr>\<cr>".
                                \"</table>"

let g:template['html']['lbl'] = "<label class=\"\">".g:rs."...".g:re."</label>"
let g:template['html']['text'] = "<input type=\"text\" name=\"".g:rs."...".g:re."\" />"
let g:template['html']['pwd'] = "<input type=\"password\" name=\"".g:rs."...".g:re."\" />"
let g:template['html']['radio'] = "<input type=\"radio\" name=\"".g:rs."...".
                                    \g:re."\" value=\"".g:rs."...".g:re."\" />"
let g:template['html']['chkbox'] = "<input type=\"checkbox\" name=\"".g:rs."...".
                                        \g:re."\" value=\"".g:rs."...".g:re."\" />"
let g:template['html']['button'] = "<button type=\"button\" id=\"\">".g:rs."...".g:re."</button>"
let g:template['html']['submit'] = "<button type=\"submit\">".g:rs."...".g:re."</button>"
let g:template['html']['tarea'] = "<textarea id=\"".g:rs."...".g:re."\"></textarea>"

let g:template['html']['form'] = "<form name=\"\" method=\"post\" action=\"\">\<cr>".
                                    \g:rs."...".g:re."\<cr></form>\<cr>"
let g:template['html']['loginform'] = "<form name=\"loginform\" method=\"post\" action=\"\">\<cr>".
                                            \"<label>".g:rs."...".g:re."</label>\<cr>".
                                            \"<input type=\"text\" name=\"username\" /><br />\<cr>".
                                            \"<label>".g:rs."...".g:re."</label>\<cr>".
                                            \"<input type=\"password\" name=\"password\" /><br />\<cr>".
                                            \g:template['html']['submit']."\<cr>".
                                     \"</form>"

let g:template['html']['htmltemplate'] = "<!DOCTYPE html>\<cr>".
            \"<html lang=\"en\">\<cr>".
                \"<head>\<cr>".
                    \"<meta charset=\"UTF-8\" />\<cr>".
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

" ===For writing blog Begin================
let g:template['html']['comtxt'] = "<p class=\"common_txt\">".g:rs."...".g:re."</p>"
let g:template['html']['keypoint'] = "<blockquote class=\"key_point\">".g:rs."...".g:re."</blockquote>"
let g:template['html']['em1'] = "<span class=\"em_l1\">".g:rs."...".g:re."</span>"
let g:template['html']['em2'] = "<span class=\"em_l2\">".g:rs."...".g:re."</span>"
let g:template['html']['em3'] = "<span class=\"em_l3\">".g:rs."...".g:re."</span>"
let g:template['html']['emhl'] = "<span class=\"em_hl\">".g:rs."...".g:re."</span>"
let g:template['html']['keyw'] = "<span class=\"keyword\">".g:rs."...".g:re."</span>"
let g:template['html']['mjax'] = "<span class=\"mjax\">\\(".g:rs."...".g:re."\\)</span>"
let g:template['html']['tit'] = "<h2 class=\"tit\">".g:rs."...".g:re."</h2>"
let g:template['html']['ulist'] = "<ul class=\"ulist\">\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                 \"</ul>"
let g:template['html']['olist'] = "<ol class=\"olist\">\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                    \g:template['html']['li']."\<cr>".
                                 \"</ol>"

let g:template['html']['pycode'] = "<pre class=\"brush: python; first-line: 1\">\<cr>".
                                        \g:rs."...".g:re."\<cr></pre>"
let g:template['html']['cppcode'] = "<pre class=\"brush: cpp; first-line: 1\">\<cr>".
                                        \g:rs."...".g:re."\<cr></pre>"
let g:template['html']['cscode'] = "<pre class=\"brush: csharp; first-line: 1\">\<cr>".
                                        \g:rs."...".g:re."\<cr></pre>"
let g:template['html']['asmcode'] = "<pre class=\"brush: asm; first-line: 1\">\<cr>".
                                        \g:rs."...".g:re."\<cr></pre>"

let g:template['html']['blogpage'] =  "<!DOCTYPE html>\<cr>".
            \"<html lang=\"en\">\<cr>".
                \"<head>\<cr>".
                    \"<meta charset=\"UTF-8\" />\<cr>".
                    \"<title>New Page</title>\<cr>".
                    \"<link type=\"text/css\" rel=\"stylesheet\" ".
                    \"href=\"syntaxhighlighter_3.0.83/styles/shCore.css\"/>\<cr>".
                    \"<link type=\"text/css\" rel=\"stylesheet\" ".
                    \"href=\"syntaxhighlighter_3.0.83/styles/shCoreDjango.css\"/>\<cr>".
                    \"<link rel=\"stylesheet\" media=\"screen\" href=\"blog_style.css\" />\<cr>".
                \"</head>\<cr>".
                \"<body>\<cr>".
                    \"<div id=\"main_container\">\<cr>".
                        \"<div class=\"blog_main\">\<cr>".
                            \g:template['html']['comtxt']."\<cr>".
                        \"</div>\<cr>".
                    \"</div>\<cr>".
                    \"<!--Scripts-->\<cr>".
                    \"<script type=\"text/x-mathjax-config\">\<cr>".
                    \"MathJax.Hub.Config({\<cr>".
                    \"tex2jax: {\<cr>".
                    \"inlineMath: [['$','$'], [\"\\\\(\",\"\\\\)\"]],\<cr>".
                    \"processEscapes: true\<cr>".
                    \"}\<cr>".
                    \"}); </script>\<cr>".
                    \"<script src=\"mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML\"></script>\<cr>".
                    \"<script type=\"text/javascript\" src=\"syntaxhighlighter_3.0.83/scripts/shCore.js\">".
                    \"</script>\<cr>".
                    \"<script type=\"text/javascript\" src=\"syntaxhighlighter_3.0.83/scripts/shBrushes.js\">".
                    \"</script>\<cr>".
                    \"<script type=\"text/javascript\" src=\"syntaxhighlighter_3.0.83/scripts/shLegacy.js\">".
                    \"</script>\<cr>".
                    \"<script type=\"text/javascript\">SyntaxHighlighter.all();</script>\<cr>".
                    \"<script src=\"scripts/onload.js\"></script>\<cr>".
                \"</body>\<cr>".
            \"</html>\<cr>"
" ===For writing blog End==================

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
                              \"}// end Main\<cr>"

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
                                    \"}// end namespace\<cr>"

" ===For C# End===========================

