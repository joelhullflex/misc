from flask import Flask

app = Flask(__name__)

@app.route('/hcserver')
def hello():
    return '<h1>HC Server Hello, World!</h1>'

@app.route('/status/healthcheck')
def health_check():
    return "<h1>Healthy</h1>"

@app.route('/hcserver/testreq')
def testreq():
    return "<h1>HC Server Test Request</h1>"
