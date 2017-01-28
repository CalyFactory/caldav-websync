from flask import Flask
from flask import Response
from flask import request
import static

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

    

    return static.HTML_CALENDAR_PAGE


app.run()