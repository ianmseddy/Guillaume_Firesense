Require(c("data.table", "plyr", "pryr")) ## ensure plyr loaded before dplyr or there will be problems

Require("PredictiveEcology/SpaDES.install (>= 0.0.4)")
Require("PredictiveEcology/LandR@development")
Require(c("PredictiveEcology/SpaDES.core@development (>=1.0.6.9023)"),
        which = c("Suggests", "Imports", "Depends"), upgrade = FALSE) # need Suggests in SpaDES.core
Require("PredictiveEcology/SpaDES.project", require = FALSE, which = c("Suggests", "Imports", "Depends"))

Require("jimhester/archive", upgrade = FALSE)
Require("reproducible")
Require("PredictiveEcology/fireSenseUtils@development (>=0.0.5.9013") #in guillaume's study area, weird poly centroid error
library(SpaDES.core)
