/**
 * @Triggername           : ContactTrigger
 * @author                : Sarjerao Pujari
 * @date                  : 20-Oct-2023
 * @description           : This is Apex Trigger On Contact Object

 * @modificationlog
 * 1. Sarjerao Pujari        02-Feb-2023       Add Code Comments
 */
trigger ContactTrigger on Contact (before insert, After Insert)
{
    if(trigger.isInsert && trigger.isAfter)
    {
        HandlerVoter.sendEmail(trigger.new);
    }
    if(Trigger.isInsert && Trigger.isBefore)
    {
        VoterTriggerHandlerFlow.checkBoxNotChecked(Trigger.new);
    }
    if(Trigger.isInsert && Trigger.isBefore)
    {
        VoterTriggerHandlerFlow.checkBoxChecked(Trigger.new);
    }
}