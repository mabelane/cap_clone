import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  var _isWarning = false;

  bool? containsWarning(String message) {
    if (message.contains("Waring")) {
      return _isWarning = true;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 10,
        separatorBuilder: ((BuildContext context, index) => const Divider(
              indent: 16,
              endIndent: 25,
              thickness: 0.2,
            )),
        itemBuilder: ((context, index) {
          return ListTile(
            // tileColor: Colors.white,
            leading: Icon(_isWarning ? Icons.warning : Icons.info),
            title: const Text("Hello"),
            subtitle: Text(DateTime.now().toLocal().toString()),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        }));
  }
}
