import 'package:flutter/material.dart';

class GroupsFormWidgetModel {
  var groupName = '';
  
  void saveGroup (BuildContext context) {
    print(groupName);
  }
}

class GroupsFormWidgetModelProvider extends InheritedWidget {
  final GroupsFormWidgetModel model;
  const GroupsFormWidgetModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child);

  static GroupsFormWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupsFormWidgetModelProvider>();
  }

  static GroupsFormWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<GroupsFormWidgetModelProvider>()?.widget;
    return widget is GroupsFormWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
