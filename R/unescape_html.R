#' Tidy up HTML text string
#'
#' @param char_string a character string containg HTML text with tags, page breaks, etc.
#'
#' @return a tidy character string
#' @importFrom xml2 xml_text read_html
#' @export
#'
#' @examples
#' quote <- randquote_simple()
#' cat(unescape_html(quote))
unescape_html <- function(char_string) {
  xml2::xml_text(xml2::read_html(char_string))
}