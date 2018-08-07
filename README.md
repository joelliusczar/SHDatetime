# SHDatetime
I wanted to punish myself by writing my own unix epoch based time and date library.

## Date range
This works for a date range from Jan 1, year 1 to Dec 31, 9999.
These are the ranges that Python 3's datetime functions allow, which my code was tested against.

## Building

Download the code, then run make from the folder that all of the code is downloaded to. Directory structure must be maintained.

## Testing

After you have built the shared library, you can run my unit tests with dt_test.py and pytest. For more exhaustive testing, you can run cl_dt_all.py and pass in a min and max timestamp.


