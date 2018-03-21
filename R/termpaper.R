termpaper <- function(toc = TRUE, toc_depth = 3, highlight = "default", fig_caption = TRUE, ...) {

  # get the locations of resource files located within the package
  in_header.tex <- system.file("/Users/Thomas/Desktop/templates/TermpaperTemplate/inst/rmarkdown/templates/termpaper/resources/in_header.tex",
                     package = "TermpaperTemplate")
  before_body.tex <- system.file("/Users/Thomas/Desktop/templates/TermpaperTemplate/inst/rmarkdown/templates/termpaper/resources/before_body.tex",
                               package = "TermpaperTemplate")
  after_body.tex <- system.file("/Users/Thomas/Desktop/templates/TermpaperTemplate/inst/rmarkdown/templates/termpaper/resources/after_body.tex",
                               package = "TermpaperTemplate")

  # call the base html_document function
  base <- bookdown::pdf_document2(
    toc = toc,
    toc_depth = toc_depth,
    highlight = highlight,
#    latex_engine: xelatex,
#    keep_tex: keep_tex,
    fig_caption: fig_caption,
    includes = includes(c(in_header = "in_header.tex",
                        before_body = "before_body.tex",
                        after_body = "after_body.tex")))

  base
}





