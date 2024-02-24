from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
  return "<h1>Hello, World from Green Unicorn - Python Web Application! from David</h1>"