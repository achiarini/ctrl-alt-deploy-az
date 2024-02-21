from flask import Flask
import socket

hostname = socket.gethostname()

app = Flask(__name__)

@app.route("/")
def home():
    return F'''Hello (Azure) World.
             \n It's <YOUR-POKEMON-HERE> replying from {hostname}
             \n version:2.0'''