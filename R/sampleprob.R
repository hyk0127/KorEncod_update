#' @importFrom rvest html_text
#' @importFrom xml2 read_html
#' @export
sampleprob <- function(url) {
  # sample url: "http://dart.fss.or.kr/dsaf001/main.do?rcpNo=20200330003851"
  # stringi::stri_escape_unicode("연결재무제표 주석")
  result <- grepl("\\uc5f0\\uacb0\\uc7ac\\ubb34\\uc81c\\ud45c \\uc8fc\\uc11d", html_text(read_html(url)))
  return(result)
}
