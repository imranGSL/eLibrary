package com.eakra.bookfair

class Catagory {
    String catagoryName
    String catagoryIcon
    String categotyPath
    String catagoryIconPath

    static constraints = {
        catagoryName(unique: true)
    }
}
