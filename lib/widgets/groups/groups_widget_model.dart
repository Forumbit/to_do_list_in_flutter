import 'package:flutter/cupertino.dart';

class GroupsWidgetModel extends ChangeNotifier {

  void showForm(BuildContext context) {
    Navigator.of(context).pushNamed('/groups/form');
  }

}

class GroupsWidgetModelProvider extends InheritedNotifier {
  GroupsWidgetModel model;
  GroupsWidgetModelProvider(
    {
      Key? key,
      required this.model,
      required Widget child,
    }
  ) : super(key: key, child: child, notifier: model);

    static GroupsWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GroupsWidgetModelProvider>();
  }

  static GroupsWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GroupsWidgetModelProvider>()
        ?.widget;
    return widget is GroupsWidgetModelProvider ? widget : null;
  }
}