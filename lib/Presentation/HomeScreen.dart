import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screl_test/Application/HomeScreenBloc/bloc/home_bloc.dart';
import 'package:screl_test/Presentation/userDetail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(HomeEvent.started());
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Users',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [Row(

          
            children: [
              Expanded(child: TextFormField()),SizedBox(width: 16,),
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
          ),
            
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return ListView.separated(
                                itemBuilder:(context, index) {
                                  return ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                                        return userDetail(name1: state.resultList[index]['name'], username1: state.resultList[index]['username'], email1: state.resultList[index]['email'], address1: state.resultList[index]['address'].toString(), website1: state.resultList[index]['website'], company1: state.resultList[index]['company'].toString(), phone1:  state.resultList[index]['phone']);
                                      },));
                                    },
                                      title: Text('${state.resultList[index]['name']}'),
                                  );
                                },
                                separatorBuilder:(context, index) {
                                  return Divider();
                                },
                                itemCount:state.resultList.length );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
