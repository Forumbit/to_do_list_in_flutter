import 'package:flutter/material.dart';
import 'package:test_to_do_list/widgets/groups_form/group_form_widget_model.dart';

class GroupsFormWidget extends StatefulWidget {
  const GroupsFormWidget({Key? key}) : super(key: key);

  @override
  _GroupsFormWidgetState createState() => _GroupsFormWidgetState();
}

class _GroupsFormWidgetState extends State<GroupsFormWidget> {
  final _model = GroupsFormWidgetModel();

  @override
  Widget build(BuildContext context) {
    return GroupsFormWidgetModelProvider(
      model: _model,
      child: const GroupsFormWidgetBody(),
    );
  }
}

class _FieldWidget extends StatelessWidget {
  const _FieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = GroupsFormWidgetModelProvider.read(context)?.model;
    return TextField(
      autofocus: true,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: 'Название группы'),
      onChanged: (value) => model?.groupName = value,
      onEditingComplete: () => model?.saveGroup(context),
    );
  }
}


class GroupsFormWidgetBody extends StatelessWidget {
  const GroupsFormWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Создать группу'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _FieldWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GroupsFormWidgetModelProvider.read(context)
            ?.model
            .saveGroup(context),
        child: const Icon(Icons.done),
      ),
    );
  }
}