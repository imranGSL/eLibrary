package com.eakra.bookfair

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ManageuserService {

    def save(Profile profile) {
        profile.save()

    }
//}
    File storeImage(MultipartFile multipartFile, String basePath, String userId) {
        if (!multipartFile) {
            return null
        }

        String storagePath = basePath+"/"+"Client"+"/"+userId
        def physicalFileName = multipartFile.originalFilename
        File file = new File(storagePath, physicalFileName)
        multipartFile.transferTo(file)
        return file
    }

//    String makeStoragePath(String catagoryPath,String originalFilename) {
//        String path =catagoryPath+"/"+originalFilename
//        return path
//    }
    String proPictureStoragePath(MultipartFile multipartFile,String userId, String basePath){
        String storagePath="/"+"Client"+"/"+userId+"/"+(multipartFile.originalFilename)
        makeDirectoey(basePath,userId)
//        return "/"+"Client"+ "/"+firstName+"-"+lastName+"/"+
      return storagePath
    }


    def makeDirectoey(String bastPath, String userId) {
       if(Profile.count()==0){
           File clientDirectory=new File(bastPath,"Client")
           clientDirectory.mkdir()
       }
        File individualClientDirectory=new File(bastPath+"/"+"Client",userId)
        individualClientDirectory.mkdir()
    }

}
