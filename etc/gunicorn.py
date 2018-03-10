"""gunicorn WSGI server configuration."""
#from multiprocessing import cpu_count
#from os import environ
#    return cpu_count()


bind = '0.0.0.0:8080'
#max_requests = 1000
workers = 2
pythonpath="/home/box/web"
#daemon = True