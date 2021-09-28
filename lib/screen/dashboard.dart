import 'package:ff_mobile/model/activity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var data;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    callActivity();
  }

  Future<void> callActivity() async {
    print("Helloworld");

    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);
    print(response.statusCode);
    print(response.body);

    data = cedFromJson(response.body); // Json to object
    print(data.activity);
    print(data.type);
    print(data.participants);
    print(data.price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api_sharp),
              SizedBox(
                width: 10,
              ),
              Text('Dashboard'),
            ],
          ),
        ),
        body: Column(
          children: [
            Text(data?.activity ?? "กำลังโหลด"),
            Text(data?.type ?? ""),
            Text('${data?.participants ?? ""}'),
            Text('${data?.price ?? ""}'),
          ],
        ),
      ),
    );
  }
}
