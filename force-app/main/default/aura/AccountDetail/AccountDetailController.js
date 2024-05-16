({
	accClick : function(component, event, helper) {
        
        let cmp = component.get("c.getname");
        cmp.setParams({AccountNumber : component.get("v.AccountNumber")});
        
        cmp.setCallback(this,function(a){
                           component.set("v.Name",a.getReturnValue());
    });
    
    $A.enqueueAction(cmp);
		
	}
})