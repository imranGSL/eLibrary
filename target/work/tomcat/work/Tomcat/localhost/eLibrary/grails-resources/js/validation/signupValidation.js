/**
 * Created with IntelliJ IDEA.
 * User: Mohammed Imran
 * Date: 1/30/14
 * Time: 12:46 AM
 * To change this template use File | Settings | File Templates.
 */

function signupValidation(signupForm) {


    var emailId = signupForm.emailId.value

    var atposition=emailId.indexOf("@");
    var dotposition=emailId.lastIndexOf(".");

    if (atposition>1 || dotposition+4!=emailId.length)
    {
        alert("Not a valid e-mail address");
        signupForm.emailId.focus();
        return false;
    }

}