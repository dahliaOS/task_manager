/*
Copyright 2019 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(Tasks());
}

extension CustomColorScheme on ColorScheme {
  Color get titleText => brightness == Brightness.light
      ? const Color(0xFF000000)
      : const Color(0xFFffffff);
  Color get foregroundText => brightness == Brightness.light
      ? const Color(0xFF222222)
      : const Color(0xFFffffff);
  Color get barColor => brightness == Brightness.light
      ? Color(0xff00838f)
      : const Color(0xFF222222);
  Color get cardColor => brightness == Brightness.light
      ? const Color(0xFFffffff)
      : const Color(0xFF303030);
  Color get activeColor => brightness == Brightness.light
      ? const Color(0xFFffffff)
      : const Color(0xFF303030);
  Color get body2 => brightness == Brightness.light
      ? const Color(0xFFeeeeee)
      : const Color(0xFF333333);
}

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.cyan,
      ),
      /*themeMode: Pangolin.settingsBox.get("darkMode")
          ? ThemeMode.dark
          : ThemeMode.light,*/
      home: TasksPage(),
    );
  }
}

class TasksPage extends StatefulWidget {
  TasksPage({Key? key}) : super(key: key);
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(52.0), // here the desired height
            child: AppBar(
              backgroundColor: Theme.of(context).colorScheme.barColor,
              elevation: 0,
              bottom: TabBar(
                  labelColor: Theme.of(context).colorScheme.foregroundText,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      color: Theme.of(context).colorScheme.activeColor),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("PROCESSES"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("RESOURCES"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("CONTAINERS"),
                      ),
                    ),
                  ]),
            ),
          ),
          body: TabBarView(children: [
            ProcessPage(),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]),
        ));
  }
}

Container buildProcess(context, String icon, String name) {
  return Container(
    padding: const EdgeInsets.only(
      top: 25,
      left: 15,
    ),
    alignment: Alignment.centerLeft,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(icon,
              fit: BoxFit.fill,
              width: 30.0,
              height: 30.0,
              package: "task_manager"),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Theme.of(context).colorScheme.foregroundText,
                  fontFamily: "Roboto"),
            ),
          ),
        ]),
  );
}

class ProcessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Expanded(
        child: Container(
          color: Theme.of(context).colorScheme.body2,
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                buildProcess(context, 'assets/images/icons/PNG/calculator.png',
                    'Calculator'),
                buildProcess(
                    context, 'assets/images/icons/PNG/disks.png', 'Disks'),
                buildProcess(
                    context, 'assets/images/icons/PNG/files.png', 'Files'),
                buildProcess(
                    context, 'assets/images/icons/PNG/logs.png', 'Logs'),
                buildProcess(context, 'assets/images/icons/PNG/note_mobile.png',
                    'Notes (Mobile)'),
                buildProcess(
                    context, 'assets/images/icons/PNG/notes.png', 'Notes'),
                buildProcess(context, 'assets/images/icons/PNG/root.png',
                    'Root Terminal'),
                buildProcess(context, 'assets/images/icons/PNG/settings.png',
                    'Settings'),
                buildProcess(context, 'assets/images/icons/PNG/task.png',
                    'Task Manager'),
                buildProcess(context, 'assets/images/icons/PNG/terminal.png',
                    'Terminal'),
                buildProcess(
                    context, 'assets/images/icons/PNG/theme.png', 'Theme Demo'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
                buildProcess(context, 'assets/images/icons/PNG/android.png',
                    'Android Subsystem'),
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 300,
        color: Color(0x0),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icons/PNG/grey-drag.png',
                  fit: BoxFit.fill,
                  width: 64.0,
                  height: 64.0,
                  package: "task_manager",
                ),
                //
                Text(
                  "Select a process to view stats and manage functionality.",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).colorScheme.foregroundText,
                      fontFamily: "Roboto"),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "null",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).colorScheme.foregroundText,
                      fontFamily: "Roboto"),
                ),
                Text(
                  "null",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).colorScheme.foregroundText,
                      fontFamily: "Roboto"),
                ),
                ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.cyan[800])),
                    child: Text(
                      "LAUNCH",
                    )),
                ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.cyan[800])),
                    child: Text(
                      "ABOUT",
                    )),
                ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: Text(
                      "KILL",
                    )),
              ],
            )),
      )
    ]));
  }
}
