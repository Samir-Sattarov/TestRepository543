import 'package:flutter/material.dart';

class Dialogs {
  static dateTimePicker(BuildContext context) async {
    return await showDatePicker(
      context: context,

      initialDatePickerMode: DatePickerMode.year,
      firstDate: DateTime(2012, 1, 1),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
  }

  static showExitDialog(BuildContext context, {required Function() onExit}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.red.withOpacity(0.3),
      builder: (context) {
        return AlertDialog(
          title: const Text("Hello Galaxy!"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'A dialog is a type of modal window that\n',
              ),
              Container(
                height: 300,
                width: 300,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40,
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://th.wallhaven.cc/small/3l/3lv8j6.jpg"),
                      )),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
          actions: [
            // TextButton(
            //   onPressed: () {},
            //   child: Text("Cancel"),
            // ),
            // SizedBox(width: 10),
            TextButton(
              onPressed: () {
                onExit.call();
                Navigator.pop(context);
              },
              child: const Text("Exit"),
            ),
          ],
        );
      },
    );
  }
}
