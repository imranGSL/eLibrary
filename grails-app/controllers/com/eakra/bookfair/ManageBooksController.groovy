package com.eakra.bookfair

class ManageBooksController {
    def manageBooksService


    def index() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
//            def username = "${session["loggedInUser"].username}"
//            def authentication = User.findWhere(userName: username)
//            if (authentication.role == "admin") {
            def categoryList = Catagory.list()
            render(view: 'addABook', model: [myobj: categoryList])
//            }else{
//                flash.accessMessage="Sorry "+username+" This is Only For Admin Access"
//                render(view: '/manageUser/accessMessage')
//            }

        }
    }

    def save() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
//            def username = "${session["loggedInUser"].username}"
//            def authentication = User.findWhere(userName: username)

            def file = request.getFile('book')
            Books booksInstance = new Books()

            if (Books.countByBookId(params.bookId as Long) != 0) {
                flash.bookMessage = params.bookId + " .This Book ID Is Already Exist"
                render(view: 'addABook')
            } else {
                def catagorypath = Catagory.get(params.categoryName as Long)
                String originalFilename = file.originalFilename
                originalFilename = originalFilename.replaceAll(" ", "-")
                booksInstance.booksName = originalFilename
                booksInstance.authorName = params.authorName
                booksInstance.discription = params.discription
                booksInstance.categoryName = catagorypath.catagoryName
                booksInstance.catagoryID = params.categoryName as Long
                booksInstance.bookId = params.bookId as Long
                booksInstance.bookStorageFullPath = manageBooksService.storeImage(file, catagorypath.categotyPath)//catagorypath.categotyPath + "/" + originalFilename
                booksInstance.bookStoragePath = catagorypath.catagoryIconPath + "/" + originalFilename
                booksInstance.bookSize = Math.ceil((file.size) / 1024) as Long
                booksInstance.bookIcon = catagorypath.catagoryIconPath + "/" + catagorypath.catagoryIcon
                booksInstance.save()
                flash.bookMessage = "Successfully Add the " + originalFilename + " Book in the Book Store"
                redirect(action: 'index')
            }
        }
    }

    def forwardToSearch() {
        def bookList = Books.list()
        def categoryList = Catagory.list()
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            def username = "${session["loggedInUser"].username}"
            def authentication = User.findWhere(userName: username)
            if (authentication.role == "admin") {
                render(view: 'adminSearchBooks', model: [myobj: categoryList, myobj1: bookList])
            } else {
                render(view: 'userSearchBook', model: [myobj: categoryList, myobj1: bookList])
            }
        }
    }

    def search() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            def result = Books.findAllByCatagoryID(params.categoryName)
            def categoryList = Catagory.list()
            render(view: 'adminSearchBooks', model: [myobj1: result, myobj: categoryList])
        }
    }

    def download() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            def books = Books.get(params.id as Long)
            String booksName = (books.booksName).replaceAll("-", " ")
            println(grailsApplication.config.imageindirect.basePath + "${books.bookStoragePath}" + "/" + booksName)
            println(params.id)
            def files = new File(grailsApplication.config.imageindirect.basePath + "${books.bookStoragePath}" + "/" + booksName)
//            println(files)
            if (files.exists()) {
                response.setContentType("application/octet-stream")
                response.setHeader("Content-disposition", "attachment;filename=${books.booksName}")
                response.outputStream << files.bytes
            } else {
                println("I am not a file")
                render(view: 'adminSearchBooks')
            }
        }

    }

    def delete() {
        def books = Books.get(params.id as Long)
        def file = new File(grailsApplication.config.imageindirect.basePath + "${books.bookStoragePath}").deleteDir()
        println(grailsApplication.config.imageindirect.basePath + "${books.bookStoragePath}")
        if (file) {
            flash.bookMessage = "FIle not found"
            books.delete()
            def categoryList = Catagory.list()
            render(view: 'adminSearchBooks', model: [myobj: categoryList])
        } else {
            flash.bookMessage = "FIle not found"
            render(view: 'adminSearchBooks')
            return
        }

    }

}
