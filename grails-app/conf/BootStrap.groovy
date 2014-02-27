import com.eakra.bookfair.User
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->
                 def admin=new User(userName: "imran09049@gmail.com",password: "admin",role: "admin")
                 admin.save()
                 if(admin.hasErrors()){
                     println(admin.errors)
                 }
    }
    def destroy = {
    }
}
