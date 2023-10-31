# sunspot

## Introduction

This project provides, in a single dataset, sunspot data collected and published on NASA's Solar Physics website. The dataset is created from 143 ASCII text files containing records for individual years of sunspot observations for the years 1874 through 2016. Each file consists of records with information on individual sunspot groups for each day that spots were observed.

## Dataset

The sunspot dataset contains 19 variables and 246,266 observations in the following structure:

| Variable                  | Type      | Description                                                                                                     |
|---------------------------|-----------|-----------------------------------------------------------------------------------------------------------------|
| date                      | Date      | Date of observation in YYYY-MM-DD format.                                                                       |
| year                      | Integer   | Four-digit year, ranging from 1874 through 2016.                                                                |
| month                     | Integer   | Two-digit month, ranging from 01 through 12.                                                                    |
| month_name                | Character | Three-position month name, e.g. Jan, Feb, Mar, etc.                                                             |
| day                       | Integer   | Two-digit day of the month, ranging from 01 through 31.                                                         |
| day_name                  | Character | Three-position day name, e.g. Mon, Tue, Wed, etc.                                                               |
| time                      | Numeric   | Time of day in thousanths of a day (0.500 = 12:00 UT).                                                          |
| group                     | Integer   | Greenwich group number through 1976, NOAA/USAF group number after 1976.                                         |
| group_suffix              | Character | Suffix to group number 1982 to present; otherwise, equals '00'.                                                 |
| group_type                | Character | Greenwich group type through 1981; NOAA group type 1982 to present (A = Alpha, B = Beta, D = Delta, G = Gamma). |
| observed_umbral_area      | Integer   | Observed umbral area in millionths of solar disk, 1874 through 1976.                                            |
| observed_whole_spot_area  | Integer   | Observed whole spot area in millionths of solar disk, 1874 through 1976.                                        |
| corrected_umbral_area     | Integer   | Umbral area corrected for foreshortening in millionths of solar hemisphere, 1874 through 1976.                  |
| corrected_whole_spot_area | Integer   | Corrected whole spot area in millionths of solar hemisphere.                                                    |
| distance_from_center      | Numeric   | Distance from center of solar disk in disk radii.                                                               |
| position_angle            | Integer   | Position angle from heliographic north (0 = North, 90 = East Limb).                                             |
| longitude                 | Character | Carrington longitude in degrees.                                                                                |
| latitude                  | Character | Latitude, negative to the South.                                                                                |
| central_meridian_distance | Character | Central meridian distance, negative to the East.                                                                |

## Data Analysis

I used four R libraries in this project:

1. `dplyr` and `tidyr` for data manipulation and transformation.
2. `lubridate` for parsing and manipulating dates.
3. `stringr` for text operations.

In addition, I used the base R `read.fwf` function to read data from the fixed-width
files downloaded from the NASA website.

## Data Preparation



## Results

The consolidated `sunspot` dataset is useful in time series analysis and prediction.  
In particular, it can be used to illustrate the Sun's 11-year sunspot cycle.  Often 
referred to as the solar cycle, it is not precisely 11 years, but it has an average 
periodicity of approximately 11 years.

## Future Steps

## Installation

## Folder Structure

| Folder | Description |
|--------|-------------|
| data | ... |
| data-raw | ... |
| inst/extdata | ... |
| man | ... |
| R | ... |

Other files in the project directory are related to the R package.
