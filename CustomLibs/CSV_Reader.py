import csv
from robot.api.deco import keyword

def return_value(reader):
    for row in reader:
        yield row

class CSV_Reader:

    def __init__(self, csv_file_path):
        self._csvfile = open(csv_file_path, 'r')
        self._reader = csv.reader(self._csvfile)

    def __del__(self):
        self._csvfile.close()

    @keyword
    def read_row_from_csv_file(self):
        iterator = return_value(self._reader)
        try:
            row = next(iterator)
        except StopIteration:
            return None
        else:
            return row


