package com.eakra.bookfair

class Anouncement {
    String message
    static constraints = {
       message(maxSize: 100)
    }
}
