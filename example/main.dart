import 'package:sample_remote_data/sample_remote_data.dart';

void main() async {

  // User class is exported from `main.dart` file
  Iterable<User> users = await getUsers();

  // for each item in users, print full name
  users.forEach( ( user ) {
    print( "User ${ user.id } is ${ user.getFullName() }" );
  } );
}