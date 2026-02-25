import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/shopping_item.dart';

class FormPage extends StatefulWidget {
  final ShoppingItem? item;

  const FormPage({super.key, this.item});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _namaController = TextEditingController();
  final _jumlahController = TextEditingController();
  final _kategoriController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.item != null) {
      _namaController.text = widget.item!.nama;
      _jumlahController.text = widget.item!.jumlah;
      _kategoriController.text = widget.item!.kategori;
    }
  }

  void simpanData() {
    if (_namaController.text.isEmpty ||
        _jumlahController.text.isEmpty ||
        _kategoriController.text.isEmpty) {
      return;
    }

    final item = ShoppingItem(
      nama: _namaController.text,
      jumlah: _jumlahController.text,
      kategori: _kategoriController.text,
    );

    Get.back(result: item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item == null ? "Tambah Barang" : "Edit Barang"),
        backgroundColor: const Color.fromARGB(56, 142, 60, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(labelText: "Nama Barang"),
            ),
            TextField(
              controller: _jumlahController,
              decoration: const InputDecoration(labelText: "Jumlah Barang"),
            ),
            TextField(
              controller: _kategoriController,
              decoration: const InputDecoration(labelText: "Kategori"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: simpanData, child: const Text("Simpan")),
          ],
        ),
      ),
    );
  }
}
