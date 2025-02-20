
import 'package:dashboardapp/screens/layouts/desktop/widget/custom_pie_chart.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class DetailedChartWidget extends StatelessWidget {
  const DetailedChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     Expanded(child: IntrinsicHeight(child: Container(
      color: Colors.amber,
      child: CustomPieChart()))),
     Expanded(
       flex: 2,
       child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
     children: [
       ListTile(
         visualDensity: VisualDensity(vertical: -4),
         leading: CircleAvatar(
           radius: 5,
           backgroundColor: greyColor,),
         title: Text("Design Service", style: TextStyles.styleMedium16,maxLines: 1,overflow: TextOverflow.ellipsis,),
         trailing: Text("40%", style: TextStyles.styleReguler16.copyWith(color: blueColor),),
       ),
    
        ListTile(
          visualDensity: VisualDensity(vertical: -4),

         leading: CircleAvatar(
           radius: 5,
           backgroundColor: blueColor1,),
         title: Text("Design product", style: TextStyles.styleMedium16,maxLines: 1,overflow: TextOverflow.ellipsis,),
         trailing: Text("25%",style: TextStyles.styleReguler16.copyWith(color: blueColor),),
       ),
    
    
        ListTile(
            visualDensity: VisualDensity(vertical: -4),

         leading: CircleAvatar(
           radius: 5,
           backgroundColor: blueColor2,),
         title: Text("Design royality", style: TextStyles.styleMedium16,maxLines: 1,overflow: TextOverflow.ellipsis,),
         trailing: Text("20%",style: TextStyles.styleReguler16.copyWith(color: blueColor),),
       ),
    
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
         leading: CircleAvatar(
           radius: 5,
           backgroundColor: blueColor3,),
         title: Text("others", style: TextStyles.styleMedium16,maxLines: 1,overflow: TextOverflow.ellipsis,),
         trailing: Text("22%", style: TextStyles.styleReguler16.copyWith(color: blueColor),),
       ),
     ],
      ),
      ),
      
                 ],
               );
  }
}
