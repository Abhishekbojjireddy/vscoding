({
	calculate: function(component, event, helper) {
        component.set("v.return",parseInt(component.get("v.Amount")) * .12);
		
	}
})