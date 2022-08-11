"""Poor mans cut"""

import sys


def cut(input_file=sys.stdin, output_file=sys.stdout, end=""):
    while line := input_file.readline():
        print(line, end=end, file=output_file)


class Screemer:
    def __init__(self, input_file=sys.stdin):
        self.input_file = input_file

    def readline(self):
        while line := self.input_file.readline():
            return line.upper()


if __name__ == "__main__":
    cut(Screemer())
