from flask import Flask
import socket

hostname = socket.gethostname()

app = Flask(__name__)

@app.route("/")
def home():
    return '''Hello (Azure) World.
             \n It's {hostname} replying
             \n version:2.0'''