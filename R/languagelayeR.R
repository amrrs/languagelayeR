#' Detect Language of the given String
#' @param access_key LanguageLayer API Access Key
#' @param query Character String whose language has to be detected
#' @param data_frame List is returned if FALSE dataframe if TRUE (default TRUE)
#' @return A list or dataframe with the detected language and other parameters
#' @examples
#' get_valid_currencies()
#' @export

detect_language <- function(access_key,query, data_frame = TRUE) {

  base_url <- 'http://apilayer.net/api/detect?access_key='

  response <- httr::GET(paste0(base_url,access_key,'&','query=',query))

  #str(content(response))

  if(!httr::content(response)$success) {
    stop(paste0('Error: ',httr::content(response)$error$info))
  }

  #http_status(response)
  if(data_frame) {

    return(as.data.frame(httr::content(response)$results))

  }

  else {

    return(httr::content(response)$results)

  }

}

