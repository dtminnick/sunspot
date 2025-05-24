# sunspot

This project consolidates daily sunspot observation records from 143 annual ASCII files (1874–2016), originally published by NASA's Solar Physics division, into a single structured dataset for analysis and future time series modeling.

# Dataset Overview

The final `sunspot` dataset contains **246,266 observations** across **19 variables**, each corresponding to individual sunspot group observations.

| Variable                  | Type      | Description                                                                                     |
|---------------------------|-----------|-------------------------------------------------------------------------------------------------|
| date                      | Date      | Observation date (YYYY-MM-DD)                                                                   |
| year, month, day          | Integer   | Date components                                                                                 |
| month_name, day_name      | Character | Month and weekday abbreviations                                                                 |
| time                      | Numeric   | Observation time (fraction of a day, e.g. 0.500 = 12:00 UT)                                     |
| group, group_suffix       | Mixed     | Sunspot group number and suffix (Greenwich/NOAA system)                                         |
| group_type                | Character | Classification of sunspot group (A = Alpha, B = Beta, etc.)                                     |
| observed_umbral_area      | Integer   | Umbral area in millionths of solar disk                                                         |
| observed_whole_spot_area  | Integer   | Total spot area in millionths of solar disk                                                     |
| corrected_umbral_area     | Integer   | Umbral area corrected for foreshortening                                                        |
| corrected_whole_spot_area | Integer   | Corrected total spot area                                                                       |
| distance_from_center      | Numeric   | Distance from center of solar disk (in radii)                                                   |
| position_angle            | Integer   | Angle from heliographic north (0° = North, 90° = East Limb)                                     |
| longitude, latitude       | Character | Carrington longitude; latitude (negative = South)                                               |
| central_meridian_distance | Character | Distance from central meridian (negative = East)                                                |

# Data Processing
To assemble the dataset, I used the following R libraries:

- `dplyr`, `tidyr` – for data wrangling and transformation
- `lubridate` – for parsing and manipulating date fields
- `stringr` – for handling text operations
- `read.fwf` – for reading fixed-width text files

The dataset was created by iteratively processing 143 individual year files and merging them into a cohesive whole.

# Intended Use: Time Series Analysis
While this repository currently focuses on data consolidation and structuring, the next phase of this project will explore **time series analysis**, with an emphasis on visualizing and modeling the Sun’s ~11-year solar cycle. The dataset is well-suited for demonstrating trends in solar activity and conducting predictive modeling.

# Future Steps
- Conduct exploratory time series visualizations
- Apply decomposition techniques and spectral analysis
- Model the solar cycle using ARIMA or Fourier-based methods
- Explore correlation with geomagnetic and climate-related data

# Installation & Reproducibility

This project is structured as a minimal R package. To reproduce the dataset locally, clone the repo and run the scripts in `data-raw`. No large data dependencies are required beyond the included files.
