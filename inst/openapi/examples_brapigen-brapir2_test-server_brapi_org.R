## tested calls BrAPI-Core: GET 2, POST 0, PUT 0
## out of: GET 23, POST 14, PUT 7
##
## library(brapir)
## con <- brapi_db()$testserver
## class(con) <- c("list", "brapi", "brapi_con")
## con[["token"]] <- "YYYY"
##

## result section: Detail
brapi_get_commoncropnames(con = con)#, pageSize = 1, page = 1) # 1
brapi_get_lists(con = con)#, listType = "", listName = "", listDbId = "", listSource = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 2
