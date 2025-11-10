// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:agora_rtc_engine/agora_rtc_engine_web.dart';
import 'package:app_links_web/app_links_web.dart';
import 'package:audio_session/audio_session_web.dart';
import 'package:connectivity_plus/src/connectivity_plus_web.dart';
import 'package:device_info_plus/src/device_info_plus_web.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:firebase_messaging_web/firebase_messaging_web.dart';
import 'package:flutter_facebook_auth_web/flutter_facebook_auth_web.dart';
import 'package:flutter_image_compress_web/flutter_image_compress_web.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:flutter_secure_storage_web/flutter_secure_storage_web.dart';
import 'package:flutter_tts/flutter_tts_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:iris_method_channel/iris_method_channel_web.dart';
import 'package:just_audio_web/just_audio_web.dart';
import 'package:open_file_web/open_file_web.dart';
import 'package:package_info_plus/src/package_info_plus_web.dart';
import 'package:permission_handler_html/permission_handler_html.dart';
import 'package:share_plus/src/share_plus_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:syncfusion_pdfviewer_web/pdfviewer_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:video_player_web/video_player_web.dart';
import 'package:wakelock_plus/src/wakelock_plus_web_plugin.dart';
import 'package:youtube_player_iframe_web/src/web_youtube_player_iframe_platform.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  AgoraRtcEngineWeb.registerWith(registrar);
  AppLinksPluginWeb.registerWith(registrar);
  AudioSessionWeb.registerWith(registrar);
  ConnectivityPlusWebPlugin.registerWith(registrar);
  DeviceInfoPlusWebPlugin.registerWith(registrar);
  FilePickerWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  FirebaseMessagingWeb.registerWith(registrar);
  FlutterFacebookAuthPlugin.registerWith(registrar);
  FlutterImageCompressWeb.registerWith(registrar);
  FlutterNativeSplashWeb.registerWith(registrar);
  FlutterSecureStorageWeb.registerWith(registrar);
  FlutterTtsPlugin.registerWith(registrar);
  GoogleSignInPlugin.registerWith(registrar);
  IrisMethodChannelWeb.registerWith(registrar);
  JustAudioPlugin.registerWith(registrar);
  OpenFilePlugin.registerWith(registrar);
  PackageInfoPlusWebPlugin.registerWith(registrar);
  WebPermissionHandler.registerWith(registrar);
  SharePlusWebPlugin.registerWith(registrar);
  SharedPreferencesPlugin.registerWith(registrar);
  SyncfusionFlutterPdfViewerPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  VideoPlayerPlugin.registerWith(registrar);
  WakelockPlusWebPlugin.registerWith(registrar);
  WebYoutubePlayerIframePlatform.registerWith(registrar);
  registrar.registerMessageHandler();
}
