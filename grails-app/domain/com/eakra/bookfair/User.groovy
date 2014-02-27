package com.eakra.bookfair

class User {

    String userName
    String password
    String role = "user"
    static constraints = {
        userName(email: true,unique: true)
        role(inList:["admin", "user"])
    }
    static transients = ['admin']
    boolean isAdmin(){
        return role == "admin"
    }

}
