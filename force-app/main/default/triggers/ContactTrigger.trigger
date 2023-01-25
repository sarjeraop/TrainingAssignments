trigger ContactTrigger on Contact (before insert, After Insert) {
    
   
   
    if(trigger.isInsert && trigger.isAfter){
        HandlerVoter.sendEmail(trigger.new);        
    }
    
    if(Trigger.isInsert && Trigger.isBefore  ){
        VoterTriggerHandlerFlow.checkBoxNotChecked(Trigger.new);
    }
    
    if( Trigger.isInsert && Trigger.isBefore ){
        VoterTriggerHandlerFlow.checkBoxChecked(Trigger.new);
    }
   
    
    
}
       // if(Trigger.isInsert && Trigger.isafter){
        
  /*   ContactTriggerHandlerClass.contactFlow(trigger.new);
    }
        if(Trigger.isInsert && Trigger.isBefore){ */
        
   //  ContactTriggerHandlerClass.contactCheckboxNotChecked(trigger.new);
   // }