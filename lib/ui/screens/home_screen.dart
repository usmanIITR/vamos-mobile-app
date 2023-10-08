import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';
import '../widgets/vm_appbar.dart';
import '../widgets/vm_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.background,
      appBar: VMAppBar(),
      drawer: VMDrawer(),
      body: SafeArea(
        child: Center(
          child: Text("Home Screen!!"),
        ),
      ),
    );
  }
}
