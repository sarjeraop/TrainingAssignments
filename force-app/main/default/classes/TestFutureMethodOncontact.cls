/*
* @ classname         : TestFutureMethodOncontact
* @ author            : Sarjerao Pujari
* @ date              : 22-Oct-2022
* @ description       : This is Test Class of Apex Class For Implement Future Method

* @ modificationlog
* 1.Sarjerao Pujari       01-Feb-2023        Add Code Comments
*/
@isTest
public class TestFutureMethodOncontact 
{

/*
* @ methodname              : createContactTest
* @ author                  : Sarjerao Pujari
* @ ObjectReferenced        : none
* @ param                   : none
* @ description             : This Test Method is used to test on Insert contact.
* @ return                  : Void
*/
  @isTest
  static void createContactTest()
  {
    Contact c = new Contact();

    c.FirstName='FName1';
	  c.LastName='LName1';
    c.Email='FName1@gmail.com';
    c.Is_Family_Head__c=True;
    c.MailingCity='Kolhapur';
    c.MailingState='MH';
    c.MailingCountry='IN';
    c.MailingPostalCode='591239';
    c.Skip_Validation_Rule__c=true;
        
    Insert c;
        
    FutureMethodOnContact.createContact();
    FutureMethodOnContact.createUserFromContact(c.FirstName, c.LastName, c.Email);
        
  }
    
}