awk 'NR=M, NR=N' file


# print lines between start_pattern and end_pattern
awk '/start_pattern/, /end_pattern/' filename
