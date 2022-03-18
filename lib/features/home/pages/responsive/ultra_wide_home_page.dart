import 'package:flutter/material.dart';

import '../widgets/extra_panel.dart';
import '../widgets/main_content.dart';
import '../widgets/navigation_panel.dart';

class UltraWideHomePage extends StatelessWidget {
  const UltraWideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        child: NavigationPanel(),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            width: 300,
            child: NavigationPanel(),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Expanded(
                      child: MainContent(),
                    ),
                    Expanded(
                      child: ExtraPanel(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}