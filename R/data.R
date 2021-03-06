
#' Sunspot Dataset
#'
#' This dataset provides sunspot data published on NASA's Solar Physics website and
#' compiled by  Dr. David Hathaway, a retired member of the MSFC solar physics group
#' and NASA's Ames Research Center in California.
#'
#' The dataset is created from ASCII text files containing records for individual
#' years of sunspot observations. Each file consists of records with information
#' on individual sunspot groups for each day that spots were observed.
#'
#' The Royal Greenwich Observatory (RGO) compiled sunspot observations from a small
#' network of observatories to produce a dataset of daily observations starting in
#' May of 1874. The observatory concluded this dataset in 1976 after the US Air
#' Force (USAF) started compiling data from its own Solar Optical Observing Network
#' (SOON). This work was continued with the help of the US National Oceanic and
#' Atmospheric Administration (NOAA) with much of the same information being
#' compiled through to the present.
#'
#' The dataset includes the following variables:
#'
#' \describe{
#' \item{\code{year}}{Integer, four-digit year, ranging from 1874 through 2016.}
#'
#' \item{\code{month}}{Integer, two-digit month, ranging from 1 through 12.}
#'
#' \item{\code{day}}{Integer, two-digit day of month, ranging from 1 through 31.}
#'
#' \item{\code{time}}{Numeric, time of day in thousanths of a day (0.500 = 12:00 UT).}
#'
#' \item{\code{group}}{Integer, Greenwich group number through 1976, NOAA/USAF group
#'     number after 1976.}
#'
#' \item{\code{group_suffix}}{Character, suffix to group number 1982 to present;
#'     otherwise, equals '00'.}
#'
#' \item{\code{group_type}}{Character, Greenwich group type through 1981;
#'     NOAA group type 1982 to present (A = Alpha, B = Beta, D = Delta, G = Gamma).}
#'
#' \item{\code{observed_umbral_area}}{Integer, observed umbral area in millionths of
#'     solar disk, 1874 through 1976.}
#'
#' \item{\code{observed_whole_spot_area}}{Integer, observed whole spot area in millionths
#'     of solar disk, 1874 through 1976.}
#'
#' \item{\code{corrected_umbral_area}}{Integer, corrected (for foreshortening) umbral
#'     area in millionths of solar hemisphere, 1874 through 1976.}
#'
#' \item{\code{corrected_whole_spot_area}}{Integer, corrected whole spot area in millionths
#'     of solar hemisphere.}
#'
#' \item{\code{distance_from_center}}{Numeric, distance from center of solar disk in disk
#'     radii.}
#'
#' \item{\code{position_angle}}{Integer, position angle from heliographic north (0 = North,
#'     90 = East Limb).}
#'
#' \item{\code{longitude}}{Character, Carrington longitude in degrees,}
#'
#' \item{\code{latitude}}{Character, latitude, negative to the South.}
#'
#' \item{\code{central_meridian_distance}}{Character, central meridian distance, negative
#'     to the East.}
#' }
#'
#' @docType data
#'
#' @keywords dataset
#'
#' @name sunspot
#'
#' @usage data(sunspot)
#'
#' @format A data frame with 246,266 observations and 16 variables.
#'
#' @references \url{https://solarscience.msfc.nasa.gov/greenwch.shtml}
#'
#' @author Donnie Minnick \email{donnie.minnick@gmail.com}

"sunspot"
