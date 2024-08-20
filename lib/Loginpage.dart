import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic here
      String username = _usernameController.text;
      String password = _passwordController.text;
      print('Username: $username, Password: $password');

      // Example: Navigate to a new screen on successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: username)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body:ListView(
        children: [
          Container(
            width: 300,
            height: 100,
            color: const Color.fromARGB(255, 187, 144, 129),
            child:Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 50,
                  child: Text('Image',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 50,
                  child: Text('Name',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 50,
                  child: Text('Price',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 70,
                  child: Image.network('https://abeautifulmess.com/wp-content/uploads/2023/05/latte.jpg')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Text('Espresso',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('5 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
             Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 70,
                  child: Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/0f/14/ca/photo0jpg.jpg?w=1200&h=-1&s=1')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Text('Cuppocino',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('4 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
             Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/9a/ef/80/cafe-coffee-day.jpg?w=1200&h=-1&s=1')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('Latte',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('3 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
             Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ff/13/2c/photo1jpg.jpg?w=1200&h=-1&s=1')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Text('Mocca',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
               height: 70,
                  child: Text('4.5 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
             Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 70,
                  child: Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/1e/70/0a/mocha.jpg?w=1200&h=-1&s=1')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                 height: 70,
                  child: Text('Hot Chocolate',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('2 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
             Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 70,
                  child: Image.network('https://joyfoodsunshine.com/wp-content/uploads/2020/11/homemade-hot-chocolate-recipe-2.jpg')
                 
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('Iced Mocca',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  
                ),
                 Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                  margin: EdgeInsets.all(15),
                  width: 100,
                height: 70,
                  child: Text('3.5 JD',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),


        ],
      )
    );
  }
}