({

/* * @methodname         press
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This Press method is used for get Button value From button And Pass To The Veriable while fireing event .
   * @return             none */
    press : function(component, event, helper) {
        var buttonName = event.getSource().get("v.name");
        console.log('buttonName=='+buttonName);
        // Get the component event by using the
        // name value from aura:registerEvent
        var cmpEvent = component.getEvent("DisplayVaueEvent");
        cmpEvent.setParams({"message" : buttonName });
        cmpEvent.fire();
        console.log('in press button event');   
    } 
})