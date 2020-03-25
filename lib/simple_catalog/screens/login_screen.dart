import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_mobx_examples/simple_catalog/screens/catalog_screen.dart';
import 'package:flutter_mobx_examples/simple_catalog/store/login_store.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginForm();
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<LoginStore>(context);

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter username';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CatalogScreen(),),);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
