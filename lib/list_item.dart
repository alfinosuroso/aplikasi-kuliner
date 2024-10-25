import 'package:aplikasi_kuliner/detail_page.dart';
import 'package:aplikasi_kuliner/makanan.dart';
import 'package:aplikasi_kuliner/styles.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;
  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(makanan: makanan)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 178, 178, 178),
                offset: Offset(1.0, 2.0),
                blurRadius: 6.0,
              )
            ]),
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              makanan.gambar,
              height: 75,
              width: 75,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.nama,
                    style: textTitle1,
                  ),
                  Text(
                    makanan.detail,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    makanan.harga,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.food_bank,
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
