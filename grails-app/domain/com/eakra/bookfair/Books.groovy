package com.eakra.bookfair

class Books {
    String booksName
    String authorName
    String discription
    String categoryName
    String bookIcon
    Long catagoryID
    Long bookSize
    Long bookId
    String bookStorageFullPath
    String bookStoragePath

    static constraints = {
        bookId(unique: true)
    }
}
