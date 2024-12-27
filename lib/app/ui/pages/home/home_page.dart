import 'package:asocapp/app/config/config.dart';
import 'package:asocapp/app/data/data.dart';
import 'package:asocapp/app/domain/services/session_service.dart';
import 'package:asocapp/app/ui/routes/go_router_provider.dart';
import 'package:asocapp/app/ui/routes/router_name.dart';
import 'package:asocapp/app/ui/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final goRouter = GoRouterProvider.router;

  @override
  Widget build(BuildContext context) {
    context.watch<SessionService>().isLogin
        ? Future.delayed(const Duration(seconds: 3), () {
            goRouter.go(dashBoardRoute);
          })
        : Future.delayed(const Duration(seconds: 3), () {
            goRouter.go(loginRoute);
          });

    return Scaffold(
      appBar: AppBar(
        title: Text("lAsociation".tr()),
        actions: [
          Tooltip(
              message: "lAsociation".tr(),
              child: IconButton(
                  onPressed: () {
                    LocalizationChecker.changeLanguge(context);
                  },
                  icon: const Icon(Icons.language)))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(EglImagesPath.lightAppLogo),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text('Eglos', style: TextStyle(fontFamily: AppFonts.sfProDisplayBold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
