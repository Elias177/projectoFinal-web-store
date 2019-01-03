package projectofinal.web.store

import grails.plugin.springsecurity.annotation.Secured


@Secured(["ROLE_ADMIN","ROLE_USER"])
class CartController {

    def index() {
        render(view: 'index')
    }
}
