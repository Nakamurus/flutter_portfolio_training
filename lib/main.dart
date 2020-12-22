import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/components/sideDrawer.dart';
import 'package:portfolio/model/experience.dart';

final companyProvider = StateProvider((ref) => '');

final experienceProvider = FutureProvider<List<Experience>>((ref) async {
  final response = await http.get('https://course-api.com/react-tabs-project');
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data
        .map((item) => Experience.fromJson(item))
        .toList()
        .cast<Experience>();
  } else {
    throw Error();
  }
});

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final company = watch(companyProvider);
    AsyncValue<List<Experience>> experiences = watch(experienceProvider);
    Experience toggle(List<Experience> experiences) {
      if (company.state == '')
        return experiences.first;
      else
        return experiences
            .singleWhere((experience) => experience.company == company.state);
    }

    return MaterialApp(
      title: 'Portfolio',
      home: experiences.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text(error.toString())),
          data: (experience) {
            final Experience selectedExperience = toggle(experience);
            final companies =
                Set.from(experience.map((experience) => experience.company))
                    .toList()
                    .cast<String>();
            return Scaffold(
              appBar: AppBar(title: Text('Portfolio')),
              drawer: SideDrawer(companies: companies),
              body: Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                        child: Column(children: <Widget>[
                      Text('Experience',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 3,
                          width: 50,
                          color: Colors.greenAccent,
                        ),
                      )
                    ])),
                    SizedBox(height: 20),
                    Text(selectedExperience.title,
                        style: TextStyle(fontSize: 24)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        color: Colors.grey[200],
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                        child: Text(selectedExperience.company,
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700])),
                      ),
                    ),
                    Text(selectedExperience.dates,
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 20),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: selectedExperience.duties.length,
                      itemBuilder: (context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.double_arrow_outlined,
                              color: Colors.greenAccent,
                            ),
                            Flexible(
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.80,
                                    child: Text(
                                        selectedExperience.duties[index]))),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
