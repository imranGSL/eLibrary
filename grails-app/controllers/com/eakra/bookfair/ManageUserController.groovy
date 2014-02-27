package com.eakra.bookfair

class ManageUserController {
    def manageuserService

    def index() {
        def username = "${session["loggedInUser"].username}"
        def authentication = User.findWhere(userName: username)
        if (authentication.role == "admin") {
            def anouncement = Anouncement.last()
            render(view: 'homeAdmin', model: [myobj: anouncement])
        } else {
            def anouncement = Anouncement.last()
            render(view: 'homeUser', model: [myobj: anouncement])
        }

    }

    def forwordToSignUp() {
        render(view: 'signup')
    }

    def signup() {
        def file = request.getFile('proPicture')
        String basePath = grailsApplication.config.imageindirect.basePath
        println(basePath)
        String originalFileName = file.originalFilename
        println(originalFileName)
        println(Profile.countByEmailId(params.emailId))
        if (Profile.countByEmailId(params.emailId) != 0 && Profile.countByUserId(params.userId) != 0) {
            flash.signUpMessage = "Please Provide a unique Email Id & User Id"
            render(view: 'signup')
//            def result = [success: true, message: "Please Provide a unique Email Id & User Id", wrongNumber: 2]
//            render result as JSON

        } else if (Profile.countByEmailId(params.emailId) != 0) {
            flash.signUpMessage = "Please Provide a unique Email Id "
            render(view: 'signup')
//            def result = [success: true, message: "Please Provide a unique Email Id ", wrongNumber: 1]
//            render result as JSON

        } else if (Profile.countByUserId(params.userId) != 0) {
            flash.signUpMessage = "Please Provide a unique User Id"
            render(view: 'signup')
//            def result = [success: true, message: "Please Provide a unique User Id ", wrongNumber: 1]
//            render result as JSON

        } else {
            User userInstance = new User()
            userInstance.userName = params.emailId
            userInstance.password = params.password
            userInstance.role = "user"
            Profile profileInstance = new Profile()
            profileInstance.firstName = params.firstName
            profileInstance.lastName = params.lastName
            profileInstance.emailId = params.emailId
            profileInstance.countryName = params.countryName
            profileInstance.userId = params.userId as Long
            profileInstance.password = params.password
            profileInstance.proPicture = manageuserService.proPictureStoragePath(file, params.userId, basePath) //"/" + "Client" + "/" + params.userId + "/" + originalFileName
            if (profileInstance.validate()) {
                if (manageuserService.save(profileInstance) && userInstance.save()) {
                    manageuserService.storeImage(file, basePath, params.userId)
                    flash.signUpMessage = "Login with User Name:" + params.emailId + " and Password:" + params.password
                    render(view: 'signup')
//                    def result = [success: true, message: "Login with User Name:" + params.emailId + " and Password:" + params.password + "", wrongNumber: 0]
//                    render result as JSON

                }

            }
        }

    }

    def save() {
        Profile profile = new Profile(params)
        if (profile.validate()) {
            manageuserService.save(profile)
        } else {
            if (Profile.countByEmailId(params.emailId) != 0 && Profile.countByEmailId(params.userName) != 0) {
                flash.message = "Please provide a unique Email Id & User Name"
            }
            if (Profile.countByUserName(params.userName) != 0) {
                flash.message = "Please provide a unique Email Id "
            }

        }

        render(view: 'userCreate')
    }

    def show() {
        if (Profile.countByEmailId(params.emailId) != 0) {
            render(view: 'adminSearchUser', model: [myobj: Profile.findByEmailId(params.emailId)])
        } else {
            render(view: 'adminSearchUser')
        }

    }

    def search() {
        def username = "${session["loggedInUser"].username}"
        def authentication = User.findWhere(userName: username)
        if (authentication.role == "admin") {
            render(view: 'adminSearchUser', model: [myobj: Profile.list()])
        } else {
            render(view: 'userSearchUser', model: [myobj: Profile.list()])
        }
    }


    def showSearchBy() {
        render(view: 'quicksearch')
    }

    def create() {
        render(view: 'createnewuser')
    }
}
