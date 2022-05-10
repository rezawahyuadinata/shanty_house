import 'package:flutter/material.dart';

import '../../../style.dart';

class DaftarProjek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text(
          'Daftar Projek',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget tombolBuat() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(
          right: 12,
          left: 12,
        ),
        child: Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Tambah Projek'),
                      content: const TextField(
                        autofocus: true,
                        decoration: InputDecoration(hintText: 'Nama Projek'),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop;
                              },
                              child: const Text('Tambah'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop;
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Tambah +',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget cardTampilan() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          bottom: 14,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor4,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: const TextStyle(),
                    child: Text(
                      'Reza Wahyu Adinata',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(),
                    child: Text(
                      'Projek Pembangunan Waduk',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/listkegiatan');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Lihat Isi Projek'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/delete');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Delete Projek'),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget contentTampilan() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            children: [
              tombolBuat(),
              cardTampilan(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        contentTampilan(),
      ],
    );
  }
}
