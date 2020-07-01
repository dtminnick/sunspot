
# Load libraries.

library("dplyr")
library("lubridate")
library("tidyr")

# Download source files from NASA Solar Physics website.

for (x in 1874:2016) {

      url <- paste("https://solarscience.msfc.nasa.gov/greenwch/g", x, ".txt", sep = "")

      download.file(url,
                    paste("./inst/extdata/g", x, ".txt", sep = ""),
                    quiet = TRUE)

}

# Create empty data frame.

source <- data.frame()

# Capture source file names in vector.

files <- list.files("./inst/extdata", full.names = TRUE)

# Read source files and combine into single data frame.

for (x in 1:length(files)) {

      # Apply condition to address file format variation in post-1981 files.
      # Note value for x is derived by subtracting 1874 from 1982.

      if (x < 109) {

            # Apply formatting for 1874 through 1981.

            f <- read.fwf(files[x],
                          widths = c(4, 2, 2, 4, 8, 2, 2, -1, 4, -1, 4, -1, 4, -1, 4, -1, 4, -1, 4, -1, 5, -1, 5, -1, 5),
                          header = FALSE)

      } else {

            # Apply formatting for 1982 through 2016.

            f <- read.fwf(files[x],
                          widths = c(4, 2, 2, 4, 8, 1, 3, -1, 4, -1, 4, -1, 4, -1, 4, -1, 4, -1, 4, -1, 5, -1, 5, -1, 5),
                          header = FALSE)

      }

      # Print file name to console.

      print(files[x])

      # Bind file data to source data frame.

      source <- rbind(source, f)

}

# Create data frame column names.

colnames(source) <- c("year",
                      "month",
                      "day",
                      "time",
                      "group",
                      "group_suffix",
                      "group_type",
                      "observed_umbral_area",
                      "observed_whole_spot_area",
                      "corrected_umbral_area",
                      "corrected_whole_spot_area",
                      "distance_from_center",
                      "position_angle",
                      "longitude",
                      "latitude",
                      "central_meridian_distance")

# Apply data frame name.

sunspot <- source

# Save data frame.

usethis::use_data(sunspot, overwrite = TRUE)
