from models.todo_model import Todo, db
from flask import jsonify
def add_data(todo):
    add_todo_data = Todo(name=todo.name, description=todo.description, priority=todo.priority, status=1)
    db.session.add(add_todo_data)
    db.session.commit()
    return jsonify({"message":"success"})

def get_data():
    get_todo_data = Todo.query.all()
    return jsonify(get_todo_data)

def delete_data(todo):
    Todo.query.filter(Todo.id == todo.id).delete()
    return jsonify({"message":"success"})

def update_data(todo):
    get_todo_data = Todo.query.get(todo.id)
    get_todo_data.name = todo.name
    get_todo_data.description = todo.description
    get_todo_data.priority = todo.priority

    db.session.commit()

    return jsonify({"message":"success"})
