import 'package:flutter/material.dart';
 import 'package:task_manager/ui/widgets/screen_background.dart';

import '../widgets/task_item_widget.dart';
import '../widgets/task_status_summary_counter_widget.dart';
import '../widgets/tm_app_bar.dart';

class ProgressTaskListScreen extends StatefulWidget {
  const ProgressTaskListScreen({super.key});

  @override
  State<ProgressTaskListScreen> createState() => _ProgressTaskListScreenState();
}

class _ProgressTaskListScreenState extends State<ProgressTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    


    return Scaffold(

      appBar: TMAppBar( ),

      body: ScreenBackground(

        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child: _buildTaskListView(),
        ),

      ),

    );
  }

  ListView _buildTaskListView() {
    return ListView.builder(


                itemCount: 10,

                itemBuilder: (context,index){

                  return TaskItemWidged();
                }


            );
  }




}







