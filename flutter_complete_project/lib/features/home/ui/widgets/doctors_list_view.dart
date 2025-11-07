import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    width: 110.w,
                    height: 120.h,
                    'https://imgs.search.brave.com/aoKexZLrE9Ujw0wgzFs_oMA8D1XxiBiEPIsric1QgfA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzA5L2I3/Lzg0LzA5Yjc4NGYw/ZGE0NzBmOTU5M2Ex/NjU0ZjgwODAzNmI2/LmpwZw',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 01111111111',
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text('Email', style: TextStyles.font12GrayMedium),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
