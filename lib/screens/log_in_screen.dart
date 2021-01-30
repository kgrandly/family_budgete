import 'package:family_budgete/screens/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  static const routerName = '/';

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _showUserPassword = false;

  void _toogleShowUserPassword() {
    setState(() {
      _showUserPassword = !_showUserPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Budgete'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 35.0,
              ),
              Text(
                'Log In',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  icon: const Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: const Icon(Icons.lock_open_outlined),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _showUserPassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: _toogleShowUserPassword,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_showUserPassword,
              ),
              SizedBox(
                height: 35.0,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.login_outlined),
                label: Text('Submit Data'),
                elevation: 0.0,
                onPressed: () {},
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Do not have an account?',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.add),
                label: Text('Create a New'),
                elevation: 0.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
