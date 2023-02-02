/* * @classname      AuraControllerCalc
   * @author         Sarjerao
   * @date           22-01-2023
   * @description    This is Apex Class of AuraCmp Controller for Arithmatic calculation of calculator
   * 
   * @modificationlog
   * 1.Sarjerao   01-02-2023  Add Code Comments */
  public class AuraControllerCalc { 
    public string operator;

/* * @methodname         getResult
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used for Arithmatic result of 2 numbers.
   * @return             result */
    @AuraEnabled
    public static Integer getResult(String num1 , String operator, String num2){  
        system.debug('operator=='+operator);
        Integer result;
        if(operator=='add'){
            system.debug('inside add');
            result=sum(num1,num2);
        }else if(operator=='multiply'){
            system.debug('inside multiply');
            result=multiply(num1,num2);
        }else if(operator=='divide'){
            system.debug('inside divide');
            result=divide(num1,num2);
        }else if(operator=='subtract'){
            system.debug('inside subtract');
            result=subtract(num1,num2);
        }
        system.debug('result=='+result);
        return result;
    }

/* * @methodname         sum
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used for Addition of 2 numbers.
   * @return             result */
    public static integer sum(String num1,String num2){
        Integer result = Integer.valueOf(num1) + Integer.valueOf(num2) ;
        return result;
    }

/* * @methodname         multiply
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used for multiplication of 2 numbers.
   * @return             result */
    public static integer multiply(String num1,String num2){
        Integer result = Integer.valueOf(num1) * Integer.valueOf(num2) ;
        return result;
    }

/* * @methodname         divide
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used for Division of 2 numbers.
   * @return             result */
    public static integer divide(String num1,String num2){
        Integer result = Integer.valueOf(num1) / Integer.valueOf(num2) ;
        return result;
    }

/* * @methodname         subtract
   * @author             Sarjerao 
   * @group              none
   * @param              none
   * @description        This method is used Subtraction of 2 numbers.
   * @return             result */
    public static integer subtract(String num1,String num2){
        Integer result = Integer.valueOf(num1) - Integer.valueOf(num2) ;
        return result;
    }
}