import 'dart:convert';

Todo todoFromJson(String str) => Todo.fromJson(json.decode(str));

String todoToJson(Todo data) => json.encode(data.toJson());

class Todo {
    Todo({
        required this.todos,
    });

    List<TodoElement> todos;

    factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        todos: List<TodoElement>.from(json["todos"].map((x) => TodoElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "todos": List<dynamic>.from(todos.map((x) => x.toJson())),
    };
}

class TodoElement {
    TodoElement({
        required this.id,
        required this.todo,
        required this.completed,
        required this.userId,
    });

    int id;
    String todo;
    bool completed;
    int userId;

    factory TodoElement.fromJson(Map<String, dynamic> json) => TodoElement(
        id: json["id"],
        todo: json["todo"],
        completed: json["completed"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "todo": todo,
        "completed": completed,
        "userId": userId,
    };
}


//https://dummyjson.com/todos