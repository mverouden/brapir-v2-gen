## library(brapir)
## con <- brapi_db()$testserver
## class(con) <- c("list", "brapi", "brapi_con")
## con[["token"]] <- "YYYY"
##
## tested calls BrAPI-Core: GET 17/23, POST 2/14, PUT 0/7
##
## GET (D = Detail, M = Master, M/D = Master/Detail)
brapi_get_commoncropnames(con = con)#, pageSize = 1, page = 1) # 1 (D)
brapi_get_lists(con = con)#, listType = "", listName = "", listDbId = "", listSource = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 2 (D)
brapi_get_lists_listDbId(con = con, listDbId = "list1") # 3 (M/D)
brapi_get_locations(con = con)#, locationType = "Storage location", locationDbId = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 4 (D)
brapi_get_locations_locationDbId(con = con, locationDbId = "location_01") # 5 (M)
brapi_get_people(con = con)#, firstName = "", lastName = "", personDbId = "", userID = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 6 (D)
brapi_get_people_personDbId(con = con, personDbId = "person1") # 7 (M)
brapi_get_programs(con = con)#, commonCropName = "Tomatillo", programDbId = "program1", programName = "Program 1", abbreviation = "P1", externalReferenceID = '', externalReferenceSource = '', page = 0, pageSize = 1000) # 8 (D)
brapi_get_programs_programDbId(con = con, programDbId = "program1") # 9 (M)
### TO BE TESTED AFTER POST SEARCH CALLS IMPLEMENTATION !!!!
brapi_get_search_lists_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 10 (D)
brapi_get_search_locations_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 11 (D)
brapi_get_search_people_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 12 (D)
brapi_get_search_programs_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 13 (D)
brapi_get_search_studies_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 14 (D)
brapi_get_search_trials_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 15 (D)
### ---
brapi_get_seasons(con = con)#, seasonDbId = "", season = "", year = "", pageSize = 1000, page = 0) # 16 (D)
brapi_get_seasons_seasonDbId(con = con, seasonDbId = "winter") # 17 (M)
brapi_get_serverinfo(con = con)#, dataType = "") # 18 (M/D)
brapi_get_studies(con = con)#), commonCropName = "", studyType = "", programDbId = "", locationDbId = "", seasonDbId = "", trialDbId = "", studyDbId = "", studyName = "", studyCode = "", studyPUI = "", germplasmDbId = "", observationVariableDbId = "", active = NA, sortBy = "", sortOrder = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 19 (D)
brapi_get_studies_studyDbId(con = con, studyDbId = "study1") # 20 (M)
brapi_get_studytypes(con = con)#, page = 0, pageSize = 1000) # 21 (D)
brapi_get_trials(con = con)#, active = NA, commonCropName = "", contactDbId = "", programDbId = "", locationDbId = "", searchDateRangeStart = "", searchDateRangeEnd = "", studyDbId = "", trialDbId = "", trialName = "", trialPUI = "", sortBy = "", sortOrder = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 22 (D)
brapi_get_trials_trialDbId(con = con, trialDbId = "trial3") # 23 (M)
## POST
brapi_post_lists(con = con, data = data, additionalInfo = additionalInfo, dateCreated = dateCreated, dateModified = dateModified, externalReferences = externalReferences, listDescription = listDescription, listName = listName, listOwnerName = listOwnerName, listOwnerPersonDbId = listOwnerPersonDbId, listSize = listSize, listSource = listSource, listType = listType) # 1 see Examples section for specification
brapi_post_lists_listDbId_items(con = con, listDbId = unique(out$listDbId), items = c("germ1", "germ2", "germ3")) # 2 see Examples section for specification
