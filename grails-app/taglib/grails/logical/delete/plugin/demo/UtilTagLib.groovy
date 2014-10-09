package grails.logical.delete.plugin.demo

import com.jft.User
import groovy.sql.Sql

/**
 * UtilTagLib
 * A taglib library provides a set of reusable tags to help rendering the views.
 */
class UtilTagLib {
    static defaultEncodeAs = 'html'
    static namespace = "util"
    //static encodeAsForTags = [tagName: 'raw']
    def dataSource

    def userInDatabase = {attrs->
        final Sql sql = new Sql(dataSource)
        def result = sql.firstRow("select count(*) from user")
        out << result
    }

    def userThroughGorm = {attrs->
        out << User.count()
    }
}
