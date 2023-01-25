({
	showFinalResult : function(cmp, event, helper) {
         console.log('Result$$');
		var Result = event.getParam("FinalResult");
        console.log('Result$$'+Result);
        cmp.set("v.FResult",Result); 
        
       // cmp.set("v.messageFromEvent", message);
	}
})