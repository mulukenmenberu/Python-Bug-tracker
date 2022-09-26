from flask import Flask, render_template, url_for

from models.todo_model import db, Todo
from db_operations import add_data, get_data, delete_data, update_data
app = Flask(__name__)
app.config.from_object('config')
db.init_app(app)
@app.route('/', methods=['GET','POST'])
def index():
    return render_template('index.html')

@app.route('/get_todos', methods=['GET'])
def get_todo():
    return render_template('index.html')

@app.route('/add_todo', methods=['POST'])
def add_todo():
    return render_template('index.html')

@app.route('/delete_todo', methods=['DELETE'])
def delete_todo():
    return render_template('index.html')

app.run(host='127.0.0.1', port='5000')