#!/usr/bin/env python

"""Tests for `typing_meetup` package."""

import asyncio


def test_import():
    import typing_meetup

    assert typing_meetup.__doc__


async def test_async_plugin():
    await asyncio.sleep(0)
    assert True
