import 'package:flutter/material.dart';
import 'package:test_to_do_list/widgets/groups_form/groups_form_widget.dart';

import 'groups/groups_widget.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/groups': (context) => const GroupsWidget(),
        '/groups/form': (context) => const GroupsFormWidgetBody(),
      },
      initialRoute: '/groups',
    );
  }
}
