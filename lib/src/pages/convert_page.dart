import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:my_business/core/base/base_statefull.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/demo/company.dart';
import 'package:my_business/demo/convert.dart';
import 'package:my_business/demo/measure.dart';
import 'package:my_business/src/compenent/custom_table.dart';
import 'package:dropdown_search/dropdown_search.dart';

// ignore: must_be_immutable
class ConvertPage extends StatefulWidget {
  @override
  _ConvertPageState createState() => _ConvertPageState();
}

class _ConvertPageState extends BaseStatefull<ConvertPage> {
  int no = 0;
  late Measure mesureModel;
  ConvertDb db = ConvertDb();
  MeasureDb mDb = MeasureDb();
   

  // ignore: unused_field
  late List<DropdownMenuItem<Measure>> _dropdownMenuItems;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    no = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor.christine,
        actions: [
          IconButton(
              onPressed: () {
                _addCustomer(context);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Column(
          children: [
            Padding(
        padding: EdgeInsets.all(5),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: TextField(
            onChanged: (value) {
              //  DepoDb db = DepoDb();
              //  context.read<MeasureCubit>().allMeasure(depoName: value);
            },
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                suffixIcon: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
                border: InputBorder.none,
                hintText: "Depo axtar"),
          ),
        ),
    ),
            CustomerTable(
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
                      label: Text('I ölçü vahidin adı',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Dəyər',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('II ölçü vahidin adı',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Dəyər',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Tənzimləmə',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                ],
                rows: db.getConvert().map((e) {
                  no++;
                  return DataRow(
                    cells: [
                      DataCell(Text(no.toString())),
                      DataCell(Text(e.name)),
                      DataCell(Text(e.firstName.name)),
                      DataCell(Text(e.firstValue.toString())),
                      DataCell(Text(e.secondtName.name)),
                      DataCell(Text(e.secondValue.toString())),
                      DataCell(
                        IconButton(
                          onPressed: () {
                            _buildShowAnimatedDialogEdit(context,e);
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  );
                }).toList(),
                width: 3,
                tablet: 250,
                destkop: 400),
          ],
        ),
      ),
    );
  }

  _buildShowAnimatedDialogEdit(BuildContext context, Convert e,) {
    return showAnimatedDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tənzimlə'),
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration: InputDecoration(hintText: "Ad"),
                ),
                Divider(),
                DropdownSearch<Measure>(
                  mode: Mode.BOTTOM_SHEET,
                  selectedItem: e.firstName,
                  items: mDb.getMeasure()
                      .map((e) =>
                          Measure(id: e.id, userId: e.userId, name: e.name))
                      .toList(),
                  label: "I ölçü vahidin adı",
                  // onFind: (String filter) => getData(filter),
                  itemAsString: (Measure u) => u.name,
                  onChanged: (Measure? data) => print(data!.name),
                ),
                 Divider(),
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration:
                      InputDecoration(hintText: "I ölçü vahidin dəyəri"),
                ),
                 Divider(),
               DropdownSearch<Measure>(
                  mode: Mode.BOTTOM_SHEET,
                  selectedItem: e.secondtName,
                  items: mDb.getMeasure()
                      .map((e) =>
                          Measure(id: e.id, userId: e.userId, name: e.name))
                      .toList(),
                  label: "II ölçü vahidin adı",
                  // onFind: (String filter) => getData(filter),
                  itemAsString: (Measure u) => u.name,
                  onChanged: (Measure? data) => print(data!.name),
                ),
                 Divider(),
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration:
                      InputDecoration(hintText: "II ölçü vahidin dəyəri"),
                ),
              ],
            ),
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
    //  late Measure mM;
    
    return showAnimatedDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Convert əlavə et'),
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
                      child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration: InputDecoration(hintText: "Ad"),
                ),
            
                DropdownSearch<Measure>(
                  mode: Mode.BOTTOM_SHEET,
                  items: mDb
                      .getMeasure()
                      .map((e) =>
                          Measure(id: e.id, userId: e.userId, name: e.name))
                      .toList(),
                  label: "I ölçü vahidin adı",
                  // onFind: (String filter) => getData(filter),
                  itemAsString: (Measure u) => u.name,
                  onChanged: (Measure? data) => print(data!.name),
                ),
                //
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration: InputDecoration(hintText: "II ölçü vahidin dəyəri"),
                ),
               DropdownSearch<Measure>(
                  mode: Mode.BOTTOM_SHEET,
                  items: mDb
                      .getMeasure()
                      .map((e) =>
                          Measure(id: e.id, userId: e.userId, name: e.name))
                      .toList(),
                  label: "II ölçü vahidin adı",
                  // onFind: (String filter) => getData(filter),
                  itemAsString: (Measure u) => u.name,
                  onChanged: (Measure? data) => print(data!.name),
                ),
                TextField(
                  onChanged: (value) {},
                  // controller: _textFieldController,
                  decoration: InputDecoration(hintText: "II ölçü vahidin dəyəri"),
                ),
              ],
            ),
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
