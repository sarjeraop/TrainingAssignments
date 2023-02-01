/* * @classname      TestAuraCalculator
   * @author         Sarjerao
   * @date           22-01-2023
   * @description    This is Apex Test Class for test Arithmatic calculation of calculator
   * 
   * @modificationlog
   * 1.Sarjerao   01-02-2023  Add Code Comments */
@istest
public class TestAuraCalculator {
    public string operator;

/* * @methodname         getResultTest
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used for test the result of Arithmatic result Of calculator.
   * @return             result */
    @istest
    static void getResultTest(){
        //AuraControllerCalc acc = new AuraControllerCalc();
        String num1;
        String num2;
        string operator;
        Integer result;
        
        AuraControllerCalc.getResult('11', 'add', '12');
      AuraControllerCalc.getResult('11', 'multiply', '12');
      AuraControllerCalc.getResult('11', 'divide', '12');
        AuraControllerCalc.getResult('11', 'subtract', '12');
         //result=sum(num1,num2);
    }
}
 /*   @istest
    static void sumTest(){
        string num1;
        string num2;
        Integer a=Integer.valueOf(num1);
        Integer b=Integer.valueOf(num2);
        Integer result = a + b;
        
       // return result;
        AuraControllerCalc.sum('25', '25');
        
    }  
    @istest
    static void MultiplyTest(){
        string num1 ;
        string num2 ;
        Integer a=Integer.valueOf(num1);
        Integer b=Integer.valueOf(num2);
        Integer result = a * b;
       // return result;
        AuraControllerCalc.multiply('25', '25');
    }
    @istest
    static void divideTest(){
        string num1 ;
        string num2;
        Integer a=Integer.valueOf(num1);
        Integer b=Integer.valueOf(num2);
        Integer result = a / b;
       // return result;
        AuraControllerCalc.divide('25', '25'); 
        
    } 
   @istest
    static void subtractTest(){
        string num1;
        string num2;
        Integer a=Integer.valueOf(num1);
        Integer b=Integer.valueOf(num2);
        Integer result = a - b;
       // return result;
        AuraControllerCalc.subtract('25', '25');
    }  
        
        
    }*/