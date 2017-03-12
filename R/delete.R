#' Delete a gist
#'
#' @param gist A gist object or something coercible to a gist
#' @template all
#' @export
#' @examples \dontrun{
#' gists("minepublic")[[29]] %>% delete()
#' }

delete <- function(gist, ...) {
  gist <- as.gist(gist)
  res <- gist_DELETE(paste0(ghbase(), '/gists/', gist$id), auth = gist_auth(), headers = ghead(), ...)
  stop_for_status(res)
  message('Your gist has been deleted')
}
