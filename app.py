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


app.run()