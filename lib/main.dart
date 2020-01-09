import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> data = ['Chicken','Salmon','Beef','Pork','Avocado','Apple Cider Vinegar','Asparagus'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bahan Makanan',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Bahan Makanan'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(data[index]),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(item: data[index])
                    )
                );
              },
            );
          },
        )
      )
    );
  }
}

class DetailScreen extends StatelessWidget{
  DetailScreen({Key key, this.item}) : super(key: key);
  final String item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Bahan Makanan'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}