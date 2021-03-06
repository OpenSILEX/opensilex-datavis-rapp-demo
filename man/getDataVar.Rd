% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDataVar.R
\name{getDataVar}
\alias{getDataVar}
\title{Get Data from WS2 and formate them}
\usage{
getDataVar(varURI, variableList)
}
\arguments{
\item{varURI}{uri of the variable to plot, from the \code{\link{variableList}} function or the web service directly}

\item{variableList}{from \code{\link{variableList}}}
}
\value{
WSResponse
}
\description{
Get Data from WS2 and formate them
}
\examples{
\donttest{
connectToPHISWS(apiID="ws_2_public","guest@opensilex.org","guest")
 varPrettyTot <- variableList()
 getDataVar(varURI = listVariables(
                  wsUrl="www.opensilex.org/openSilexAPI/rest/")$value[1],
                  variableList = varPrettyTot)
}
}
