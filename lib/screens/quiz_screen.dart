import 'package:flutter/material.dart';
import 'package:conditional_questions/conditional_questions.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'POP!Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _key = GlobalKey<QuestionFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: ConditionalQuestions(
        key: _key,
        children: questions(),
        trailing: [
          MaterialButton(
            color: Colors.deepOrange,
            splashColor: Colors.orangeAccent,
            onPressed: () async {
              if (_key.currentState!.validate()) {
                print("validated!");
              }
            },
            child: Text("Submit"),
          )
        ],
        leading: [Text("Perguntas")],
      ),
    );
  }
}
List<Question> questions() {
  return [
    Question(
      question: "Qual seu livro favorito?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Não pode ficar em branco";
        return null;
      },
    ),
    Question(
      question: "Qual o último filme que você assistiu",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
    Question(
      question: "Qual o ser herói preferido?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
    Question(
      question: "O que você mais gosta de comer?",
      //isMandatory: true,
      validate: (field) {
        if (field.isEmpty) return "Field cannot be empty";
        return null;
      },
    ),
  ];
}