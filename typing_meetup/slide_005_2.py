"""Poor mans cat"""

import sys
from typing import Protocol, Any, runtime_checkable


class SupportsReadline(Protocol):
    def readline(self) -> str | None:
        ...  # <- the dots are part of the syntax!


@runtime_checkable  # <- enables instance checks at runtime
class SupportsWrite(Protocol):
    def write(self, str_: str, /) -> Any | None:
        ...


def cat(
    input_file: SupportsReadline = sys.stdin,
    output_file: SupportsWrite = sys.stdout,
    end: str = "",
):
    if not isinstance(output_file, SupportsWrite):
        raise TypeError  # avoid unnecessary IO on input file

    while line := input_file.readline():
        print(line, end=end, file=output_file)


class Screemer:
    def __init__(self, input_file=sys.stdin):
        self.input_file = input_file

    def readline(self) -> str | None:
        while line := self.input_file.readline():
            return line.upper()
        return None


if __name__ == "__main__":
    cat(Screemer())
