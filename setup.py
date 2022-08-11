#!/usr/bin/env python

"""The setup script."""

from setuptools import setup, find_packages

with open("README.md") as readme_file:
    readme = readme_file.read()

setup(
    python_requires=">=3.6",
    description="Adding type annotations to existing code",
    long_description=readme,
    long_description_content_type="text/markdown",
    include_package_data=True,
    keywords="typing_meetup",
    name="typing_meetup",
    packages=find_packages(include=["typing_meetup", "typing_meetup.*"]),
    zip_safe=False,
    install_requires=[
        "fastapi",
        "pydantic[email]",
        "uvicorn",
    ],
)
