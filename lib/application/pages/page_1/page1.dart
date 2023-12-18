import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_demo/application/core/services/theme_services.dart';
import 'package:single_demo/application/pages/page_1/widgets/custom_button.dart';
import 'package:single_demo/application/pages/page_1/widgets/text_field.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Dark/Light',
            style: themeData.textTheme.bodyLarge,
          ),
          centerTitle: true,
          actions: [
            Switch(
              value: Provider.of<ThemeServices>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeServices>(context, listen: false)
                    .toggleTheme();
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: const [
              Expanded(
                child: Center(
                  child: CustomTextField(
                    messageCustom: "Page-1",
                  ),
                  // child: CircularProgressIndicator(
                  //   color: themeData.colorScheme.secondary,
                  // ),
                  // child: Text(
                  //   'data',
                  //   style: themeData.textTheme.bodyLarge,
                  // ),
                ),
              ),
              const SizedBox(height: 200, child: Center(child: CustomButton())),
            ],
          ),
        ));
  }
}
