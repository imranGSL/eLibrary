import java.security.MessageDigest

/**
 * Created with IntelliJ IDEA.
 * User: Mohammed Imran
 * Date: 1/3/14
 * Time: 10:18 PM
 * To change this template use File | Settings | File Templates.
 */
class SHACodec {
    static encode = { target ->
        MessageDigest md = MessageDigest.getInstance('SHA')
        md.update(target.getBytes('UTF-8'))
        return new String(md.digest()).encodeAsBase64()
    }

}
