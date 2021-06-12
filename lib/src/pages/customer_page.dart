import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/demo/customer.dart';
import 'package:my_business/src/compenent/custom_table.dart';

// ignore: must_be_immutable
class CustomerPage extends BaseStateless {
  int no=0;
  CustomerDb db = CustomerDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: myColor.christine,
        actions: [IconButton(onPressed: (){
          _addCustomer(context);
                  }, icon: Icon(Icons.add))],
                ),
                body: CustomerTable(
                    columns: [
                      DataColumn(
                          label: Text('No',
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Ad',
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Telefon',
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Tənzimləmə',
                              style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    ],
                    rows: db
                        .getCustomer()
                        .map(
                          (e) {
                            no++;
                            return DataRow(
                            cells: [
                              DataCell(Text(no.toString())),
                              DataCell(Text(e.name)),
                              DataCell(Text(e.phone)),
                              DataCell(
                                IconButton(
                                  onPressed: () {
                                    _buildShowAnimatedDialogEdit(context);
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                              ),
                            ],
                          );
                          }
                        )
                        .toList(),
                    width: 3,
                    tablet: 250,
                    destkop: 400),
              );
            }
          
            _buildShowAnimatedDialogEdit(BuildContext context) {
              return showAnimatedDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Tənzimlə'),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              onChanged: (value) {},
                                              // controller: _textFieldController,
                                              decoration:
                                                  InputDecoration(hintText: "Ad"),
                                            ),
                                            TextField(
                                              onChanged: (value) {},
                                              // controller: _textFieldController,
                                              decoration:
                                                  InputDecoration(hintText: "Nömrə"),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text('Sil'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.red,
                                              onSurface: Colors.grey,
                                            ),
                                          ),
                                          TextButton(
                                            child: Text('Dəyiş'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.green,
                                              onSurface: Colors.grey,
                                            ),
                                          ),
                                          TextButton(
                                            child: Text('Ləğv et'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.blue,
                                              onSurface: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    animationType: DialogTransitionType.slideFromBottom,
                                    curve: Curves.easeInBack,
                                    duration: Duration(seconds: 1),
                                  );
            }
          
             _addCustomer(BuildContext context) {
               return showAnimatedDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Müştəri əlavə et'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    onChanged: (value) {},
                                    // controller: _textFieldController,
                                    decoration:
                                        InputDecoration(hintText: "Ad"),
                                  ),
                                  TextField(
                                    onChanged: (value) {},
                                    // controller: _textFieldController,
                                    decoration:
                                        InputDecoration(hintText: "Nömrə"),
                                  ),
                                ],
                              ),
                              actions: [
                               
                                TextButton(
                                  child: Text('Yadda saxla'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.green,
                                    onSurface: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  child: Text('Ləğv et'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.blue,
                                    onSurface: Colors.grey,
                                  ),
                                ),
                              ],
                            );
                          },
                          animationType: DialogTransitionType.slideFromBottom,
                          curve: Curves.easeInBack,
                          duration: Duration(seconds: 1),
                        );
             }
}
