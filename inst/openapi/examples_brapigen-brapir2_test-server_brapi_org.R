## library(brapir)
## con <- brapi_db()$testserver
## class(con) <- c("list", "brapi", "brapi_con")
## con[["token"]] <- "YYYY"
##
## tested calls BrAPI-Core: GET 2, POST 0, PUT 0
## out of: GET 23, POST 14, PUT 7
##
## GET (D = Detail, M = Master, M/D = Master/Detail)
brapi_get_commoncropnames(con = con)#, pageSize = 1, page = 1) # 1 (D)
brapi_get_lists(con = con)#, listType = "", listName = "", listDbId = "", listSource = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 2 (D)
brapi_get_lists_listDbId(con = con, listDbId = "list1") # 3 (M/D)
brapi_get_locations(con = con)#, locationType = "Storage location", locationDbId = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 4 (D)
brapi_get_locations_locationDbId(con = con, locationDbId = "location_01") # 5 (M)
brapi_get_people(con = con)#, firstName = "", lastName = "", personDbId = "", userID = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 6 (D)
brapi_get_people_personDbId(con = con, personDbId = "person1") # 7 (M)
