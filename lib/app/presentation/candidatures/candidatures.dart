import 'package:flutter/material.dart';
import 'package:gotaf/app/core/widgets/footer_widget.dart';
import 'package:gotaf/app/core/widgets/list_job_candidate.dart';

class CandidaturePage extends StatelessWidget {
  const CandidaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Acceuil > Mes Candidatures"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "4 Candidatures(s) envoyée(s)",
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  ListJobCandidateWidget(),
                  ListJobCandidateWidget(),
                  ListJobCandidateWidget(),
                  ListJobCandidateWidget(),
                  FooterWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
