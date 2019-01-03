package projectofinal.web.store

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN","ROLE_USER","ROLE_ANONYMOUS"])
class IndexController {

    def index() {

    }

    def admin(){

    }

    def articulos(){

    }

}
