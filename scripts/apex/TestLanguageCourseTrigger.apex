@isTest
private class TestLanguageCourseTrigger {
    @isTest static void TestInsertLanguageCourse() {
        Language_Course_Instructor__c i = new Language_Course_Instructor__c(Name='Test instructor');

        insert i;

        Language_Course_Designer__c d = new Language_Course_Designer__c(Name='Test designer');

        insert d;

        Language_Course__c c = new Language_Course__c(Name='Test course', Course_Instructor__c=i.id, Language_Course_Designer__c=d.id);

        insert c;
        
        Test.startTest();
        Database.DeleteResult result = Database.delete(c, false);
        Test.stopTest();

        System.assert(result.isSuccess());
    }
}