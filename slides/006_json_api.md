Annotating JSON-API output
==========================

Lots of options for new code, shoutout to

* `dataclasses.dataclass`
* `Pydantic`
* `FastAPI`

I highly recommend doing the FastAPI quickstart guide!

... but suppose you have a highly _performance-critical_ task in a project that
_writes lots of JSON-Dumps_ into a Redis cache for later _consumption by other
processes_.

Than all of the options mentioned above are too slow and changing your existing
codebase it not feasable.

From https://github.com/ijl/orjson#dataclass:

| Library    | dict (ms)   | dataclass (ms)   | vs. orjson   |
|------------|-------------|------------------|--------------|
| orjson     | 1.40        | 1.60             | 1            |
| rapidjson  | 3.64        | 68.48            | 42           |
| simplejson | 14.21       | 92.18            | 57           |
| json       | 13.28       | 94.90            | 59           |

This measures serializing 555KiB of JSON
