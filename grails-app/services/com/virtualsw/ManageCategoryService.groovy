package com.virtualsw

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ManageCategoryService {

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

    File storeImage(MultipartFile multipartFile, String desiredName = null, String category = null, String catagoryName, Integer storageQuantity) {
        if (!multipartFile) {
            return null
        }

        if (storageQuantity == 0) {
            makeRootDirectoey()
            String storagePath = makeDirectoey(catagoryName)
            def physicalFileName = desiredName ?: multipartFile.originalFilename
            File file = new File(storagePath, physicalFileName)
            multipartFile.transferTo(file)
            return file
        } else {
            String storagePath = makeDirectoey(catagoryName)
            def physicalFileName = desiredName ?: multipartFile.originalFilename
            File file = new File(storagePath, physicalFileName)
            multipartFile.transferTo(file)
            return file
        }


    }

    def makeRootDirectoey() {
        File file = new File(grailsApplication.config.imageindirect.basePath, "Catagory")
        file.mkdir()
    }

    String makeStoragePath(String catagoryName) {
        String path = grailsApplication.config.imageindirect.basePath + "/" + "Catagory" + "/" + catagoryName

        return path
    }

    String makeCatagoryIconPath(String catagoryName){
        String path =  "/" + "Catagory" + "/" + catagoryName

        return path
    }
    String makeDirectoey(String catagoryName) {
        String storagePath = grailsApplication.config.imageindirect.basePath + "/" + "Catagory" + "/" + catagoryName
        String catagoryPath = grailsApplication.config.imageindirect.basePath + "/" + "Catagory"
        File file = new File(catagoryPath, catagoryName)
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
