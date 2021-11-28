#!/bin/sh

# Recording device: use plughw
DEVICE="plughw:4,0"

# Record at given length at the first parameter
Record () {
  DATE=`date +%Y-%m-%d_%H-%M-%S`
  FILENAME="./RAW_JJ1BDX_Z__${DATE}.wav"
  echo "Start recording to ${FILENAME} at `date --rfc-3339=ns` for $1 seconds"
  arecord -q -N --disable-softvol -D ${DEVICE} -c 1 -f S16_LE -t wav -r 8000 --buffer-time=300000 -d $1 ${FILENAME}
  echo "End recording to ${FILENAME} at `date --rfc-3339=ns`"
}

# Calculate the time length until the next day 0000UTC in seconds
FIRSTLENGTH=`./nowtonextdayoffset.py`

# Record up to the beginning of the next day
Record ${FIRSTLENGTH}

# Record 24 hours for each file
# infinite loop
while true
do
  Record 86400
done

# End of code
