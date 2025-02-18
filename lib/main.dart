import 'package:asocapp/app/domain/services/services.dart';
import 'package:asocapp/app/ui/routes/go_router_provider.dart';
import 'package:asocapp/app/ui/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('es', 'ES'), Locale('en', 'GB'), Locale('ca', '')],
      path: 'assets/translations',
      fallbackLocale: const Locale('es', 'ES'),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SessionService()),
        ],
        child: const MainApp(),
      )));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouterProvider.router;

    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      title: "lAsociation".tr(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        // primarySwatch: AppColors.primaryMaterialColor,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(12.0),
          // isDense seems to do nothing if you pass padding in
          isDense: true,
          // "always" put the label at the top
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // This can be useful for putting TextFields in a row
          // However, if might be more desirable to wrap with Flexible
          // to make then grow to the available width.
          constraints: const BoxConstraints(maxWidth: 350.0),

          // Borders
          // Enabled and not showing error
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.grey.shade600,
              width: 1.0,
            ),
          ),
          // Have error but not focus
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          // Has error and focus
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          // Default value if borders are null
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.yellow,
              width: 1.0,
            ),
          ),
          // Enabled and focus
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
          ),
          // Disabled
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Colors.grey.shade600,
              width: 1.0,
            ),
          ),

          // TextStyles
          suffixStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
          counterStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          // Make error and helper the same size, so that the field
          // does not grow in height when there is an error text
          helperMaxLines: 2,
          errorMaxLines: 2,
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          helperStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          prefixStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.whiteColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: AppColors.primaryTextTextColor,
          ),
          toolbarTextStyle: TextStyle(
            fontSize: 40,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
//
