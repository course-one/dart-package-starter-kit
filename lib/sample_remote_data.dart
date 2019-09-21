import 'dart:async';

// import local files
import './src/classes.dart';
import 'src/functions.dart'; // without optional ./

// export classes to the public
export 'src/classes.dart';

// URL to fetch users from
// This is a private variable to the library.
String _fetchUsersURL = 'https://reqres.in/api/users';

/**
 * This function returns an iterator of User objects.
 */
Future<Iterable<User>> getUsers() async {
  var users = await fetchUserList( _fetchUsersURL );

  // return Iterable object
  return users.map( ( user ) {
    return User(
      user[ 'id' ],
      user[ 'first_name' ],
      user[ 'last_name' ]
    );
  } );
}