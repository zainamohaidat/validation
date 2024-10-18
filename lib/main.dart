import 'package:flutter/material.dart';

void main() {
  runApp( Loginscreen());
}

class Loginscreen extends StatelessWidget{
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Login page",style: TextStyle(color: Colors.white,fontSize: 25,),

        )
        ,centerTitle: true,
        backgroundColor: Color(0xCD577c8e),

      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20),
          child:Form(
            key: _formkey,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.network("https://img.icons8.com/?size=80&id=114610&format=png",height: 100,),

              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: decoration("username","username@gmaile.com", Icons.login),
                validator: (userName){
                  if(userName!.isEmpty){
                    return "please enter user name";
                  }
                  return null;

                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: decoration("password","*****", Icons.password),
                validator: (Password){
                  if(Password!.isEmpty){
                    return "please enter user name";
                  }
                  else if(Password.length<8){
                    return "please enter 8 charcters or more";
                  }
                  return null;

                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: decoration("password", "*****", Icons.password),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  print("No error");
                }

                else{
                  print("error");
                }
              }, child: Text("SignUp"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ))
              
            ],
        )),
        ),
      ),
    ),
  );
  }
}
InputDecoration decoration( String txt, String hint,IconData icon) {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),

      ),
      label: Text(txt),
      hintText: hint,
      prefixIcon:Icon(icon),
      fillColor: Colors.grey




  );



}