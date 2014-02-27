package com.eakra.bookfair

class Profile {
    String firstName
    String lastName
    String emailId
    String countryName
    Long userId
    String password
    String proPicture

    static constraints = {
        emailId(email: true, unique: true)
        userId(unique: true)
    }
    def beforeInsert = {
//        password = password.encodeAsSHA()
    }

}
