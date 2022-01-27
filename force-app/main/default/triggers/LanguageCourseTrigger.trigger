trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    EmailManager.sendMail('medinacantosangel@gmail.com', 'Trailhead Trigger Tutorial','Trigger activado');
    EmailManager.sendMail('christian.valenzuelamoreno@gmail.com', 'Trailhead Trigger Tutorial','Trigger activado');
}