import 'package:flutter/material.dart';
import 'package:washing_machine/screens/main/timer_panel.dart';
import 'package:washing_machine/screens/settings/settings_bottom_sheet.dart';
import 'package:washing_machine/shared/colors.dart';
import 'package:washing_machine/shared/consts.dart';
import 'package:washing_machine/shared/widgets.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          globalEdgeMarginValue, drawerButtonMarginTop, 18, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NeumorphicIconButton(
            icon: Icon(
              Icons.settings,
              color: CustomColors.icon,
            ),
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return const SettingsBottomSheet();
                  });
            },
          ),
          // ignore: prefer_const_constructors
          TimerPanel()
        ],
      ),
    );
  }
}
