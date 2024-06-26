import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:starlight/feature/presentation/pages/customize/customize_prompt_page.dart';

import 'customize_preset_page.dart';

class CustomizeSelectPage extends StatefulWidget {
  const CustomizeSelectPage({super.key});

  @override
  State<CustomizeSelectPage> createState() => _CustomizeSelectPageState();
}

class _CustomizeSelectPageState extends State<CustomizeSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 11.w,
                    height: 11.w,
                  
                    child: Center(
                      child: IconButton(
                        hoverColor: Colors.white,
                        icon: FaIcon(FontAwesomeIcons.close,
                            size: 18.sp, color: Colors.black),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Text("Customize trip",style: TextStyle(fontSize: 18.sp,fontFamily: 'inter',fontWeight: FontWeight.w700),)

                ],
              ),
              SizedBox(height: 5.h,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.h),
                child: Text("Choose how you would like to tailor your itinerary" ,style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                  fontSize: 18.sp

                )),
              ),

              SizedBox(height: 2.h,),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xFF4D32F8),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                    ),
                    splashColor: Colors.white.withOpacity(0.5),

                    onTap: (){
                      Get.off(
                          () => CustomizePromptPage(),
                        transition: Transition.rightToLeft
                      );
                    },
                    child: Container(
                      width: 100.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 7.w,),

                            Text('Customize with Prompt'
                              ,style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins',
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600
                              ),),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Text('Personalize your itinerary by entering a word or sentence that reflects your travel preferences.'
                  ,style: TextStyle(
                    color: Colors.black,

                    fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                    fontSize: 15.5.sp

                  ),),
              ),
              SizedBox(height: 4.h,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xFF9AA6FF),
                  child: InkWell(
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                    ),
                    splashColor: Colors.white.withOpacity(0.5),

                    onTap: (){
                      Get.off(
                            () => CustomizePresetPage(),
                          transition: Transition.rightToLeft

                      );
                    },
                    child: Container(
                      width: 100.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(height: 7.w,),
                            Text('Customize with Preset'
                              ,style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'poppins',
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                            Spacer()

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Text('Quickly tailor your itinerary by selecting a preset option that suits your preferences.'
                  ,style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 15.5.sp

                  ),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
