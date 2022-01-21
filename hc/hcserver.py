from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '<h1>Hello, World!</h1>'

@app.route('/status/healthcheck')
def health_check():
    return "<h1>Healthy</h1>"

@app.route('/testreq')
def testreq():
    return "<h1>Test Request</h1>"
