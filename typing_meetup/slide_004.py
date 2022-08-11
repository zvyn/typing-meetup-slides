from typing import TypeVar
from collections.abc import Iterable, Mapping, Hashable

T = TypeVar("T")
TKey = TypeVar("TKey", bound=Hashable)


def returns_list_of_what_it_gets(in_: T, times: int = 2) -> list[T]:
    return [in_] * times


strings: list[str] = returns_list_of_what_it_gets("hello", 5)


def print_items(items: Iterable, seperator=", ") -> None:
    print(seperator.join(f"{item}" for item in items))


def get_value(data: Mapping[TKey, T], key: TKey) -> T | None:
    return data.get(key)


data_tuples: list[tuple[str, int]] = [("key", 42)]

data_dict: dict[str, int] = {"key": 42}

arbitrary_len_tuple: tuple[int, ...] = (1, 2, 3)
arbitrary_len_tuple = (1, 2, 3, 4)
