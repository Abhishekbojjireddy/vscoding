({
	handleClick : function(component, event, helper) {
        
        let cmp = component.get("c.getname");
        cmp.setParams({email : component.get("v.Email")});
        
        cmp.setCallback(this,function(a){
                           component.set("v.LastName",a.getReturnValue());
    });
    
    $A.enqueueAction(cmp);
		
	}
})