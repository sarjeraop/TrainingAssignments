
/**	@TriggerName	:	 VoterTriggerHandlerFlow
  *	@author	:	Sarjerao
  *	@date	:	1-Feb-2023
  *	@description	:	This Is Trigger On Contact Object
  *	@modificationlog
  *	1.Sarjerao    1-Feb-2023    Add code Cooments
*/
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