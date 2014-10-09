package com.jft

import com.nanlabs.grails.plugin.logicaldelete.LogicalDelete

@LogicalDelete
class User {
    String name
    Integer age

    Date	dateCreated
    Date	lastUpdated

    static belongsTo = [department:Department]

    static constraints = {
        age(range: 18..65)
    }
}
