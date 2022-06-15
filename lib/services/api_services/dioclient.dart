import 'dart:async';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';



enum RequestType { get, post, put, delete }

class DioClient {
  final Dio _dio = Dio();

}
