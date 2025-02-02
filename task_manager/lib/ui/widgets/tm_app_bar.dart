import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/update_profile_screen.dart';

import '../utils/app_colors.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TMAppBar({
    super.key,

    this.fromUpdateProfile = false,
  });

  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return AppBar(

      backgroundColor: AppColors.themeColor,

      title: Row(

        children: [

          CircleAvatar(
            radius: 16,
          ),

          SizedBox(width: 16,),

          Expanded(
            child: GestureDetector(
              
              onTap: (){
                if(!fromUpdateProfile){
                  Navigator.pushNamed(context, UpdateProfileScreen.name);
                }
              },
              child: Column(
              
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  Text(
                      "Rabbil Hasan",
                      style: textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                      )
                  ),
                  Text(
                    "rabil@gmail.com",
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.black,
              
                    ),
                  ),
                ],
              ),
            ),
          ),



          IconButton(
            onPressed: (){},
            icon: Icon(Icons.logout),
          )

        ],

      ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
