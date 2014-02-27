package com.virtualsw

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ManageBooksService {
    static transactional = false

    def grailsApplication
    def grailsLinkGenerator

    String fullPath(String category = null) {

        String returnPath = grailsApplication.config.imageindirect.basePath
        String categoryUrl = category ? grailsApplication.config.imageindirect.category."${category}" : null

        if (categoryUrl) {
            if (categoryUrl.startsWith("/")) {
                returnPath = categoryUrl
            } else {
                returnPath += "/${categoryUrl}"
            }
        }
        return returnPath
    }

    File storeImage(MultipartFile multipartFile, String desiredName = null, String category = null, String catagoryPath) {
        if (!multipartFile) {
            return null
        }

        String storagePath = makeDirectoey(catagoryPath,multipartFile.originalFilename)
        def physicalFileName = desiredName ?: multipartFile.originalFilename
        File file = new File(storagePath, physicalFileName)
        multipartFile.transferTo(file)
        return file
    }

//    String makeStoragePath(String catagoryPath,String originalFilename) {
//        String path =catagoryPath+"/"+originalFilename
//        return path
//    }

    String makeDirectoey(String catagoryPath,String originalFilename) {
        originalFilename=originalFilename.replaceAll(" ","-")
        String storagePath =  catagoryPath+ "/" + originalFilename
        File file = new File(catagoryPath, originalFilename)
        file.mkdir()
        return storagePath
    }

    String imageLink(String imageName, String category) {
        grailsLinkGenerator.link(controller: 'imageIndirect', params: [imageName: imageName, category: category])
    }

    String lastResortImage() {
        grailsApplication.config.imageindirect.nophoto
    }
}

