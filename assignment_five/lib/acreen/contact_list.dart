import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Phone Number'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 3,
                      child: ListTile(
                        onLongPress: (){},
                        leading: Icon(Icons.person),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('XYZ'),
                            Text('018211465')
                          ],
                        ),
                        trailing: Icon(Icons.phone),
                      ),
                    );
                  },
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}
