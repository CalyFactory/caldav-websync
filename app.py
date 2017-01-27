from flask import Flask
from flask import Response
from flask import request

app = Flask(__name__)


@app.route('/')
def routeMain():
    return 'hello'

@app.route('/login')
def routeLogin():
    return 'login'


app.run()