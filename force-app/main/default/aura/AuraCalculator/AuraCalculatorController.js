({
/* 
 * @methodname                : Buttonpress
 * @author                    : Sarjerao Pujari
 * @ObjectReferenced          : none
 * @param                     : component, event, helper
 * @description               : This Press method is used for get Button value From button And Pass To The Veriable while fireing event .
 * @return                    : none 
 */
   Buttonpress : function(component, event, helper) 
   {
        var buttonName = event.getSource().get("v.name");
        var cmpEvent = component.getEvent("DisplayVaueEvent");
        cmpEvent.setParams({"message" : buttonName });
        cmpEvent.fire();
    } 
})