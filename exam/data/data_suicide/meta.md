The source for the data is:

https://catalog.data.gov/dataset/death-rates-for-suicide-by-sex-race-hispanic-origin-and-age-united-states-020c1
see also:
https://data.cdc.gov/National-Center-for-Health-Statistics/Death-rates-for-suicide-by-sex-race-Hispanic-origi/9j2v-jamp/about_data

We use a slightly simplified version of the dataset. The data is a csv file with utf8 encoding and , (comma) as separating character.
It contains the following columns:
UNIT, dtype: object
  Describes the type of the measured value in this row. This includes the definition for suicide rate, and whether or not age-adjustment is used for this row.
STUB_NAME, dtype: object
  The dataset is effectively split into smaller datasets, each of which considers different variables. The value of STUB_NAME indicates to which part of the dataset the row belongs.
STUB_LABEL, dtype: object
  In the part of the dataset indicated by STUB_NAME, this value indicates the control variables, such as gender, age, race. This is simply encoded as a string and needs to be parsed for proper plotting.
YEAR, dtype: int64
  Year of the observed value.
ESTIMATE, dtype: float64
  (estimated) value of the suicide rate (see also column UNIT) for the specified control variables
FLAG, dtype: object
  ... indicates that the value in ESTIMATE is missing, * indicates that it is statistically unreliable, since it is based on very few samples
  
See also
https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Publications/Health_US/hus19tables/table009.xlsx
and the above links for more metadata.
