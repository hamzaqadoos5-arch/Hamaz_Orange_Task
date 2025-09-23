import 'package:flutter/material.dart';
import 'package:shared_reference_task/App/whatsapp.dart';
import 'package:shared_reference_task/Core/database/cache_helper.dart';

void main()async{
WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(WhatsApp());
}
