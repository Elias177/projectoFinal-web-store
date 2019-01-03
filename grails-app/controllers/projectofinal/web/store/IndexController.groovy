package projectofinal.web.store

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN","ROLE_USER","ROLE_ANONYMOUS"])
class IndexController {

    def index() {

        render(view: "/index")
    }

    def admin(){

    }

}