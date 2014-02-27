package com.eakra.bookfair

class ManageCategoryController {
    def manageCategoryService

    def index() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
//            def username = "${session["loggedInUser"].username}"
//            def authentication = User.findWhere(userName: username)
//            if (authentication.role == "admin") {
                render(view: 'addCategory')
//            }else{
//                flash.accessMessage="Sorry "+username+" This is Only For Admin Access"
//                render(view: '/manageUser/accessMessage')
            }

        }



    def save() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            def categoryName = params.catagoryName
            def file = request.getFile('catagoryIcon')
            Catagory catagoryInstance = new Catagory()

            if (Catagory.countByCatagoryName(categoryName) != 0) {
                println("afdsafsd")
                flash.message = categoryName + " Category Is Already Exist"
                render(view: 'addCategory')
            } else {
                println("Yes")
                String catagoryName = params.catagoryName
                String originalFilename = file.originalFilename
                originalFilename = originalFilename.replaceAll(" ", "-")
                catagoryInstance.catagoryName = catagoryName.replaceAll(" ", "-")
                catagoryInstance.catagoryIcon = originalFilename

                catagoryInstance.categotyPath = manageCategoryService.makeStoragePath(params.catagoryName)
                catagoryInstance.catagoryIconPath = manageCategoryService.makeCatagoryIconPath(params.catagoryName)
                println(grailsApplication.config.imageindirect.basePath + "/" + params.catagoryName)
                manageCategoryService.storeImage(file, params.catagoryName, Catagory.count)
                catagoryInstance.save()
                flash.message = categoryName + " Category Is Successfully Added"
                render(view: 'addCategory')
            }
        }

    }
}
