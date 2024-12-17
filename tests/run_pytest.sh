#!/bin/bash
. `dirname $0`/../tools/config-miscs/.env
pytest -q --tb=short -s -v --capture=no "$6"
