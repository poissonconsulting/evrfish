# Parameter Descriptions

Default parameter descriptions which may be overridden in individual
functions.

## Arguments

- ...:

  These dots are for future extensions and must be empty.

- data:

  A data frame.

- date_time:

  A string indicating the column name of the POSIXct vector.

- gap_range:

  A numeric value indicating the number of hours between two non
  reasonable values that will be coded as questionable or erroneous.

- erroneous_buffer:

  A numeric value indicating the number of hours buffer for erroneous
  values.

- erroneous_max:

  A numeric value indicating the upper bound of the erroneous range of
  temperature values.

- erroneous_min:

  A numeric value indicating the lower bound of the erroneous range of
  temperature values.

- erroneous_rate:

  A numeric value indicating the rate of change (temperature per hour)
  of temperature values that is considered erroneous.

- min_length:

  A whole number of the minimum number of values to consider.

- min_coverage:

  A numeric value of the minimum coverage as a proportion.

- questionable_buffer:

  A numeric value indicating the buffer in hours for questionable
  values.

- questionable_min:

  A numeric value indicating the lower bound of the questionable range
  of temperature values.

- questionable_max:

  A numeric value indicating the upper bound of the questionable range
  of temperature values.

- questionable_rate:

  A numeric value indicating the rate of change (temperature per hour)
  of temperature values that is considered questionable.

- value:

  A string indicating the column name of the value vector.

## Details

A flag is a non-missing logical scalar.

A string is a non-missing character scalar.
