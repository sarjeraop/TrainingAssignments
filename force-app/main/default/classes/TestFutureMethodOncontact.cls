@isTest
public class TestFutureMethodOncontact {
    @isTest
    static void createContactTest(){
    Contact c = new Contact();
        c.FirstName='FName1';
	    c.LastName='LName1';
        c.Email='FName1@gmail.com';    
        
        c.Is_Family_Head__c=True;
        c.MailingCity='Kolhapur';
        c.MailingState='MH';
        c.MailingCountry='IN';
        c.MailingPostalCode='591239';
       // c.Skip_Validation_Rule__c=true;
        Insert c;
        
        FutureMethodOnContact.createContact();
        FutureMethodOnContact.createUserFromContact(c.FirstName, c.LastName, c.Email);
        
    }
    
}