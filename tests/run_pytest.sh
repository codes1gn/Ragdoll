#!/bin/bash
. `dirname $0`/../tools/config-miscs/.env
pytest -q --tb=short -s --capture=no "$6"
