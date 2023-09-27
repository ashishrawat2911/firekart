/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */

// import 'dart:convert';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:core/logger/app_logger.dart';

import 'dart:convert';

import 'package:core/logger/app_logger.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:notification/push_notification/push_notification_handler.dart';

@Singleton(as: PushNotificationHandler)
class PushNotificationHandlerImpl extends PushNotificationHandler {
  PushNotificationHandlerImpl();

  //add
  //  <meta-data
  //     android:name="com.google.firebase.messaging.default_notification_channel_id"
  //     android:value="high_importance_channel" />
  final AndroidNotificationChannel _channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title,
    description: 'This channel is used for important notifications.',
    // description
    importance: Importance.max,
  );
  final AndroidNotificationChannel _otpChannel =
      const AndroidNotificationChannel(
    'OTP', // id
    'OTP Notifications', // title,
    description: 'This channel is used for OTP Notifications',
    // description
    importance: Importance.max,
  );
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> execute({
    required Function(Map<String, dynamic> notificationData) onNotificationData,
    required Function(String token) onDeviceToken,
  }) async {
    await FirebaseMessaging.instance.requestPermission();
    await FirebaseMessaging.instance.getToken().then(
      (deviceToken) {
        if (deviceToken != null) {
          onDeviceToken(deviceToken);
          AppLogger.log('Device Token: $deviceToken');
        }
      },
    );
    FirebaseMessaging.instance.onTokenRefresh.listen(
      onDeviceToken,
    );
    void onDidReceiveLocalNotification(
      int id,
      String? title,
      String? body,
      String? payload,
    ) {
      if (payload != null) {
        onNotificationData(jsonDecode(payload));
      }
    }

    @pragma('vm:entry-point')
    void onDidReceiveNotificationResponse(NotificationResponse details) {
      final payload = details.payload;
      if (payload != null) {
        onNotificationData(jsonDecode(payload));
      }
    }

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              _channel.id,
              _channel.name, channelDescription: _channel.description,
              icon: android.smallIcon,
              // other properties...
            ),
          ),
          payload: jsonEncode(message.data),
        );
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      onNotificationData(message.data);
    });
    FirebaseMessaging.onBackgroundMessage((message) async {
      onNotificationData(message.data);
    });
  }

  void sendOTPNotification(String title, String body) {
    flutterLocalNotificationsPlugin.show(
      1010,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(_otpChannel.id, _otpChannel.name),
      ),
    );
  }
}
