({
	/**	@methodname	:	showFinalResult
      *	@author	:	Sarjerao
      *	@group	:	none
      *	@param	:	none
      *	@description	:	This Is controller of finalResult Aura cmp to Take final result value and pass to the other aura cmp
      *	@return	:	
    */
    showFinalResult : function(cmp, event, helper) {
         console.log('Result$$');
		var Result = event.getParam("FinalResult");
        console.log('Result$$'+Result);
        cmp.set("v.FResult",Result); 
        
       // cmp.set("v.messageFromEvent", message);
	}
})