import 'package:flutter/material.dart';

import '../entity_classes/contact_info.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<ContactInfo> contactInfoList = [];
  final TextEditingController _tEcName = TextEditingController();
  final TextEditingController _tEcPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _tEcName,
              decoration: const InputDecoration(hintText: 'Name'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              maxLength: 11,
              controller: _tEcPhoneNumber,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Phone Number'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  ContactInfo contactInfo = ContactInfo(
                      name: _tEcName.text, phoneNumber: _tEcPhoneNumber.text);
                  setState(
                    () {
                      contactInfoList.insert(0, contactInfo);
                    },
                  );
                },
                child: const Icon(Icons.add),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 2,
                      child: ListTile(
                        onLongPress: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: const Color(0xff667C89),
                                  title: const Text(
                                    "Warning!",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  content: const Text(
                                    "Are you sure about Deleting this phone number from your contact list?",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  actions: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.cancel_sharp),
                                      color: Colors.white,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            contactInfoList.removeAt(i);
                                          },
                                        );
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: Colors.white,
                                    )
                                  ],
                                );
                              });
                        },
                        leading: const Icon(Icons.person),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(contactInfoList[i].name),
                            Text(contactInfoList[i].phoneNumber)
                          ],
                        ),
                        trailing: const Icon(Icons.phone),
                      ),
                    );
                  },
                  itemCount: contactInfoList.length),
            )
          ],
        ),
      ),
    );
  }
}
