#!/bin/bash

python3 manage.py collectstatic -c --noinput
python3 manage.py --settings=server.settings
python3 manage.py migrate
gunicorn server.wsgi -b 0.0.0.0:8000 --reload --log-level=DEBUG --timeout 2200 -w 4 -k gevent
