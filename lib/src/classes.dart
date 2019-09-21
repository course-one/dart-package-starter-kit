/**
 * This file contains classes used in this library.
 */
class User {
  int id;
  String firstName, lastName;

  // default constructor
  User( this.id, this.firstName, this.lastName );

  // instance method
  String getFullName() {
    return '${ this.firstName } ${ this.lastName }';
  }
}