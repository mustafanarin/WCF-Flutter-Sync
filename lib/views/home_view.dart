import 'package:flutter/material.dart';
import 'package:wcf_flutter_sync/product/constant/project_colors.dart';
import 'package:wcf_flutter_sync/product/constant/project_strings.dart';

// example page
class PersonListPage extends StatelessWidget {
  PersonListPage({super.key});

  final List<Map<String, String>> people = [
    {'name': 'Ahmet', 'number': '1234'},
    {'name': 'Mehmet', 'number': '5678'},
    {'name': 'Ayşe', 'number': '9012'},
    {'name': 'Fatma', 'number': '3456'},
    {'name': 'Ali', 'number': '7890'},
    {'name': 'Zeynep', 'number': '2345'},
    {'name': 'Mustafa', 'number': '6789'},
    {'name': 'Emine', 'number': '0123'},
    {'name': 'Hüseyin', 'number': '4567'},
    {'name': 'İbrahim', 'number': '8901'},
    {'name': 'Hatice', 'number': '2468'},
    {'name': 'Yusuf', 'number': '1357'},
    {'name': 'Meryem', 'number': '9876'},
    {'name': 'Can', 'number': '5432'},
    {'name': 'Elif', 'number': '1098'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ProjectStrings.homeAppbar,
        ),
        backgroundColor: ProjectColors.blue,
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  people[index]['name']![0],
                  style: const TextStyle(
                    color: ProjectColors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                people[index]['name']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: ProjectColors.blue50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ProjectColors.teal200),
                ),
                child: Text(
                  people[index]['number']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ProjectColors.teal700,
                  ),
                ),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
