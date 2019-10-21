#' Get Random Quotes
#' @return A dataframe with ID, Quote, Author and Link
#' @examples
#' randquote()
#' @importFrom jsonlite fromJSON
#' @export
randquote <- function(){

  new_url <- 'https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand&per_page=1'
  json_content <- jsonlite::fromJSON(new_url)

  quote <- data.frame(id = json_content$id,
                      quote = json_content$content$rendered,
                      link = json_content$link,
                      author = json_content$title$rendered
  )

  class(quote) <- c('tbl','tbl_df','data.frame')

}

#' Minimal version of getting random quotes (only quote and author)
#' @param decoded TRUE if the output text is html decoded or not (defaut TRUE)
#' @return A string of quote along with the author name
#' @examples
#' randquote_simple()
#' @importFrom xml2 xml_text read_html
#' @export
randquote_simple <- function(decoded = T){

  quote <- jsonlite::fromJSON("http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1")

  #class(quote) <- c('tbl','tbl_df','data.frame')

  text <- paste(quote$content, quote$title, sep = "-")

  return(ifelse(decoded, unescape_html(text), text))
}


