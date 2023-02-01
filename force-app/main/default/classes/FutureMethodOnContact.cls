/*
* @classname      FutureMethodOnContact
* @author         Sarjerao
* @date           22-01-2023
* @description    This is Apex Class For Implement Future Method
* 
* @modificationlog
* 1.Sarjerao   01-02-2023  Add Code Comments
*/
global class FutureMethodOnContact {

/*
* @methodname         createContact
* @author             Sarjerao 
* @group              none
* @param              none
* @description        This method is used for Insert contact.
* @return             Void
*/
  public static void createContact(){
        Contact con = new Contact();
        con.FirstName = 'Sarjerao';
        con.LastName = 'Pujari';
        con.Is_Family_Head__c = true;
        con.Email ='standardTestorg@gmail.com';
        con.MailingCountry = 'India';
        con.MailingState = 'Maharashtra';
      //  con.Skip_Validation_Rule__c=true;
        Insert con;
        createUserFromContact(con.FirstName, con.LastName, con.Email );
        system.debug(con);
    }

/*
* @methodname         createUserFromContact
* @author             Sarjerao 
* @group              none
* @param              none
* @description        This is future method used for Insert user when new contact is insert.
* @return             Void
*/
    @future
    public static void createUserFromContact(string FirstName, string LastName, string Email){
        Profile prof = [select id from profile where name LIKE 'standard%' limit 1];
        User user = new User();
        user.FirstName =FirstName;
        user.LastName =LastName;
        user.Alias = 'Alias';
        user.Email =Email;
        user.IsActive =True;
        //user.ProfileId ='00e5h000004KDw4AAG';
        user.profileId = prof.id;
        datetime dt = DateTime.now();
        user.Username =Email;
        user.TimeZoneSidKey = 'America/Los_Angeles';
        user.LocaleSidKey = 'en_US';
        user.EmailEncodingKey = 'UTF-8';
        user.LanguageLocaleKey = 'en_US'; 

        insert user;
       // system.debug(user);
    }    
}