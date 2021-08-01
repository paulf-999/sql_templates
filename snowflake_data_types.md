## Snowflake data types

To help establish consistency and naming standards, listed below are the default data types to use, prior to bespoke decision making:

| Data type category | Default data type to use | Reason | Description |
| -------------------| -------------------------| ----------- | --- |
| Numeric | `NUMBER` | `DECIMAL` and `NUMERIC` are synonymous with NUMBER, so better to standardise the use of `NUMBER`. | Numbers up to 38 digits, with an optional precision and scale:<br/>**Precision**: Total number of digits allowed.<br/>**Scale**: Number of digits allowed to the right of the decimal point. |
| String  | `VARCHAR` | `STRING` and `TEXT` are synonymous with `VARCHAR`, so better to standardise the use of `VARCHAR`. | Default (and maximum) is 16,777,216 bytes.<br/>**Note**: Snowflake compresses column data effectively.<br/>Therefore, creating columns larger than necessary has minimal impact on the size of data tables.<br/>Likewise, there is no query performance difference between a column with a maximum length declaration (e.g. `VARCHAR(16777216)`), and a smaller precision. |
| Date and Time | `TIMESTAMP_NTZ` | `DATETIME` and `TIMESTAMP` are just alias' for `TIMESTAMP_NTZ`, so better to standardise the use of `TIMESTAMP_NTZ`. |

### Snowflake References

* [Summary of Snowflake Data Types](https://docs.snowflake.com/en/sql-reference/intro-summary-data-types.html)
* [Table design considerations](https://docs.snowflake.com/en/user-guide/table-considerations.html#)
