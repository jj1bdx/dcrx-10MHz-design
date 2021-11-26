#!/usr/bin/env python3
"""
This program returns number of seconds from now
to the next beginning of day in UTC (0000UTC next day),
truncated into the nearest integer.
"""
import datetime

current = datetime.datetime.utcnow()
nextday = current + datetime.timedelta(days=1)
nextdaystart = datetime.datetime(nextday.year, nextday.month, nextday.day,
        hour=0, minute=0, second=0, microsecond=0, tzinfo=None)
delta = nextdaystart - current
#print(delta)
print(int(delta.total_seconds()))
