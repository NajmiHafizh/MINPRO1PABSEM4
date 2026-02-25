import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/shopping_item.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ShoppingItem> items = [];

  void tambahItem(ShoppingItem item) {
    setState(() {
      items.add(item);
    });
  }

  void hapusItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void updateItem(int index, ShoppingItem item) {
    setState(() {
      items[index] = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Belanja"),
        backgroundColor: const Color.fromARGB(56, 142, 60, 1),
      ),
      body: items.isEmpty
          ? const Center(child: Text("Belum ada daftar belanja"))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(items[index].nama),
                    subtitle: Text(
                      "Jumlah: ${items[index].jumlah} | Kategori: ${items[index].kategori}",
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () async {
                            final result = await Get.to(
                              () => FormPage(item: items[index]),
                            );
                            if (result != null) {
                              updateItem(index, result);
                            }
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            hapusItem(index);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Get.to(() => const FormPage());
          if (result != null) {
            tambahItem(result);
            Get.back();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
