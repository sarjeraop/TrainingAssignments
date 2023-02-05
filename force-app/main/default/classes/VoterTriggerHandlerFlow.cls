/**
 * @ classname            : VoterTriggerHandlerFlow
 * @ author               : Sarjerao Pujari
 * @ date                 : 20-Oct-2022
 * @ description          : This is Apex class is trigger Handler of TriggerOnContact Trigger For Flow Of FamilyMember And FamilyHead

 * @ modificationlog
 * 1. Sarjerao Pujari    :  05-Feb-2023       Add Code Comments
 */
public class VoterTriggerHandlerFlow 
{

/**
 * @ methodname            : checkBoxChecked
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : Contact, Account
 * @ param                 : List<Contact>
 * @ description           : This method is used, When FamilyHead Is Inserted Then Pupulate FamilyName On Voter And Create New Family on Account Object
 * @ return                : Void
 */
public Static void checkBoxChecked(List<Contact> con )
{
  List<Account> accList = new List<Account>();
  List<String> accountName = new List<String>();

  For(Contact c : con)
  {
    if(c.is_family_head__c == true )
    {
      Account a = new Account();
      a.Name= c.LastName;
      a.BillingCity = c.MailingCity;
      a.BillingState = c.MailingState;
      a.BillingCountry = c.MailingCountry;
      accList.add(a);
      accountName.add(a.id);
    }
  }
    insert accList; 
    //populating the familyhead family name on voter record
    set<id>accIdSet=new set<id>();
    for(account a:accList)
    {
      accIdset.add(a.Id);
    }
    List<Contact> conList = [Select id, LastName, AccountId From Contact Where AccountId =:accIdSet];
    List<Contact> updatedConlList = new List<Contact>();
    for(Contact cc : con)
    {
      for(Account ac : accList)
      {
        cc.AccountId = ac.Id ;
      }
    }
      Update updatedConlList;
}

/**
 * @ methodname            : checkBoxNotChecked
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : Contact, Account
 * @ param                 : List<Contact>
 * @ description           : This method is used, When FamilyMember Is Inserted Then Pupulate FamilyName On Voter 
 * @ return                : Void
 */
public Static void checkBoxNotChecked(List<Contact> con1 )
  {
    List<Contact> updateCon =([Select Id, Name,	AccountId, is_family_head__c from Contact where Id =:con1]);
    for(Contact ct : con1)
    {
      if(ct.is_family_head__c == False && ct.family_head__c != Null && ct.AccountId == Null)
      {
        ct.AccountId = ct.LastName;
      }
      updateCon.add(ct);
    }
  }
}