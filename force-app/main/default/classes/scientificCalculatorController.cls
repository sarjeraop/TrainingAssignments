
/*
* @classname      scientificCalculatorController
* @author         Sarjerao
* @date           22-01-2023
* @description    This is Apex Class of VF Page Controller for Arithmatic calculation of calculator
* 
* @modificationlog
* 1.Sarjerao   01-02-2023  Add Code Comments
*/public class scientificCalculatorController {
  public string val {get;set;} 
    
    public Integer val1;
    public Integer val2;
    
    public ScientificCalculatorController(){
        String oper =  ApexPages.currentPage().getParameters().get('operator');
        if(String.isBlank(oper)){
            val = ApexPages.currentPage().getParameters().get('val');
        }
    }
    

/* * @methodname         button7Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 7 Number button Of calculator.
   * @return             pagereference */
    public pagereference button7Clicked() {
        val = (val==null)?'7':val + '7';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button8Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 8 Number button Of calculator.
   * @return             pagereference */
    public pagereference button8Clicked() {
        val = (val==null)?'8':val + '8';
        system.debug('val==='+val);
        return null;
    }
    
/* * @methodname         button9Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 9 Number button Of calculator.
   * @return             pagereference */
    public pagereference button9Clicked (){
        val = (val==null)?'9':val + '9';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button6Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 6 Number button Of calculator.
   * @return             pagereference */
    public pagereference button6Clicked() {
        val = (val==null)?'6':val + '6';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button4Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 4 Number button Of calculator.
   * @return             pagereference */
    public pagereference button4Clicked() {
        val = (val==null)?'4':val + '4';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button5Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 5 Number button Of calculator.
   * @return             pagereference */
    public pagereference button5Clicked() {
        val = (val==null)?'5':val + '5';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button0Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 0 Number button Of calculator.
   * @return             pagereference */
    public pagereference button0Clicked() {
        val = (val==null)?'0':val + '0';       
        system.debug('val==='+val);
        return null;
    }
    
/* * @methodname         button1Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 1 Number button Of calculator.
   * @return             pagereference */
    public pagereference button1Clicked() {
        val = (val==null)?'1':val + '1';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         button2Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 2 Number button Of calculator.
   * @return             pagereference */
    public pagereference button2Clicked() {
        val = (val==null)?'2':val + '2';
        system.debug('val==='+val);
        return null;
    } 

/* * @methodname         button3Clicked
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for 3 Number button Of calculator.
   * @return             pagereference */
    public pagereference button3Clicked() {
        val = (val==null)?'3':val + '3';
        system.debug('val==='+val);
        return null;
    }

/* * @methodname         divide
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for Division of two numbers.
   * @return             pagereference */
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

/* * @methodname         multiply
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for multiplication of two numbers.
   * @return             pagereference */
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

/* * @methodname         subtract
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for subtraction of two numbers.
   * @return             pagereference */
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

/* * @methodname         add
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for Addition of two numbers.
   * @return             pagereference */
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

/* * @methodname         result
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This  Method is used for Arithmatic Calculation Result of two numbers.
   * @return             pagereference */
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