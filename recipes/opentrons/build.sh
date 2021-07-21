#!/bin/bash

set -vxeuo pipefail

export PYTHONPATH=$PWD/scripts/
cd api/
$PYTHON setup.py bdist_wheel
$PYTHON -m pip install dist/{{ name }}-{{ version }}-*.whl

