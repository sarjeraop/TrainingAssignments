({
/**
 *@methodname               : ShowValue
 *@author                   : Sarjerao Pujari
 *@ObjectReferenced         : none
 *@param                    : component, event, helper
 *@description	            : this is method for get value from event and check 
 *@return	                  : none
*/
showValue :function(component, event, helper)
{
  var message = event.getParam("message");
  component.set("v.ButtonValue",message);
  if(message=='+')
  {
    component.set("v.operator","add");
  } if(message=='-')
  {
    component.set("v.operator","subtract");
  }if(message=='*')
  {
    component.set("v.operator","multiply");
  }if(message=='/')
  {
    component.set("v.operator","divide");
  }
  else
  if((Number.isInteger(parseInt(message))))
  {
    var checkVal=component.get("v.nummberOne");
    var checkOp=component.get("v.operator");
    if(checkVal==null || checkVal==undefined || checkOp==null
    ||checkOp==undefined)
    {
      var numberOne=component.get("v.nummberOne");
      if(numberOne!=undefined)
      {
        var numOne=numberOne+message;
        component.set("v.nummberOne",numOne);
        component.set("v.ButtonValue",numOne);
      }else
      {
      component.set("v.nummberOne",message);
      component.set("v.ButtonValue",message);
      }
    }else if(component.get("v.numberTwo")==null ||component.get("v.numberTwo")==undefined
    ||(component.get("v.nummberOne")!=null &&component.get("v.operator")!=null && message!='=' ) )
    {
      var numberTwo=component.get("v.numberTwo");
      if(numberTwo!=undefined)
      {
        var numTwo=numberTwo+message;
        component.set("v.numberTwo",numTwo);
        component.set("v.ButtonValue",numTwo);
      }else if(numberTwo==undefined ||component.get("v.operator")==null)
      {
        component.set("v.numberTwo",message);
        component.set("v.ButtonValue",message);
      }
    }
                
  }else if(message=='=')
  {
    var action = component.get('c.getResult');
    action.setParams({
                      "num1" :component.get("v.nummberOne"),
                      "operator":component.get("v.operator"),  
                      "num2":component.get("v.numberTwo")
                    });

action.setCallback(this, function(a)
{
  var state = a.getState();
  if(state == 'SUCCESS') 
{
  component.set('v.ButtonValue', a.getReturnValue());
  component.set('v.operator',null);
  component.set('v.numberTwo',null);
  component.set('v.nummberOne',a.getReturnValue());

  var appEvent = $A.get("e.c:FinalResultEvent");
  appEvent.setParams({
                       "FinalResult" :component.get("v.nummberOne")
                    });
 appEvent.fire();
}
});
$A.enqueueAction(action);
}
}
})