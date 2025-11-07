import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18.h),
              const DoctorsSpecialityListView(),
              verticalSpace(8.h),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
