
import 'dart:developer';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/config/item/option_item.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/controllers/logic_controller.dart';
import 'package:praxis_test_app/presentation/widgets/shared/custom_fab.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LogicController>(
      init: LogicController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Lista de opciones'),
          ),
          body: ListView.separated(
          itemCount: appMenuItems.length,
          separatorBuilder: (context, ind) {
            return Divider(
              color: colorThemes[2].withOpacity(0.7),
            );
          },
          itemBuilder: (context, index) {
        
              final OptionItem menuItem = appMenuItems[index];
        
              return FadeIn(
                delay: Duration(milliseconds: 70 * index),
                child: _CustomListTile(menuItem: menuItem)
              );
            }
          ),
          floatingActionButton: CustomFab( 
            btnFunction: _.validateSelectedItem
          )
        );
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

    return GetBuilder<LogicController>(
      id: 'checkbox',
      builder: (_) {
        return ListTile(
          leading: Checkbox(
            side: BorderSide(
              color: colorThemes[2],
              width: 1.7
            ),
            value: menuItem.isSelected,
            onChanged: (value) {
              menuItem.isSelected = value!;
              _.optionItem =menuItem;
              _.onChangeCheckBox(value, menuItem.title );
              log('SELECTED: ${menuItem.title} - ${menuItem.isSelected}');
            }
          ),
          trailing: Icon(menuItem.icon, color: colors.primary),
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
        );
      }
    );
  }
}