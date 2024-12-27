import 'dart:io';

import 'package:asocapp/app/config/config.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:logger/logger.dart';
import 'package:timezone/data/latest.dart' as tzl;
import 'package:timezone/timezone.dart' as tz;

class EglHelper {
  static Future<String> apiURL() async {
    String apiURL = '';
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      apiURL = androidInfo.isPhysicalDevice ? EglConfig.apiURLPhysicalDevice : EglConfig.apiURLEmulatorDevice;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      eglLogger('i', 'El dispositivo es un emulador: ${iosInfo.isPhysicalDevice}');
      eglLogger('i', 'Tipo de dispositivo: ${iosInfo.utsname.machine}');
    }

    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    // print('Is simulator: ${iosInfo.isPhysicalDevice}');
    return apiURL;
  }

  static dynamic eglLogger(String type, String message, {dynamic object = ''}) {
    final Logger logger = Logger();
    String resto = '';
    String fragmento = message;

    do {
      if (fragmento.length <= 950) {
        resto = '';
        fragmento = fragmento;
      } else {
        resto = fragmento.substring(950);
        fragmento = fragmento.substring(0, 950);
      }
      switch (type) {
        case 'i':
          object == '' ? logger.i('eglLogger(${displayAAAAMMDDHora()}): $fragmento') : logger.i('eglLogger: $fragmento, $object');
          break;
        case 'e':
          object == '' ? logger.e('eglLogger(${displayAAAAMMDDHora()}): $fragmento') : logger.e('eglLogger: $fragmento, $object');
          break;
        case 'd':
          object == '' ? logger.d('eglLogger(${displayAAAAMMDDHora()}): $fragmento') : logger.d('eglLogger: $fragmento, $object');
          break;
        case 'w':
          object == '' ? logger.w('eglLogger(${displayAAAAMMDDHora()}): $fragmento') : logger.w('eglLogger: $fragmento, $object');
          break;
        case 'v':
          object == '' ? logger.t('eglLogger(${displayAAAAMMDDHora()}): $fragmento') : logger.t('eglLogger: $fragmento, $object');
          break;
        default:
      }

      fragmento = resto;
      resto = '';
    } while (fragmento.isNotEmpty);
  }

  static DateTime displayAAAAMMDDHora({DateTime? date}) {
    // final now = DateTime.now();
    // Cargar la base de datos de zonas horarias
    tzl.initializeTimeZones();
    date ??= tz.TZDateTime.now(tz.getLocation('Europe/Madrid'));

    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    return formatter.parse(formatter.format(date));
  }
}
