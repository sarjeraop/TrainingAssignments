({
/**	@methodname	           :	showFinalResult
  *	@author	               :	Sarjerao Pujari
  *	@ObjectReferenced	     :	none
  *	@param	               :	none
  *	@description	         :	This Is controller of finalResult Aura cmp to Take final result value and pass to the other aura cmp
  *	@return	               :	Void
  */
  showFinalResult : function(component, event, helper) 
  {
    var Result = event.getParam("FinalResult");
    component.set("v.FResult",Result);
	}
})