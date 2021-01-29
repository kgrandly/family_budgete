import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routerName = '/sign-up';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Budgete'),
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
                'Sign Up',
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
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Re-Password',
                  icon: const Icon(Icons.lock_open_outlined),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 35.0,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.done),
                label: Text('Send'),
                elevation: 0.0,
                onPressed: () {},
                color: Theme.of(context).accentColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
