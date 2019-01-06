
#' @title ui_collapse_text
#' @description Creates a collapsible UI with a button
#' @param content Text content
#' @param cname A class name for colour (btn-collapse-normal or btn-collapse-optional)
#' 
ui_collapse_text <- function(content="text",cname="btn-collapse-normal") {
  id <- paste0(format(Sys.time(),"%Y%m%d%H%S"),sample(c(0:9),1),sample(c(0:9),1),sample(c(0:9),1),sample(c(0:9),1))
  
  return(cat(paste0('<a class="btn btn-sm btn-collapse ',cname,'" role="button" data-toggle="collapse" href="#',id,'" aria-expanded="false" aria-controls="',id,'"><b>+</b></a><div class="collapse" id="',id,'"><pre class="r" style="margin-top:5px;">',content,'</pre></div>'
    )))
}

#' @title ui_collapse_code
#' @description Creates a collapsible UI with a button
#' @param content Code content
#' 
ui_collapse_code <- function(content) {
  id <- paste0(format(Sys.time(),"%Y%m%d%H%S"),sample(c(1000:9999),1))
  
  return(
    div(
      HTML(cat(paste0('<a class="btn btn-sm btn-collapse" role="button" data-toggle="collapse" href="#',id,'" aria-expanded="false" aria-controls="',id,'"><b>+</b></a>'))),
      div(id=id,class="collapse", 
          pre(content)
      )
    )
  )
}

