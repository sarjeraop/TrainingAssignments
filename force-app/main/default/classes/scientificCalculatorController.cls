public class scientificCalculatorController {
  public string val {get;set;} 
    
    public Integer val1;
    public Integer val2;
    
    public ScientificCalculatorController(){
        String oper =  ApexPages.currentPage().getParameters().get('operator');
        if(String.isBlank(oper)){
            val = ApexPages.currentPage().getParameters().get('val');
        }
    }
    
    public pagereference button7Clicked() {
        val = (val==null)?'7':val + '7';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button8Clicked() {
        val = (val==null)?'8':val + '8';
        system.debug('val==='+val);
        return null;
    }   
    public pagereference button9Clicked (){
        val = (val==null)?'9':val + '9';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button6Clicked() {
        val = (val==null)?'6':val + '6';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button4Clicked() {
        val = (val==null)?'4':val + '4';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button5Clicked() {
        val = (val==null)?'5':val + '5';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button0Clicked() {
        val = (val==null)?'0':val + '0';       
        system.debug('val==='+val);
        return null;
    }
    
    
    //public string button7Clicked {get;set;}
    public pagereference button1Clicked() {
        val = (val==null)?'1':val + '1';
        system.debug('val==='+val);
        return null;
    }
    public pagereference button2Clicked() {
        val = (val==null)?'2':val + '2';
        system.debug('val==='+val);
        return null;
    } 
    public pagereference button3Clicked() {
        val = (val==null)?'3':val + '3';
        system.debug('val==='+val);
        return null;
    }
    public pageReference divide() {
        val = (val==null)?'0':val;
        if(val1 == null){
            val1 = Integer.valueOf(val);
        }  
        pageReference p =Page.ScientificCalculatorPage;  
        p.getParameters().put('operator','div');
        p.getParameters().put('val1',String.valueOf(val1));
        p.setRedirect(true);
        return p;
        
    }
    public pageReference multiply(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = Integer.valueOf(val);
            
        }  
        System.debug('val1=='+val1);
        pageReference p =Page.ScientificCalculatorPage;  
        p.getParameters().put('operator','multiply');
        p.getParameters().put('val1',String.valueOf(val1));
        p.setRedirect(true);
        return p;
        
    }
    public pageReference subtract(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = Integer.valueOf(val);
            
        }  
        System.debug('val1=='+val1);
        pageReference p =Page.ScientificCalculatorPage;  
        p.getParameters().put('operator','subtract');
        p.getParameters().put('val1',String.valueOf(val1));
        p.setRedirect(true);
        return p;
        
    }
    public pageReference add(){
        val = (val==null)?'0':val;
        if(this.val1 == null){
            this.val1 = Integer.valueOf(val);
            
        }  
        System.debug('val1=='+val1);
        pageReference p =Page.ScientificCalculatorPage;  
        p.getParameters().put('operator','add');
        p.getParameters().put('val1',String.valueOf(val1));
        p.setRedirect(true);
        return p;
        
    }
    public void  result() {
        
        
        pageReference p =Page.ScientificCalculatorPage;
        val1 = Integer.valueOf(ApexPages.currentPage().getParameters().get('val1'));
        System.debug('val1=='+val1);
        val = (val==null)?'0':val;
        System.debug('val in result=='+val);
        if(this.val2 == null){
            this.val2 = Integer.valueOf(val);
            
            System.debug('val2=='+val2);
            
        }
        String  operator =ApexPages.currentPage().getParameters().get('operator');
        System.debug('operator value== '+operator);
        
        Switch on operator{
            when 'add'{  
                System.debug('val1 value== '+val1);
                System.debug('val2 value== '+val2);
                val = String.valueOf(val1 + val2);
                System.debug('val addition'+val);              
            }
            when 'sub'{
                val = String.valueOf(val1 - val2);
            }
            when 'mul'{
                val = String.valueOf(val1 * val2);
            }
            when 'div'{
                val = String.valueOf(val1 / val2);
            }
            
        }  
        
    }
}