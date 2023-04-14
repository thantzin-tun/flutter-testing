import 'package:first_flutter_project/model/todo/todo_data.dart';
import "package:http/http.dart" as http;
import "dart:convert";

class TodoApiCaller {
    Future<List<Todo>> getTodo() async {
        var response = await http.get(Uri.parse("https://dummyjson.com/todos"));
        if(response.statusCode == 200) {
          List<dynamic> todoList = json.decode(response.body);
          List<Todo> todos = todoList.map((task) => Todo.fromJson(task) ).toList();
          return todos;
        }
        else {
          throw Exception("Try again!");
        }
    }
}