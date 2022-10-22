import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_temp/presentations/home/ui/view_model/home_view_model.dart';
import 'package:flutter_application_temp/presentations/home/ui/widgets/checkbox_list_tile.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: ListView.builder(
        itemBuilder: (_, int index) => Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: Colors.grey.shade400),
          margin: const EdgeInsets.all(8),
          child: CheckBoxWidget(
            title: listModel[index].title,
            isCheckChange: (){},
            isChecked: listModel[index].isChecked,
          ),
        ),
        itemCount: listModel.length,
      ),
    );
  }
}
