package com.mail

class MailTagLib {
//    static defaultEncodeAs = 'html'
    static namespace = "text"

    def newLine = {
        out << '\n'
    }
    //static encodeAsForTags = [tagName: 'raw']
}
