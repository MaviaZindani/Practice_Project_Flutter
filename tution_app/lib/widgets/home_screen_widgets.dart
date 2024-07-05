import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// days tabs widget

class HomeTabs extends StatefulWidget {
  HomeTabs({super.key});

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<int> date = [1, 2, 3, 4, 5, 6, 7];
    List<String> month = ['Mon', 'Tus', 'Wed', 'Thus', 'Fri', 'Sut', 'Sun'];
    int activeButton = 0;
    return Column(
      children: [
        Text(
          month[activeButton],
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: AutofillHints.addressCity,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      activeButton == 0 ? Colors.orange : Colors.transparent),
              child: Center(
                child: Text(
                  date[activeButton].toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: AutofillHints.birthdayMonth),
                ),
              )),
        ),
      ],
    );
  }
}

// class detail widget

class ClassBox extends StatelessWidget {
  final String classlevelname;
  final String className;
  final Color classlevelcolor;
  final String classDate;
  final String classTime;
  const ClassBox(
      {super.key,
      required this.classlevelname,
      required this.className,
      required this.classDate,
      required this.classTime,
      required this.classlevelcolor});

  @override
  Widget build(BuildContext context) {
    bool doneClass = false;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Container(
          height: 120,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 7,
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          doneClass == false
                              ? Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          width: 2, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(50)),
                                )
                              : Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                          width: 2, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(
                                      Icons.check_box_outline_blank_rounded),
                                ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                className,
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                classDate,
                                style: const TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(classlevelcolor)),
                          onPressed: () {},
                          child: Text(classlevelname))
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// List of classes

class ClassList extends StatelessWidget {
  final int? listnumber;
  const ClassList({super.key, required this.listnumber});

  @override
  Widget build(BuildContext context) {
    List<String> classlevel_name = ['Easy'];
    List<String> className = ['Easy'];
    List<String> classDate = ['Easy'];
    List<String> classTime = ['Easy'];
    List<Color> classlevel_color = [Colors.blue];
    return ListView.builder(
        itemCount: listnumber,
        itemBuilder: (context, index) {
          return ClassBox(
              classlevelname: classlevel_name[index],
              className: className[index],
              classDate: classDate[index],
              classTime: classTime[index],
              classlevelcolor: classlevel_color[index]);
        });
  }
}

class ScreenWidgets extends StatefulWidget {
  ScreenWidgets({super.key});

  @override
  State<ScreenWidgets> createState() => _ScreenWidgetsState();
}

class _ScreenWidgetsState extends State<ScreenWidgets> {
  final CollectionReference myItem =
      FirebaseFirestore.instance.collection("CRUDitem");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 0, 100, 250),
      body: StreamBuilder(
          stream: myItem.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> stremSnapshot) {
            if (stremSnapshot.hasData) {
              return ListView.builder(
                  itemCount: stremSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        stremSnapshot.data!.docs[index];
                    return Material(
                      elevation: 5,
                      borderRadius:BorderRadius.circular(30),
                      child: ListTile(
                        title: Text(
                          documentSnapshot['name'],
                          style:const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          documentSnapshot['position'],
                          style:const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    );
                  });
            } else {
              return const Center();
            }
          }),
      // ClassList(listnumber: 1),
    );
  }
}
