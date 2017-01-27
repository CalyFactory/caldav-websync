from flask import Flask
from flask import Response
from flask import request

app = Flask(__name__)


@app.route('/')
def main():
    return 'hello'

app.run()