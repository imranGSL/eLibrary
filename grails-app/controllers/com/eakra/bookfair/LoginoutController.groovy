package com.eakra.bookfair

class LoginoutController {
    def manageuserService
    def mailService

    def index() {

        render(view: '/manageUser/signup')
    }

    def authentication() {
        if (params.emailId != null && params.password != null) {
            if (User.countByUserNameAndPassword(params.emailId, params.password) == 0) {
                flash.loginmessage = "Please Provide A valid Email Id & Password"
                redirect(action: 'failure')
            } else {
                Map user = ["username": params.emailId, "password": params.password, "logTime": new Date(), "remoteIp": request.getRemoteAddr()]
                session["loggedInUser"] = user
                def emailId = params.emailId
                try {
                    mailService.sendMail {
                        to "${emailId}"
                        from "bookfair@gmail.com"
                        subject "LogIn Information"
                        body "Hello ${session["loggedInUser"].username} Welcome To Book Fair 14.Your Login Information Is Given Bellow \n UserName : ${session["loggedInUser"].username} \n Login Time : ${session["loggedInUser"].logTime} \n Remote IP : ${session["loggedInUser"].remoteIp} \n Thank You \n \n Best Regards \n Mohammed Imran Hossain."
                    }
                } catch (Exception e) {}

//                session.user=params.emailId
                redirect(action: 'success')
            }
        } else {
            render(view: '/index')
        }

    }

    def success() {

        redirect(controller: 'manageUser', action: 'index')
    }

    def failure() {
        render(view: '/index')
    }


    def logout() {
        println(session["loggedInUser"])
        session["loggedInUser"] = null
        session.invalidate()
        render(view: '/index')
    }

}
