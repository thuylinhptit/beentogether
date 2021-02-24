import 'dart:convert';

import 'package:beentogether/Home0.dart';
import 'package:beentogether/app/add_image/image_provider.dart';
import 'package:beentogether/app/home/home.cubit.dart';
import 'package:beentogether/app/home2/home2.dart';
import 'package:beentogether/home4_chat.dart';
import 'package:beentogether/model/memory.dart';
import 'package:beentogether/todo_memory.dart';
import 'package:beentogether/ultis/Application.dart';
import 'package:beentogether/ultis/shared_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Application.sharedPreferences = await SpUtil.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AddImageState()),
        ChangeNotifierProvider(create: (_) => TodoMemory()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>(create: (BuildContext context) => HomeCubit())
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp() {
    Application.listMemory = ListMemory();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false, home: Home0());
  }
}

class ViewPage extends StatefulWidget {
  @override
  _ViewPage createState() => _ViewPage();
}

class _ViewPage extends State<ViewPage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Home(),
        Home2(),
        Home4(),
      ],
    );
  }
}
