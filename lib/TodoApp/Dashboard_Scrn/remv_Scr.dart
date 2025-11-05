import 'package:flutter/material.dart';
import 'package:todo_app/Services/api.dart';
import 'package:todo_app/model/patient_data.dart';

class removescr extends StatefulWidget {
  const removescr({super.key});

  @override
  State<removescr> createState() => _removescrState();
}

class _removescrState extends State<removescr> {
  bool isload = true;
  @override
  void initState() {
    // TODO: implement initState
  }
  _loadPatient() async{
    final data = await CrudApi().get(context);
    try {
setState(() {
  allPatients = data;
  isload = false;
});
    } catch (e) {
setState(() {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: (Text("$e",style: TextStyle(color: Colors.yellow),))));
});

    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: isload ? Center(child:
 CircularProgressIndicator(backgroundColor: Colors.yellow,),) :allPatients.isEmpty ?
 Center(child: Text("No Patient List Found"),) 
: ListView.builder(
  itemBuilder: (context,index){
    final pat = allPatients[index];
  return Card(
    color: const Color.fromARGB(255, 169, 163, 75),
    child:ListTile(
      title: Text(
        pat.name,style: TextStyle(
                        color: const Color.fromARGB(255, 43, 41, 21),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
      ),
    ) ,
  )
}) 
    );
  }
}
