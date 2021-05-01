"""Basic hello saying api"""
from flask import Flask


app = Flask(__name__)


@app.route('/')
def default():
    """Hello saying method"""
    return "Hello master"
