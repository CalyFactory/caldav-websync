from flask import Flask
from flask import Response
from flask import request
import static
from caldavclient import CaldavClient

app = Flask(__name__)

@app.route('/')
def routeMain():
    return 'hello'

@app.route('/login')
def routeLogin():
    return static.HTML_LOGIN_PAGE

@app.route('/calendar', methods=['POST','GET'])
def routeCalendar():
    print(request.form)
    hostname = request.form['hostname']
    userId = request.form['userId']
    userPw = request.form['userPw']


    client = CaldavClient(
        hostname,
        userId,
        userPw
    )
    principal = client.getPrincipal()
    calendars = principal.getCalendars()

    calendarList = ""
    for calendar in calendars:
        print(calendar.calendarName + " " + calendar.calendarUrl + " " + calendar.cTag)
        calendarList+= "<input type=checkbox name=chk_info value='%s'>%s" % (calendar.calendarUrl, calendar.calendarName) + "</br>"

    return static.HTML_CALENDAR_PAGE % (calendarList)


app.run()