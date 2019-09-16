#-------------------------------------------------------------------------------
# Program: variableList.R
# Objective: retrieve data in suitable form for graph labelling
# Authors: Chourrout Elise
# Creation: 15/02/2019
# Update:
#-------------------------------------------------------------------------------

#' @title Get Variable's Names from WS2 and formate them
#'
#' @importFrom phisWSClientR initializeClientConnection
#' @importFrom phisWSClientR getEnvironmentData
#'
#' @param wsUrl url of the webservice
#' @return WSResponse
#' @export
#'
#' @examples
#' \donttest{
#' connectToPHISWS(apiID="ws_2_public","guest@opensilex.org","guest")
#'  variableList()
#' }
variableList <- function(wsUrl = "www.opensilex.org/openSilexAPI/rest/"){
  phisWSClientR::connectToPHISWS(apiID="ws_2_public","guest@opensilex.org","guest")


  # Recuperation of variables information
  rawVar <- phisWSClientR::getVariablesDetails()

  # Extraction of the information of interest
  names <- rawVar$data$label
  methods <- rawVar$data$label

  for (i in 1:length(names)){
    names[i] <- strsplit(names[i], split="_")[[1]][1]
    methods[i] <- strsplit(methods[i], split="_")[[1]][2]
  }
  label <- rawVar$data$label
  acronyms <- rawVar$data$trait.label
  unitVar <- rawVar$data$unit.comment
  uriVar <- rawVar$data$uri

  # Creation of the dataTable with information of interest
  variableList <- data.frame(name = names, method = methods, acronym = acronyms, unity = unitVar, uri = uriVar, label = label)
  variableList <- data.frame(lapply(variableList, as.character), stringsAsFactors=FALSE)

  return(variableList)
}

