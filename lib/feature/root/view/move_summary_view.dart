import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MoveSummaryView extends StatelessWidget {
const MoveSummaryView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold( appBar: AppBar(
        title: Text('Taşıma Özeti',style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),),
      ),);
  }
}