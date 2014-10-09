package com.jft

import grails.transaction.Transactional

/**
 * BootstrapService
 * A service class encapsulates the core business logic of a Grails application
 */
@Transactional
class BootstrapService {

    def generateTestData() {
        Department department
        ['Sales','Marketing','Engineering','Customer Support','R&D','Accounts','TeleMarketing'].each{dep->
            department = new Department(name:dep)
            10.times {
                department.addToUsers(new User(name:"User_${it}",age:it+20))
            }
            department.save()
        }
    }
}
