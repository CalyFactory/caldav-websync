def readFile(fileName):
    f = open("html/" + fileName, 'r')
    data = f.read()
    f.close()
    return data 

HTML_LOGIN_PAGE = readFile("login.html")

HTML_CALENDAR_PAGE = readFile("calendar.html")
