({
	helperMethod1 : function(component) {
        helper.changecss(component, event);
        
        var val1 = parseInt(component.get("v.Value_1"));
        var val2 = parseInt(component.get("v.Value_2"));
        var res=val1 + val2;
        component.set("v.Return",res);
        component.set("v.Value_1","");
        component.set("v.Value_2","");
		
	},
    helperMethod2 : function(component) {
    var val1 = parseInt(component.get("v.Value_1"));
        var val2 = parseInt(component.get("v.Value_2"));
        var res=val1 - val2;
        component.set("v.Return",res);
        component.set("v.Value_1","");
        component.set("v.Value_2","");
    },
    helperMethod3 : function(component) {
        var val1 = parseInt(component.get("v.Value_1"));
        var val2 = parseInt(component.get("v.Value_2"));
        var res=val1 / val2;
        component.set("v.Return",res);
        component.set("v.Value_1","");
        component.set("v.Value_2","");
    },
    changecss : function(cmp,event){
        var target = cmp.find("demo");
        $A.util.removeClass(target,'blue');
        $A.util.toggleClass(target,'red');
    }
    
})