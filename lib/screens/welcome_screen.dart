import 'package:flutter/material.dart';
import 'package:pop_quiz_final/screens/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 2),
                //2/6
                const Text(
                    "POPQuiz!",
                    style: TextStyle(fontSize: 40, color: Colors.blue)
                ),
                const Spacer(),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECE2E2),
                    hintText: "Nome Completo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: ElevatedButton(
                    child: const Text('Vamos começar!!!'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen()),
                      );},
                  ),
                ),
                const Spacer(flex: 2),
              ],
            )
          ]
        ),);
  }

}



/*class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abrir rota(tela)'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
        ),
      ),
    );
  }
}*/