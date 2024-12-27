import 'package:asocapp/app/ui/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
          extendBodyBehindAppBar: false,
          appBar: EglAppBar(
            //   elevation: 5,
            title: 'tArticles'.tr(),
            //   titleWidget: Text("tArticles"),
            //   leadingWidget: const Icon(Icons.menu),
            //   hasDrawer: false,
            // toolbarHeight: 80,
            showBackArrow: false,
            leadingIcon: null,
            leadingOnPressed: () {},
            leadingWidget: Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu_rounded),
              );
            }),
            actions: const [],
          ),
          body: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          )),
    );
  }
}
