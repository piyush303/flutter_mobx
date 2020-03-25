import 'package:flutter/material.dart';

import 'package:flutter_mobx_examples/simple_catalog/screens/login_screen.dart';

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: LoginScreen(),
    );
  }
}
