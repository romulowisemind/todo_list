import 'package:flutter/material.dart';
import 'package:todo_list/pages/login/todo_list_controller.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final controller = ListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
                onChanged: onChanged,
              ),
               ElevatedButton(
                onPressed: controller.login,
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onChanged(String text) {
    print(text);
}


}
