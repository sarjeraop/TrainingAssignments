/**
 * @classname          : AuraControllerCalc
 * @ author             : Sarjerao Pujari
 * @ date               : 15-Dec-2022
 * @ description        : This is Apex Class of AuraCmp Controller for Arithmatic calculation of calculator

 * @modificationlog
 * 1.Sarjerao Pujari        01-Feb-2023        Add Code Comments 
 */
  public class AuraControllerCalc 
{ 
public string operator;

/**
 * @ methodname               : getResult
 * @ author                   : Sarjerao Pujari
 * @ ObjectReferenced         : none
 * @ param                    : String
 * @ description              : This method is used for Arithmatic result of 2 numbers.
 * @ return                   : Integer 
 */
  @AuraEnabled
  public static Integer getResult(String num1 , String operator, String num2)
  {
    Integer result;
    if(operator=='add')
    {
      result=sum(num1,num2);
    }else if(operator=='multiply')
    {
      result=multiply(num1,num2);
    }else if(operator=='divide')
    {
      result=divide(num1,num2);
    }else if(operator=='subtract')
    {
      result=subtract(num1,num2);
    }
      return result;
  }

/* 
 * @methodname             : sum
 * @author                 : Sarjerao Pujari
 * @ObjectReferenced       : none
 * @param                  : String
 * @description            : This method is used for Addition of 2 numbers.
 * @return                 : integer 
 */
  public static integer sum(String num1,String num2)
  {
    Integer result = Integer.valueOf(num1) + Integer.valueOf(num2) ;
    return result;
  }

/* 
 * @methodname             : multiply
 * @author                 : Sarjerao Pujari
 * @ObjectReferenced       : none
 * @param                  : String
 * @description            : This method is used for multiplication of 2 numbers.
 * @return                 : integer 
 */
  public static integer multiply(String num1,String num2)
  {
    Integer result = Integer.valueOf(num1) * Integer.valueOf(num2) ;
    return result;
  }

/* 
 * @methodname             : divide
 * @author                 : Sarjerao Pujari
 * @ObjectReferenced       : none
 * @param                  : String
 * @description            : This method is used for Division of 2 numbers.
 * @return                 : integer
 */
  public static integer divide(String num1,String num2)
  {
    Integer result = Integer.valueOf(num1) / Integer.valueOf(num2) ;
    return result;
  }

/* 
 * @methodname             : subtract
 * @author                 : Sarjerao Pujari
 * @ObjectReferenced       : none
 * @param                  : String
 * @description            : This method is used Subtraction of 2 numbers.
 * @return                 : integer 
 */
  public static integer subtract(String num1,String num2)
  {
    Integer result = Integer.valueOf(num1) - Integer.valueOf(num2) ;
    return result;
  }
}