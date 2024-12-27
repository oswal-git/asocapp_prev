import 'package:asocapp/app/core/core.dart';
import 'package:asocapp/app/ui/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//   }
// bNnK6te6

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          automaticallyImplyLeading: false,
          title: Text('tLogin'.tr()),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  4.ph,
                  Text(
                    'tWelcom'.tr(),
                    style: AppTheme.headline3,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'tWelcom2'.tr(),
                    style: AppTheme.subtitle1.copyWith(height: 1.3),
                  ),
                  8.ph,
                  const Form(
                    // key: loginController.formKey,
                    child: Text('Login form'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
