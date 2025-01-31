import 'package:dashboardapp/models/list_tile_model.dart';
import 'package:dashboardapp/utils/app_images.dart';
import 'package:dashboardapp/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ListOfListTiles extends StatefulWidget {
  const ListOfListTiles({
    super.key,
  });

  @override
  State<ListOfListTiles> createState() => _ListOfListTilesState();
}

@override

class _ListOfListTilesState extends State<ListOfListTiles> {

    int active = 0;

  @override
  Widget build(BuildContext context) {
    List<ListTileModel> items = [
      ListTileModel(title: 'DashBoard', image: Assets.imagesDashboard),
      ListTileModel(
          title: 'My Transactions', image: Assets.imagesMyTransctions),
      ListTileModel(title: 'Statistics', image: Assets.imagesStatistics),
      ListTileModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
      ListTileModel(title: 'My Investments', image: Assets.imagesMyInvestments),
    ];
    return ListView.builder(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (active != index) {
              setState(() {
                active = index;
                print(index);
              });
            }
          },
          child: CustomListTile(
            listTileModel: items[index],
            isactive: index == active,
          )),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
