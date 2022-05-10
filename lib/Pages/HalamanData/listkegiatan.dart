import 'package:flutter/material.dart';
import '../../../style.dart';

class ListKegiatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text(
          'Daftar Kegiatan',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget cetakKegiatan() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(
          right: 9,
          left: 9,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    scrollable: true,
                    title: const Text('Tambah Kegiatan'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Nama Kegiatan',
                          style: TextStyle(
                              fontStyle: FontStyle.normal, color: Colors.black),
                        ),
                        const TextField(
                          autofocus: true,
                          decoration:
                              InputDecoration(hintText: 'Nama Kegiatan'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Kegiatan',
                          style: TextStyle(
                              fontStyle: FontStyle.normal, color: Colors.black),
                        ),
                        const TextField(
                          autofocus: true,
                          decoration:
                              InputDecoration(hintText: 'Nama Kegiatan'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Tanggal Awal',
                          style: TextStyle(
                              fontStyle: FontStyle.normal, color: Colors.black),
                        ),
                        const TextField(
                          autofocus: true,
                          decoration:
                              InputDecoration(hintText: 'Nama Kegiatan'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Tanggal Akhir',
                          style: TextStyle(
                              fontStyle: FontStyle.normal, color: Colors.black),
                        ),
                        const TextField(
                          autofocus: true,
                          decoration:
                              InputDecoration(hintText: 'Nama Kegiatan'),
                        ),
                      ],
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
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Tambah',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Delete',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget tambahKegiatan() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.only(
          right: 9,
          left: 9,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/kurvadata');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'KurvaS',
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Tambah Kegiatan'),
                    content: const TextField(
                      autofocus: true,
                      decoration: InputDecoration(hintText: 'Nama Kegiatan'),
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
                'Tambah',
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listDataTampilan() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 9,
                  bottom: 14,
                  right: 9,
                ),
                child: DefaultTextStyle(
                  style: const TextStyle(),
                  child: Text(
                    'Pembangunan Beton',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Material(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'No.',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Nama Kegiatan',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Jumlah',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Persentase',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tanggal Mulai',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tanggal Selesai',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Jumlah Hari',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    selected: true,
                    cells: <DataCell>[
                      const DataCell(
                        Text(
                          '1',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                      ),
                      DataCell(
                        const Text(
                          'Pembuatan Pondasi',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        placeholder: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Tambah Kegiatan'),
                              content: const TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(hintText: 'Nama Kegiatan'),
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
                      ),
                      DataCell(
                        const Text(
                          '50000',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        placeholder: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Tambah Kegiatan'),
                              content: const TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(hintText: 'Nama Kegiatan'),
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
                      ),
                      const DataCell(
                        Text(
                          '7,89%',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                      ),
                      DataCell(
                        const Text(
                          '12/09/2023',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        placeholder: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Tambah Kegiatan'),
                              content: const TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(hintText: 'Nama Kegiatan'),
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
                      ),
                      DataCell(
                        const Text(
                          '15/09/2023',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        placeholder: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Tambah Kegiatan'),
                              content: const TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(hintText: 'Nama Kegiatan'),
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
                      ),
                      DataCell(
                        const Text(
                          '3',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        placeholder: true,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Tambah Kegiatan'),
                              content: const TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(hintText: 'Nama Kegiatan'),
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: cetakKegiatan(),
          )
        ],
      );
    }

    Widget contentTampilan() {
      return Expanded(
        flex: 1,
        child: Container(
          color: backgroundColor1,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              tambahKegiatan(),
              listDataTampilan(),
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
