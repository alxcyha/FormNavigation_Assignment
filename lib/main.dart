import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  TextEditingController nameInput = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            backgroundColor: Colors.pinkAccent,
            leading: const Icon(Icons.assignment_ind),
            centerTitle: true
        ),

        body: Form(
            child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                      controller: nameInput,
                      decoration: const InputDecoration(
                        labelText: "Username",
                      ),
                      keyboardType: TextInputType.name
                  ),
                  const SizedBox(height:25),

                  ElevatedButton(
                      onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> NextPage(input:nameInput.text))
                      );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),

                      child: const Text("Submit",
                          style: TextStyle(fontWeight: FontWeight.bold))
                  )
                ]
            )
        )
    );
  }
}

class NextPage extends StatelessWidget{
  String? input;

  NextPage({this.input});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            backgroundColor: Colors.pinkAccent,
            leading: const Icon(Icons.assignment_ind),
            centerTitle: true
        ),

        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  Text("Hello $input, welcome to our application",
                  textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  OutlinedButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      child: const Text ("return to first Page",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                      )
                  )
                ]
            )
        )
    );
  }
}
