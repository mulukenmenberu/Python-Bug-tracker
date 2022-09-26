from flask import Flask, render_template, url_for, request

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
    data = get_data()
    return data

@app.route('/add_todo', methods=['POST'])
def add_todo():
    todo_sata = request.get_json()
    name = todo_sata['name']
    description = todo_sata['description']
    priority = todo_sata['priority']
    print(name,description, priority)
    add_data({"name":name,"description":description, "priority":priority})
    return({"message":"success"})

@app.route('/delete_todo', methods=['DELETE'])
def delete_todo():
    return render_template('index.html')

app.run(host='127.0.0.1', port='5000')