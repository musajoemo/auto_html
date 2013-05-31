require 'action_controller'
require 'cgi'

AutoHtml.add_filter(:sanitize_gem).with({}) do |text, options|

  Sanitize.clean(text, {:elements=>["a", "abbr", "b", "bdo", "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", "del", "dfn", "div", "dl", "dt", "em", "figcaption", "figure", "h1", "h2", "h3", "h4", "h5", "h6", "hgroup", "hr", "i", "img", "ins", "input", "kbd", "label", "li", "mark", "ol", "p", "pre", "q", "rp", "rt", "ruby", "s", "samp", "small", "strike", "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "time", "tr", "u", "ul", "var", "wbr"], :attributes=>{:all=>["dir", "lang", "title"], "a"=>["href", "id"], "blockquote"=>["cite"], "col"=>["span", "width"], "colgroup"=>["span", "width"], "del"=>["cite", "datetime"], "div"=>['class'], "img"=>["align", "alt", "height", "src", "width"], "input"=>["class", "id", "type", "checked"], "ins"=>["cite", "datetime"], "li"=>["class", "data-index"], "ol"=>["start", "reversed", "type"], "q"=>["cite"], "table"=>["summary", "width"], "td"=>["abbr", "axis", "colspan", "rowspan", "width"], "th"=>["abbr", "axis", "colspan", "rowspan", "scope", "width"], "time"=>["datetime", "pubdate"], "ul"=>["type"]}, :protocols=>{"a"=>{"href"=>["ftp", "http", "https", "mailto", :relative]}, "blockquote"=>{"cite"=>["http", "https", :relative]}, "del"=>{"cite"=>["http", "https", :relative]}, "img"=>{"src"=>["http", "https", :relative]}, "ins"=>{"cite"=>["http", "https", :relative]}, "q"=>{"cite"=>["http", "https", :relative]}}})


end