({
    showValue : function(cmp, event) {
        var message = event.getParam("message");
        console.log('message$$'+message);
        cmp.set("v.ButtonValue",message);
        if(message=='+'){
            cmp.set("v.operator","add");
            console.log('operator$$'+cmp.get("v.operator"));
        } if(message=='-'){
            cmp.set("v.operator","subtract");
            console.log('operator$$'+cmp.get("v.operator"));
        }if(message=='*'){
            cmp.set("v.operator","multiply");
            console.log('operator$$'+cmp.get("v.operator"));
        }if(message=='/'){
            cmp.set("v.operator","divide");
            console.log('operator$$'+cmp.get("v.operator"));
        }
        else
            if((Number.isInteger(parseInt(message)))){ // To Check The Number Is Integer Or not--method in javascript number.isInteger
                var checkVal=cmp.get("v.nummberOne");
                var checkOp=cmp.get("v.operator");
                //console.log('checkVal'+checkVal);
                if(checkVal==null || checkVal==undefined || checkOp==null
                   ||checkOp==undefined){
                    var numberOne=cmp.get("v.nummberOne");
                    if(numberOne!=undefined){
                        var numOne=numberOne+message;
                        cmp.set("v.nummberOne",numOne);
                        cmp.set("v.ButtonValue",numOne);
                    }else{
                        cmp.set("v.nummberOne",message);
                        cmp.set("v.ButtonValue",message);
                    }
                    console.log('numberOne@@'+numberOne);
                    console.log('numberOne@@'+cmp.get("v.nummberOne"));
                }else if(cmp.get("v.numberTwo")==null ||cmp.get("v.numberTwo")==undefined
                         ||(cmp.get("v.nummberOne")!=null &&cmp.get("v.operator")!=null && message!='=' ) ){
                    var numberTwo=cmp.get("v.numberTwo");
                    console.log('====='+numberTwo);
                    if(numberTwo!=undefined){
                        var numTwo=numberTwo+message;
                        cmp.set("v.numberTwo",numTwo);
                        console.log('numTwo=='+numTwo);
                        cmp.set("v.ButtonValue",numTwo);
                    }else if(numberTwo==undefined ||cmp.get("v.operator")==null){
                        cmp.set("v.numberTwo",message);
                        cmp.set("v.ButtonValue",message);
                        console.log('in else block=='+message);
                    }
                    // console.log('numberTwo=='+numberTwo);
                    // cmp.set("v.numberTwo",message);
                    // cmp.set("v.ButtonValue",message);
                    console.log('numberTwo=='+cmp.get("v.numberTwo"));
                    console.log('numberOne=='+cmp.get("v.nummberOne"));
                    console.log('operator=='+cmp.get("v.operator"));
                }
              
            }else if(message=='='){
                console.log('method called');
                var action = cmp.get('c.getResult');
                console.log('method called');
                action.setParams({
                    "num1" :cmp.get("v.nummberOne"),
                    "operator":cmp.get("v.operator"),  
                    "num2":cmp.get("v.numberTwo")
                });
                action.setCallback(this, function(a){
                    var state = a.getState(); // get the response state
                    if(state == 'SUCCESS') {
                        console.log('a.getReturnValue()=='+a.getReturnValue());
                        cmp.set('v.ButtonValue', a.getReturnValue());
                       // cmp.set('v.nummberOne',null);
                        cmp.set('v.operator',null);
                        cmp.set('v.numberTwo',null);
                        cmp.set('v.nummberOne',a.getReturnValue());
                       // var ResultantEvent = cmp.getEvent("FinalResultEvent");           
                      //  ResultantEvent.setParams({"FinalResult":a.getReturnValue() });
                       // ResultantEvent.fire();
                       // console.log('event fired');
                        
                        var appEvent = $A.get("e.c:FinalResultEvent");
                        appEvent.setParams({
                            "FinalResult" :cmp.get("v.nummberOne")
                            });
                        appEvent.fire();
                        console.log('event fired');
                    }
                    
                    
                });
                $A.enqueueAction(action);
            }
       
    }
})