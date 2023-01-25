public class VoterTriggerHandlerFlow {
    
    //Flow of Contact written in trigger(Before Insert)
    public Static void checkBoxChecked(List<Contact> con ){
        List<Account> accList = new List<Account>();
        List<String> accountName = new List<String>();
        
        For(Contact c : con){
            //if is family head checkbox is checked then populate family name and create new family on account        
            if(c.is_family_head__c == true ){
                Account a = new Account();
                a.Name= c.LastName;
              //  a.Name = c.LastName;
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
        for(account a:accList){
            accIdset.add(a.Id);
        }
        List<Contact> conList = [Select id, LastName, AccountId From Contact Where AccountId =:accIdSet];
        List<Contact> updatedConlList = new List<Contact>();
        
     /*   for(Contact cc : conList){
            for(Account ac : accList){
                cc.AccountId = ac.Id ;
                updatedConlList.add(cc);
            }
        }  */
        
        for(Contact cc : con){
            for(Account ac : accList){
                cc.AccountId = ac.Id ;
               // updatedConlList.add(cc);
            }
        }
        Update updatedConlList;
    }
    
    //checkbox unchecked method    
    public Static void checkBoxNotChecked(List<Contact> con1 ){
        //if any family member is inserting then  populate the family Name on it   //&& c.family_heads__c != Null
        List<Contact> updateCon =([Select Id, Name,	AccountId, is_family_head__c from Contact where Id =:con1]);
        for(Contact ct : con1){
            if(ct.is_family_head__c == False && ct.family_head__c != Null && ct.AccountId == Null){
                
                   ct.AccountId = ct.LastName;
                  // ct.is_family_head__c = False; 
                    
            }  
            updateCon.add(ct);
        }
       // Update updateCon;
        // update updateCon;
        /*   for(Contact c1 : updateCon){
c1.is_family_head__c = False;
updateCon.add(c1);
}
Update updateCon; */
    }
}