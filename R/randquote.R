#' Get Random Quotes
#' @return A dataframe with ID, Quote, Author and Link
#' @examples
#' randquote()
#' @export
randquote <- function(){

  quote <- jsonlite::fromJSON("http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1")

  class(quote) <- c('tbl','tbl_df','data.frame')

  return(quote)
}
