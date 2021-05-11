## library(brapir)
## con <- brapi_db()$testserver
## class(con) <- c("list", "brapi", "brapi_con")
## con[["token"]] <- "YYYY"
##
## (D = Detail, M = Master, M/D = Master/Detail)
## tested calls BrAPI-Core: GET 23/23, POST 14/14, PUT 7/7

# Server Info
brapi_get_serverinfo(con = con)#, dataType = "") # 18 (M/D)

# Common Crop Names
brapi_get_commoncropnames(con = con)#, pageSize = 1, page = 1) # 1 (D)

# Programs
brapi_get_programs(con = con)#, commonCropName = "Tomatillo", programDbId = "program1", programName = "Program 1", abbreviation = "P1", externalReferenceID = '', externalReferenceSource = '', page = 0, pageSize = 1000) # 8 (D)
brapi_post_programs(con = con, abbreviation = abbreviation, additionalInfo = additionalInfo, commonCropName = commonCropName, documentationURL = documentationURL, externalReferences = externalReferences, leadPersonDbId = leadPersonDbId, leadPersonName = leadPersonName, objective = objective, programName = programName) # 5 (D) see Examples section for specification
brapi_get_programs_programDbId(con = con, programDbId = "program1") # 9 (M)
brapi_put_programs_programDbId(con = con, programDbId = programDbId, abbreviation = abbreviation, additionalInfo = additionalInfo, commonCropName = commonCropName, documentationURL = documentationURL, externalReferences = externalReferences, leadPersonDbId = leadPersonDbId, leadPersonName = leadPersonName, objective = objective, programName = programName) # 4 (M) see Examples section for specification
brapi_post_search_programs() # 9 (D) see Examples section for specification
brapi_get_search_programs_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 13 (D)

# Trials
brapi_post_search_trials() # 11 (D) see Examples section for specification
brapi_get_search_trials_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 15 (D)
brapi_get_trials(con = con)#, active = NA, commonCropName = "", contactDbId = "", programDbId = "", locationDbId = "", searchDateRangeStart = "", searchDateRangeEnd = "", studyDbId = "", trialDbId = "", trialName = "", trialPUI = "", sortBy = "", sortOrder = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 22 (D)
brapi_post_trials(con = con, active = active, additionalInfo = additionalInfo, commonCropName = commonCropName, contacts = contacts, datasetAuthorships = datasetAuthorships, documentationURL = documentationURL, endDate = endDate, externalReferences = externalReferences, programDbId = programDbId, programName = programName, publications = publications, startDate = startDate, trialDescription = trialDescription, trialName = trialName, trialPUI = trialPUI) # 14 (D) see Examples section for specification
brapi_get_trials_trialDbId(con = con, trialDbId = "trial3") # 23 (M)
brapi_put_trials_trialDbId(con = con, trialDbId = trialDbId, active = active, additionalInfo = additionalInfo, commonCropName = commonCropName, contacts = contacts, datasetAuthorships = datasetAuthorships, documentationURL = documentationURL, endDate = endDate, externalReferences = externalReferences, programDbId = programDbId, programName = programName, publications = publications, startDate = startDate, trialDescription = trialDescription, trialName = trialName, trialPUI = trialPUI) # 7 (M) see Examples section for specification

# Studies
brapi_post_search_studies() # 10 (D) see Examples section for specification
brapi_get_search_studies_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 14 (D)
brapi_get_studies(con = con)#), commonCropName = "", studyType = "", programDbId = "", locationDbId = "", seasonDbId = "", trialDbId = "", studyDbId = "", studyName = "", studyCode = "", studyPUI = "", germplasmDbId = "", observationVariableDbId = "", active = NA, sortBy = "", sortOrder = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 19 (D)
brapi_post_studies(con = con, active = active, additionalInfo = additionalInfo, commonCropName = commonCropName, contacts = contacts, culturalPractices = culturalPractices, dataLinks = dataLinks, documentationURL = documentationURL, endDate = endDate, environmentParameters = environmentParameters, experimentalDesign = experimentalDesign, externalReferences = externalReferences, growthFacility = growthFacility, lastUpdate = lastUpdate, license = license, locationDbId = locationDbId, locationName = locationName, observationLevels = observationLevels, observationUnitsDescription = observationUnitsDescription, seasons = seasons, startDate = startDate, studyCode = studyCode, studyDescription = studyDescription, studyName = studyName, studyPUI = studyPUI, studyType = studyType, trialDbId = trialDbId, trialName = trialName) # 13 (D) see Examples section for specification
brapi_get_studies_studyDbId(con = con, studyDbId = "study1") # 20 (M)
brapi_put_studies_studyDbId(con = con, studyDbId = studyDbId, active = active, additionalInfo = additionalInfo, commonCropName = commonCropName, contacts = contacts, culturalPractices = culturalPractices, dataLinks = dataLinks, documentationURL = documentationURL, endDate = endDate, environmentParameters = environmentParameters, experimentalDesign = experimentalDesign, externalReferences = externalReferences, growthFacility = growthFacility, lastUpdate = lastUpdate, license = license, locationDbId = locationDbId, locationName = locationName, observationLevels = observationLevels, observationUnitsDescription = observationUnitsDescription, seasons = seasons, startDate = startDate, studyCode = studyCode, studyDescription = studyDescription, studyName = studyName, studyPUI = studyPUI, studyType = studyType, trialDbId = trialDbId, trialName = trialName) # 6 (M) see Examples section for specification
brapi_get_studytypes(con = con)#, page = 0, pageSize = 1000) # 21 (D)

# Locations
brapi_get_locations(con = con)#, locationType = "Storage location", locationDbId = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 4 (D)
brapi_post_locations(con = con, abbreviation = abbreviation, additionalInfo = additionalInfo, coordinateDescription = coordinateDescription, coordinateUncertainty = coordinateUncertainty, coordinates = pointGeometry, countryCode = countryCode, countryName = countryName, documentationURL = documentationURL, environmentType = environmentType, exposure = exposure, externalReferences = externalReferences, instituteAddress = instituteAddress, instituteName = instituteName, locationName = locationName, locationType = locationType, siteStatus = siteStatus, slope = slope, topography = topography) # 3 (D) see Examples section for specification
brapi_get_locations_locationDbId(con = con, locationDbId = "location_01") # 5 (M)
brapi_put_locations_locationDbId(con = con,locationDbId = locationDbId, abbreviation = abbreviation, additionalInfo = additionalInfo, coordinateDescription = coordinateDescription, coordinateUncertainty = coordinateUncertainty, coordinates = coordinates, countryCode = countryCode, countryName = countryName, documentationURL = documentationURL, environmentType = environmentType, exposure = exposure, externalReferences = externalReferences, instituteAddress = instituteAddress, instituteName = instituteName, locationName = locationName, locationType = locationType, siteStatus = siteStatus, slope = slope, topography = topography) # 1 (M) see Examples section for specification
brapi_post_search_locations() # 7 (D) see Examples section for specification
brapi_get_search_locations_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 11 (D)

# Seasons
brapi_get_seasons(con = con)#, seasonDbId = "", season = "", year = "", pageSize = 1000, page = 0) # 16 (D)
brapi_post_seasons(con = con, seasonDbId = seasonDbId, seasonName = seasonName, year = year) # 12 (D)  see Examples section for specification
brapi_get_seasons_seasonDbId(con = con, seasonDbId = "winter") # 17 (M)
brapi_put_seasons_seasonDbId(con = con, seasonDbId = seasonDbId, seasonName = seasonName, year = year)  # 5 (M) see Examples section for specification

# Lists
brapi_get_lists(con = con)#, listType = "", listName = "", listDbId = "", listSource = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 2 (D)
brapi_post_lists(con = con, data = data, additionalInfo = additionalInfo, dateCreated = dateCreated, dateModified = dateModified, externalReferences = externalReferences, listDescription = listDescription, listName = listName, listOwnerName = listOwnerName, listOwnerPersonDbId = listOwnerPersonDbId, listSize = listSize, listSource = listSource, listType = listType) # 1 (D) see Examples section for specification
brapi_get_lists_listDbId(con = con, listDbId = "list1") # 3 (M/D)
brapi_put_lists_listDbId(con = con, listDbId = listDbId, additionalInfo = additionalInfo, data = data, dateCreated = dateCreated, dateModified = dateModified, externalReferences = externalReferences, listDescription = listDescription, listName = listName, listOwnerName = listOwnerName, listOwnerPersonDbId = listOwnerPersonDbId, listSize = listSize, listSource = listSource, listType = listType) # 2 (M) see Examples section for specification
brapi_post_lists_listDbId_items(con = con, listDbId = unique(out$listDbId), items = c("germ1", "germ2", "germ3")) # 2 (M/D) see Examples section for specification
brapi_post_search_lists() # 6 (D) see Examples section for specification
brapi_get_search_lists_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 10 (D)

# People
brapi_get_people(con = con)#, firstName = "", lastName = "", personDbId = "", userID = "", externalReferenceID = "", externalReferenceSource = "", page = 0, pageSize = 1000) # 6 (D)
brapi_post_people(con = con, additionalInfo = additionalInfo, description = description, emailAddress = emailAddress, externalReferences = externalReferences, firstName = firstName, middleName = middleName, lastName = lastName, mailingAddress = mailingAddress, phoneNumber = phoneNumber, userID = usedID) # 4 (D) see Examples section for specification
brapi_get_people_personDbId(con = con, personDbId = "person1") # 7 (M)
brapi_put_people_personDbId(con = con, personDbId = personDbId, additionalInfo = additionalInfo, description = description, emailAddress = emailAddress, externalReferences = externalReferences, firstName = firstName, lastName = lastName, mailingAddress = mailingAddress, middleName = middleName, phoneNumber = phoneNumber, userID = userID) # 3 (M) see Examples section for specification
brapi_post_search_people() # 8 (D) see Examples section for specification
brapi_get_search_people_searchResultsDbId(con = con, searchResultsDbId = "")#, pageSize = 1000, page = 0) # 12 (D)

## (D = Detail, M = Master, M/D = Master/Detail)
## tested calls BrAPI-Phenotyping: GET 1/23, POST /11, PUT /10

# Observations
brapi_get_observations(con = con) # 7 (D)
