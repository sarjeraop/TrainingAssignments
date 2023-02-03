/**
 * @ classname            : HandlerVoter 
 * @ author               : Sarjerao Pujari
 * @ date                 : 22-Oct-2022
 * @ description          : This is a TriggerHandler Apex Class of TriggerOncontact trigger uesd for send mail To family
                            Head when new voter is added

 * @ modificationlog
 * 2.Sarjerao Pujari       01-Feb-2023       Add Code Comments
 */
public  class HandlerVoter 
{

/**
 * @ methodname               : sendEmail
 * @ author                   : Sarjerao Pujari
 * @ ObjectReferenced         : Contact
 * @ param                    : List<Contact>con
 * @ description              : This method is used for send email to family head.
 * @ return                   : Void
 */
  public static void sendEmail(List<Contact>con)
  {
    Set<Id> FamilyHeadId = New Set<Id>();
    List<Messaging.SingleEmailMessage> mails =new List<Messaging.SingleEmailMessage>();
    for(Contact v : con)
    {
      FamilyHeadId.add(v.Family_Head_Name__c);       
    }
    List<string> emailList = new List<string>();
    for(Contact x : [select Id, Email From Contact Where Id IN:FamilyHeadId])
    {
      emailList.add(x.Email);
    }
      // Step 1: Create a new Email
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      // Step 2: Set list of people who should get the email
      mail.setToAddresses(emailList);
      // Step 3. Set email contents - you can use variables!
      for(Contact v : con)
    {
      mail.setSubject('About New Voter'); //Subject of the mail and the body of the mail
      String body = 'Dear '+v.FirstName+' '+ v.LastName +', that new voter is added'; 
      mail.setHtmlBody(body);
      // Step 4. Add your email to the master list
      mails.add(mail);
    }
      // Step 5: Send all emails in the master list
      //Messaging.sendEmail(mails);
  }
}