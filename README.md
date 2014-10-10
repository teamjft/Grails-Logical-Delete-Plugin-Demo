Grails-Logical-Delete-Plugin-Demo
=================================

Demo project for showing usage of logical delete plugin

Please click here for blog [post](http://www.jellyfishtechnologies.com/blog/grails-logical-delete-plugin).

I used bootstrap-kickstarter plugin for UI. The application has 2 domain classes named as User and Department. I have created few
 department and users in bootstrap and you will be able to see their count on homepage. Now try to delete few records from the CRUD view
 provided to you. You will notice that the GORM count will change but database count will remain same.

 This has been achieved by marking User domain with @LogicalDelete notation which makes sure that data never gets deleted from database.

 Steps to run application :

 1. Clone it on your system
 2. Grails run-app
 3. Open home page and you will see 70 records both for GORM and SQL
 4. Navigate and User CRUD and delete a record.
 5. After delete come back to home page and you will see a difference of one record.

 Hope it helps
