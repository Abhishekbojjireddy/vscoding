({
	handleevent : function(component, event) {
        console.log(event.getParams("message"));
		component.set("v.childmsg",event.getParams("message"));
	}
})