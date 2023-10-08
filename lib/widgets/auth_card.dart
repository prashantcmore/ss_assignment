

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ss_assignment/config/color_constants.dart';
import 'package:ss_assignment/config/font_styles.dart';
import 'package:ss_assignment/provider/payments_provider.dart';
import 'package:ss_assignment/networks/login.dart';
import 'package:ss_assignment/screens/promoter_screen.dart';

class AuthCard extends StatefulWidget {
  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  var _isLoading = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 8.0,
      child: Container(
        height: deviceSize.height * 0.34,
        width: deviceSize.width * 0.8,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'UserName',
                    prefixIcon: Icon(Icons.person),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: userNameController,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 2) {
                      _showErrorDialog('Please Enter valid password');
                    }
                    return null;
                    // return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Password', prefixIcon: Icon(Icons.lock)),
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 2) {
                      return 'Password is too short!';
                    }
                  },
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.square_outlined),
                    ),
                    Text(
                      'Remember Me',
                      style: Styles().mediumTextStyle(Colors.black),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Primary_Color,
                  ),
                  child: ElevatedButton(
                    child: Text('LOGIN'),
                    onPressed: (){
                      
                   
                      Networks().login(userNameController.text,passwordController.text).then((e){
                        if(e==200){
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>PromoterScreen()));
                        }
                        else{
                          return _showErrorDialog('Please Provide valid credentials');
                        }
                      });

                    }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
