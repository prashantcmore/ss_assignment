import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../config/font_styles.dart';

class PromoterScreen extends StatelessWidget {
  const PromoterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          centerTitle: true,
          title: Text(
            'Promoter',
            style: Styles().appBarStyle(Colors.white),
          ),
        ),
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: deviceSize.height * 0.08,
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // child: IconButton(
                      
                    //   child: DatePickerDialog(initialDate: DateTime.now(),firstDate: DateTime.utc(2022), lastDate: DateTime.utc(2025),)),
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
