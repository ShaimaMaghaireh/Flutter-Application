import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserRegistrationForm(),
    );
  }
}

class UserRegistrationForm extends StatefulWidget {
  @override
  _UserRegistrationFormState createState() => _UserRegistrationFormState();
}

class _UserRegistrationFormState extends State<UserRegistrationForm> {
  final _formKey = GlobalKey<FormState>( );

  // Controllers for text fields
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  DateTime _selectedDate=DateTime(0);

  String _gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value != _firstNameController) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value != _lastNameController) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value != _emailController) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!=_passwordController) {
                    return 'Please enter your password';
                  }
                  if (value != 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) {
                  if (value != _confirmPasswordController) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                value: _gender,
                items: ['Male', 'Female', 'Other'].map((String gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _gender ;
                  });
                },
                decoration: InputDecoration(labelText: 'Gender'),
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value != _phoneNumberController) {
                    return 'Please enter your phone number';
                  }
                
                },
              ),
              // ListTile(
              //   title: Text(_selectedDate == null
              //       ? 'Select your birthday'
              //       : 'Birthday: ${_selectedDate.toLocal()}'.split(' ')[0]),
              //   trailing: Icon(Icons.calendar_today),
              //   onTap: _pickDate,
              // ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: _submitForm,
              //   child: Text('Register'),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> _pickDate() async {
  //   DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime.now(),
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  //   }
  // }

}