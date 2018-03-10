def app(environ, start_response):
    """Simplest possible application object"""
    data = ""
    data = environ['QUERY_STRING'].replace('&', '\n')
    data = data.encode("utf-8")
    #data = [(i + '\n') for i in environ['QUERY_STRING'].split('&')]
    #resp = environ['QUERY_STRING'].split("&")
    #resp = [item + "\r\n" for item in resp]
    status = '200 OK'
    response_headers = [('Content-type', 'text/plain'), ('Content-Length', str(len(data)))]
    #
    start_response(status, response_headers)
    #print data
    return [data]

    #q_string = environ["QUERY_STRING"]
    #pairs_list = q_string.split("&")
    #for pair in pairs_list:
    #    data += pair + "\n"