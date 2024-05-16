({
	Calculate : function(component, event, helper) {
            var amt = parseInt(component.get("v.Amount"));
            var ten = parseInt(component.get("v.Tenure"));
             var dur = parseInt(component.get("v.Duration"));
             switch(dur)
             {
                 case 1: component.set("v.Return" , amt*0.12*ten);
                         break;
                 case 2: component.set("v.Return" , amt*0.14*ten);
                         break;
                 default: component.set("v.Return" , amt*0.16*ten);
                 
                     
 }
    },
                 
       validate1: function(component, event, helper) {
              let inputcmp = component.find("Duration");
             if(parseInt(inputcmp.get("v.value")) > 24){
                         
                  inputcmp.set("v.errors",[{message : 'Value cant be greater than 24'}]);
          }else{
                  inputcmp.set("v.errors",[{message: ''}]);
          }        
     }
})