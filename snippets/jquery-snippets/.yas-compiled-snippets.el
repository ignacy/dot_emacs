;;; Compiled snippets and support files for `jquery-snippets'
;;; Snippet definitions:
;;;
(yas-define-snippets 'jquery-snippets
                     '(("$" "\\$(${1/(.+)/(?1:':)/}${1:string/element/array/function/jQuery object/string, context}${1/(.+)/(?1:':)/})$0" "$" nil nil nil nil nil nil)
                       ("$.ajaxSetup" "\\$.ajaxSetup({\n  url: '${1:/path/to/file}',\n${2/(.+)/(?1:  type\\: ':)/}${2:POST}${2/(.+)/(?1:',\n:)/}${3/(.+)/(?1:  dataType\\: ':)/}${3:xml/html/script/json/jsonp}${3/(.+)/(?1:',\n:)/}${4/(.+)/(?1:  data\\: {:)/}${4:param1: 'value1'}${4/(.+)/(?1:},\n:)/}${5/(.+)/(?1:  complete\\: function\\(xhr, textStatus\\) {\n    :)/}${5://called when complete}${5/(.+)/(?1:\n  },\n:)/}${6/(.+)/(?1:  success\\: function\\(data, textStatus, xhr\\) {\n    :)/}${6://called when successful}${6/(.+)/(?1:\n  },\n:)/}${7/(.+)/(?1:  error\\: function\\(xhr, textStatus, errorThrown\\) {\n    :)/}${7://called when there is an error}\n${7/(.+)/(?1:  }\n:)/}});\n$0" "$.ajaxSetup" nil nil nil nil nil nil)
                       ("$.boxModel" "\\$.boxModel" "$.boxModel" nil nil nil nil nil nil)
                       ("$.browser" "\\$.browser${1/(.+)/(?1:.:)/}${1:webkit/opera/msie/mozilla}${1/(.+)/(?1: :)/}$0" "$.browser" nil nil nil nil nil nil)
                       ("$.browser.1" "\\$.browser.version" "$.browser.1" nil nil nil nil nil nil)
                       ("$.each" "\\$.each(${1:array/object}, function(${2:index}${3:, ${4:val}}) {\n  ${0://iterate through array or object}\n});" "$.each" nil nil nil nil nil nil)
                       ("$.extend" "\\$.extend(${1:true, }${2:target object}, ${3:object1});\n$0" "$.extend" nil nil nil nil nil nil)
                       ("$.get" "\\$.get('${1:/path/to/file}'${2/(.+)/(?1:, {:)/}${2:param1: 'value1'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\\(data, textStatus, xhr\\) {\n  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:\n}:)/});\n$0" "$.get" nil nil nil nil nil nil)
                       ("$.getJSON" "\\$.getJSON('${1:/path/to/file}'${2/(.+)/(?1:, {:)/}${2:param1: 'value1'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\\(json, textStatus\\) {\n  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:\n}:)/});\n$0" "$.getJSON" nil nil nil nil nil nil)
                       ("$.getScript" "\\$.getScript('${1:path/to/file}'${2/(.+)/(?1:, function\\(data, textStatus\\) {\n  :)/}${2://optional stuff to do after getScript}${2/(.+)/(?1:\n}:)/});\n$0" "$.getScript" nil nil nil nil nil nil)
                       ("$.inArray" "\\$.inArray(${1:value}, ${2:array});$0" "$.inArray" nil nil nil nil nil nil)
                       ("$.isEmptyObject" "\\$.isEmptyObject('${1:object}')$0" "$.isEmptyObject" nil nil nil nil nil nil)
                       ("$.isPlainObject" "\\$.isPlainObject('${1:object}')$0" "$.isPlainObject" nil nil nil nil nil nil)
                       ("$.map" "\\$.map(${1:array}, function(${2:item}${3:, ${4:index}}) {\n  ${5:return ${6:something};}\n});" "$.map" nil nil nil nil nil nil)
                       ("$.merge" "\\$.merge(${1:array1}, ${2:array2});\n$0" "$.merge" nil nil nil nil nil nil)
                       ("$.noop" "\\$.noop()${0:;}${1:}" "$.noop" nil nil nil nil nil nil)
                       ("$.parseJSON" "\\$.parseJSON(${1:json});${0:}" "$.parseJSON" nil nil nil nil nil nil)
                       ("$.post" "\\$.post('${1:/path/to/file}'${2/(.+)/(?1:, {:)/}${2:param1: 'value1'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\\(data, textStatus, xhr\\) {\n  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:\n}:)/});\n$0" "$.post" nil nil nil nil nil nil)
                       ("$.trim" "\\$.trim(${1:'${2:string}'})$0" "$.trim" nil nil nil nil nil nil)
                       ("$.unique" "\\$.unique(${1:DOMelementArray});\n$0" "$.unique" nil nil nil nil nil nil)
                       (":" ":input" ":" nil nil nil nil nil nil)
                       (":.1" ":enabled" ":.1" nil nil nil nil nil nil)
                       (":.10" ":password" ":.10" nil nil nil nil nil nil)
                       (":.11" ":text" ":.11" nil nil nil nil nil nil)
                       (":.12" ":eq(${1:n})$0" ":.12" nil nil nil nil nil nil)
                       (":.13" ":only-child" ":.13" nil nil nil nil nil nil)
                       (":.14" ":first-child" ":.14" nil nil nil nil nil nil)
                       (":.15" ":nth-child(${1:n})$0" ":.15" nil nil nil nil nil nil)
                       (":.16" ":last-child" ":.16" nil nil nil nil nil nil)
                       (":.17" ":image" ":.17" nil nil nil nil nil nil)
                       (":.18" ":odd" ":.18" nil nil nil nil nil nil)
                       (":.19" ":last" ":.19" nil nil nil nil nil nil)
                       (":.2" ":gt(${1:n})$0" ":.2" nil nil nil nil nil nil)
                       (":.20" ":checked" ":.20" nil nil nil nil nil nil)
                       (":.21" ":checkbox" ":.21" nil nil nil nil nil nil)
                       (":.22" ":hidden\n" ":.22" nil nil nil nil nil nil)
                       (":.23" ":parent\n" ":.23" nil nil nil nil nil nil)
                       (":.24" ":button" ":.24" nil nil nil nil nil nil)
                       (":.25" ":reset" ":.25" nil nil nil nil nil nil)
                       (":.26" ":not(${1:s})$0" ":.26" nil nil nil nil nil nil)
                       (":.27" ":contains('${1:test}')$0" ":.27" nil nil nil nil nil nil)
                       (":.28" ":submit" ":.28" nil nil nil nil nil nil)
                       (":.29" ":root" ":.29" nil nil nil nil nil nil)
                       (":.3" ":radio" ":.3" nil nil nil nil nil nil)
                       (":.30" ":empty" ":.30" nil nil nil nil nil nil)
                       (":.31" ":visible\n" ":.31" nil nil nil nil nil nil)
                       (":.4" ":disabled" ":.4" nil nil nil nil nil nil)
                       (":.5" ":lt(${1:n})$0" ":.5" nil nil nil nil nil nil)
                       (":.6" ":even" ":.6" nil nil nil nil nil nil)
                       (":.7" ":first" ":.7" nil nil nil nil nil nil)
                       (":.8" ":selected" ":.8" nil nil nil nil nil nil)
                       (":.9" ":file" ":.9" nil nil nil nil nil nil)
                       ("README.md" "# Yasnippets-jQuery #\n\n### Copyright\n\nCopyright 2009 Jose Pablo Barrantes. MIT Licence, so go for it.\n" "README.md" nil nil nil nil nil nil)
                       ("clone" ".clone()$0" "clone" nil nil nil nil nil nil)
                       ("jre" "jQuery(document).ready(\n        function () {\n             $0         \n});" "jQuery on ready" nil nil nil nil nil nil)
                       ("jqajax" "\\$.ajax({\n  url: '${1:/path/to/file}',\n${2/(.+)/(?1:  type\\: ':)/}${2:POST}${2/(.+)/(?1:',\n:)/}${3/(.+)/(?1:  dataType\\: ':)/}${3:xml/html/script/json/jsonp}${3/(.+)/(?1:',\n:)/}${4/(.+)/(?1:  data\\: {:)/}${4:param1: 'value1'}${4/(.+)/(?1:},\n:)/}${5/(.+)/(?1:  complete\\: function\\(xhr, textStatus\\) {\n    :)/}${5://called when complete}${5/(.+)/(?1:\n  },\n:)/}${6/(.+)/(?1:  success\\: function\\(data, textStatus, xhr\\) {\n    :)/}${6://called when successful}${6/(.+)/(?1:\n  },\n:)/}${7/(.+)/(?1:  error\\: function\\(xhr, textStatus, errorThrown\\) {\n    :)/}${7://called when there is an error}\n${7/(.+)/(?1:  }\n:)/}});\n$0" "jqajax" nil
                        ("jQuery")
                        nil nil nil nil)
                       ("plugin" ";(function(\\$) {\n${2:// ${3:What does the $1 plugin do?}}\n\\$.fn.${1:pluginName} = function(options) {\n  var opts = \\$.extend({}, \\$.fn.$1.defaults, options);\n\n  return this.each(function() {\n    var \\$this = \\$(this);\n\n  ${5:  ${6:// Support for the Metadata Plugin.}\n    var o = \\$.meta ? \\$.extend({\\}, opts, \\$this.data()) : opts;\n  }\n\n  });\n\n  // private function for debugging\n  function debug(\\$obj) {\n    if (window.console && window.console.log) {\n      window.console.log(\\$obj);\n    }\n  }\n};\n\n// default options\n\\$.fn.$1.defaults = {\n  ${4:defaultOne:true,\n  defaultTwo:false,\n  defaultThree:'yay!'}\n};\n\n})(jQuery);\n" "plugin" nil nil nil nil nil nil)
                       ("plugin.1" "(function(\\$) {\n  \\$.extend(\\$.expr[':'], {\n    ${1:selectorName}: function(element, index, matches, set) {\n      $0\n      return something;\n    }\n  });\n})(jQuery);\n" "plugin.1" nil nil nil nil nil nil)
                       ("plugin.2" "jQuery.fn.${1:myeffect} = function(speed, easing, callback) {\n  return this.animate({${2:param1}: ${3:'value'}}, speed, easing, callback);\n};" "plugin.2" nil nil nil nil nil nil)
                       ("ready" "\\$(document).ready(function() {\n	${0:// Stuff to do as soon as the DOM is ready;}\n});\n" "ready" nil nil nil nil nil nil)
                       ("ready.1" "jQuery(document).ready(function(\\$) {\n	${0:// Stuff to do as soon as the DOM is ready. Use \\$() w/o colliding with other libs;}\n});\n" "ready.1" nil nil nil nil nil nil)
                       ("this" "\\$(this)$0" "this" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Aug 27 10:23:27 2014
