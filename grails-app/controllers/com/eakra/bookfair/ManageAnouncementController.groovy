package com.eakra.bookfair

class ManageAnouncementController {

    def index() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            render(view: 'anouncement')
        }
    }

    def save() {
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else {
            println(params.message)
            Anouncement anouncement=new  Anouncement()
            anouncement.message = params.message
            flash.anouncementMessage="Successfully published an Anouncement"
            anouncement.save()
            render(view: 'anouncement')
        }

    }
    def show(){
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else{
            render(view: 'displayAnouncement')
        }
    }

    def jquery(){
        if (!session["loggedInUser"]) {
            redirect(controller: 'loginout', action: 'failure')
        } else{
            render(view: 'usingJquery')
        }
    }

}
