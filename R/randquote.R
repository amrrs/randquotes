#' Get Random Quotes
#' @return A dataframe with ID, Quote, Author and Link
#' @examples
#' randquote()
#' @importFrom httr GET content
#' @export
randquote <- function() {
  new_url <-
    'https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand&per_page=1'

  get_call <- GET(new_url)

  if (get_call$status_code != 200) {
    stop(paste0('The API call returned ', get_call$status_code, ' error'))

  } else {
    get_content <- content(get_call)[[1]]

    quote <- data.frame(
      id = get_content$id,
      quote = get_content$content$rendered,
      link = get_content$link,
      author = get_content$title$rendered
    )

  }

}

#' Minimal version of getting random quotes (only quote and author)
#' @param decoded TRUE if the output text is html decoded or not (defaut TRUE)
#' @return A string of quote along with the author name
#' @importFrom httr GET content
#' @examples
#' randquote_simple()
#' @export
randquote_simple <- function(decoded = TRUE) {
  new_url <- 'https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand&per_page=1'

  get_call <- GET(new_url)

  if (get_call$status_code != 200) {

     stop(paste0('The API call returned ', get_call$status_code, ' error'))

  } else {
    get_content <- content(get_call)[[1]]
    quote <- data.frame(content = get_content$content$rendered,
                        title = get_content$title$rendered)
    text <- paste(quote$content, quote$title, sep = "-")

  }

  return(ifelse(decoded, unescape_html(text), text))
}
