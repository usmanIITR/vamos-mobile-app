import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vamos/utils/app_theme.dart';


Future ButtomModalSheet(context){
  return showModalBottomSheet(context: context,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
     clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
          child:ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 10),
                      Container(width: MediaQuery.of(context).size.width*0.1,height: 6,color: Color(0xff8E8989),),
                     SizedBox(height: MediaQuery.of(context).size.height*0.1),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("3 min to pickup",style: AppTheme.h1,),
                              const SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Text(
                                  "Your car will be at the pickup spot at 12:03pm",
                              style: AppTheme.h4,
                                        ),
                          )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.05),
                          SvgPicture.asset('assets/images/splash.svg',width:MediaQuery.of(context).size.width*0.35)
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.1),
                    Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset('assets/images/Ellipse 111.svg',width: 40,),
                                Text("A",style: AppTheme.h4.copyWith(color: Colors.white,fontSize: 20)),
                              ],
                            ),
                            Container(height: 3,width: 2,color: Colors.black,),
                            SizedBox(height: 2),
                            Container(height: 3,width: 2,color: Colors.black,),
                            SizedBox(height: 2),
                            Container(height: 3,width: 2,color: Colors.black,),
                            SizedBox(height: 2),
                            Container(height: 3,width: 2,color: Colors.black,),
                            SizedBox(height: 2),
                            Container(height: 3,width: 2,color: Colors.black,),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset('assets/images/Ellipse 111.svg',width: 40,),
                                Text("B",style: AppTheme.h4.copyWith(color: Colors.white,fontSize: 20)),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(width: 20),
                        Container(
                          child: Column(
                           // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Rajiv Bhawan",style: AppTheme.h4,),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.4),
                                Text("4:30 PM",style: AppTheme.h4,)
                              ],),
                              SizedBox(height: 10,),
                              Divider(
                                thickness: 10,
                                color: Color(0xffD9D9D9),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Gargi Block",style: AppTheme.h4,),
                                SizedBox(width: MediaQuery.of(context).size.width*0.4),

                                Text("5:30 PM",style: AppTheme.h4,)
                              ],),
                            ],
                          ),
                        )
                      ],
                    )
                    ,Divider(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("OTP",style: AppTheme.h4,),
                      Text("4454",style: AppTheme.h4,),
                    ],),
                    SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                    Row(
                     children: [
                       Container(
                           width: MediaQuery.of(context).size.width*0.45,

                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.white,
                                 side: BorderSide(
                                 color: Colors.blue,

                                 )
                             ),
                               onPressed: (){}, child: Text("Cancel Trip",style: TextStyle(
                             color: Colors.blue
                           ),))),
                       SizedBox(width: 10,),

                       Container(
                           width: MediaQuery.of(context).size.width*0.45,

                           child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.blue,

                               ),
                               onPressed: (){}, child:Icon(Icons.phone))),
                     ],
                    )

                  ]
                ),
              ),
            ),
          ) ,

      ),
    );

  });

}