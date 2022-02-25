do.call(setPaths, preamblePaths)


preambleObjects <- list()

preambleParams <- list(
  "studyArea" = list( ## TODO: use your module name
    ".useCache" = TRUE,
    "historicalFireYears" = 1991:2019,
    "studyAreaName" = studyAreaName
  )
)

fsimOutPreamble <- file.path(Paths$outputPath, paste0("simOutPreamble_", studyAreaName, ".qs"))
simOutPreamble <- Cache(simInitAndSpades,
                        times = list(start = 0, end = 1),
                        params = preambleParams,
                        modules = c("studyArea"), ## TODO: use your module name
                        objects = preambleObjects,
                        paths = preamblePaths,
                        useCache = 'overwrite',
                        #useCloud = useCloudCache,
                        #cloudFolderID = cloudCacheFolderID,
                        userTags = c("studyArea", studyAreaName))## TODO: use your module name
simOutPreamble$studyArea <- sf::as_Spatial(simOutPreamble$studyArea)
