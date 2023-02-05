/**
 * @ classname        : TestAuraCalculator
 * @ author           : Sarjerao Pujari
 * @ date             : 22-Dec-2022
 * @ description      : This is Apex Test Class of VF Page for Test Arithmatic calculation of calculator
  
 * @ modificationlog
 * 1.Sarjerao Pujari     02-Feb-2023     Add Code Comments
 */
  @istest
  public class TestAuraCalculator
{
  public string operator;

/**
 * @ methodname              : getResultTest
 * @ author                  : Sarjerao Pujari
 * @ ObjectReferenced        : none
 * @ param                   : none
 * @ description             : This Method is used to test the arithmatic oparations Vf Page Calculator.
 * @ return                  : pagereference 
 */
  @istest
  static void getResultTest()
  {
    String num1;
    String num2;
    string operator;
    Integer result;
    AuraControllerCalc.getResult('11', 'add', '12');
    AuraControllerCalc.getResult('11', 'multiply', '12');
    AuraControllerCalc.getResult('11', 'divide', '12');
    AuraControllerCalc.getResult('11', 'subtract', '12');
  }
}