import 'package:flutter/material.dart';
import 'package:pomodoro_app/app/controllers/home_page_controller.dart';
import 'package:pomodoro_app/app/widgets/button_comecar.dart';
import 'package:pomodoro_app/app/widgets/button_settings.dart';
import 'package:pomodoro_app/app/widgets/circular_custom.dart';
import 'package:pomodoro_app/app/widgets/rich_text_custom.dart';
import 'package:pomodoro_app/app/widgets/row_actions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = HomePageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(controller.msg),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircularCustom(
                value: controller.progress,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: RichTextCustom(
                        minutes: controller.minutes,
                        seconds: controller.seconds,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: controller.start
                        ? const Center(
                            child: RowActions(),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonComecar(
                                function: controller.focus,
                              ),
                              const ButtonSettings(),
                            ],
                          ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
