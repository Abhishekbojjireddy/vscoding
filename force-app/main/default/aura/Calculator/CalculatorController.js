({
	addition : function(component, event, helper) {
        helper.helperMethod1(component);
        console.log(component); // for checking the console if needed 
        
	},
    
    subtraction : function(component, event, helper) {
        helper.helperMethod2(component);
    },
    
    Division : function(component, event, helper) {
        helper.helperMethod3(component);
    },
    
    validate1: function(component, event, helper) {
              let inputcmp = component.find("Value");
             if(parseInt(inputcmp.get("v.value")) > 1000){
                         
                  inputcmp.set("v.errors",[{message : 'Value cant be greater than 1000'}]);
          }else{
                  inputcmp.set("v.errors",[{message: ''}]);
          }
    }        
})