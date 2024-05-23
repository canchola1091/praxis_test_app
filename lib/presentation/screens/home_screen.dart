
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:praxis_test_app/config/item/option_item.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de opciones'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {

        final OptionItem menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  
  const _CustomListTile({
    required this.menuItem,
  });

  final OptionItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: menuItem.isSelected,
            onChanged: (value) {
              menuItem.isSelected = value!;
            }
          ),
          Icon(menuItem.icon, color: colors.primary),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        
        log('ITEM');

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen()
        //   )
        // );

        // Navigator.pushNamed(context, menuItem.link);

        // context.push( menuItem.link );

      },
    );
  }
}