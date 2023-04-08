import '/blocs/app_blocs.dart';
import '/blocs/app_events.dart';
import '/blocs/app_states.dart';
import '/model/user_model.dart';
import '/repo/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//final UserBloc userBloc = UserBloc(UserRepository());

class UsersPage extends StatelessWidget {
  const UsersPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(UserRepository()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(),
        body: blocBody(context),
      ),
    );
  }

  Widget blocBody(BuildContext context) {
//    context.read<UserBloc>().add(LoadUserEvent());
//    BlocProvider.of<UserBloc>(context).add(LoadUserEvent());
    return
//      BlocProvider(
//      create: (context) => UserBloc(
//        UserRepository(),
//      )..add(LoadUserEvent()),
//      child:
      BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserLoadedState) {
            List<User> userList = state.users;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                            title: Text(
                              '${userList[index].name}  ${userList[index].phone}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              '${userList[index].email}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            trailing: const Icon(Icons.more_vert),
                            leading: IconButton(
                              onPressed: () {
//                                BlocProvider.of<UserBloc>(context).add(NewUserEvent());
                              },
                              icon: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'http://science-art.pro/experts/denisenko.jpg'
//                                  userList[index].avatar.toString()
                              ),
                            ),
                            )
                        )),
                  );
                });
          }
          if (state is UserErrorState) {
            return const Center(
              child: Text("Error"),
            );
          }
          return Container();
        },
//      ),
    );
  }
}
