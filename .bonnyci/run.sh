#!/bin/bash -xe

venv_dir=$(mktemp -d)
trap 'rm -rf $venv_dir' EXIT

virtualenv "$venv_dir"

source "$venv_dir"/bin/activate

pip install tox
tox -e py27,pep8
