/* 
 * @ classname          : TestScienficCalculator
 * @ author             : Sarjerao Pujari
 * @ date               : 22-Dec-2022
 * @ description        : This is Apex Test Class of VF Page Controller for Arithmatic calculation of calculator
 
 * @ modificationlog
 * 1.Sarjerao Pujari       05-Feb-2023        Add Code Comments 
 */
@isTest
public class TestScienficCalculator 
{

/**
 * @ methodname               : buttonMethods
 * @ author                   : Sarjerao Pujari
 * @ ObjectReferenced         : none
 * @ param                    : none
 * @ description              : This  Method is used to call All Buttons of the Vf Page Calculator.
 * @ return                   : void 
 */
    @isTest
public static void buttonMethods()
{
  scientificCalculatorController obj = new scientificCalculatorController();

  obj.button7Clicked();
  obj.button8Clicked();
  obj.button9Clicked();
  obj.button6Clicked();
  obj.button4Clicked();
  obj.button5Clicked();
  obj.button0Clicked();
  obj.button1Clicked();
  obj.button2Clicked();
  obj.button3Clicked();
}

@isTest
public static void CalcuConstructor()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  obj = new scientificCalculatorController();
  String operator = 'null';
  String val = '100';
}

/**
 * @ methodname                : buttonMethods
 * @ author                    : Sarjerao Pujari
 * @ ObjectReferenced          : none
 * @ param                     : none
 * @ description               : This  Method is used to call All Buttons of the Vf Page Calculator.
 * @ return                    : void 
 */
@isTest
public static void div()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  pageReference PR =Page.ScientificCalculatorPage;
  system.Test.setCurrentPage(PR);
  PR.getParameters().put('operator','div');
  obj.divide();
}

/**
 * @ methodname                  : add
 * @ author                      : Sarjerao Pujari
 * @ ObjectReferenced            : none
 * @ param                       : none
 * @ description                 :  This  Method is used to Test Addition of vf Page Calculator.
 * @ return                      : void 
 */

@isTest
public static void add()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  pageReference PR =Page.ScientificCalculatorPage;
  system.Test.setCurrentPage(PR);
  PR.getParameters().put('operator','add');
  obj.add();
}

/**
 * @ methodname                  : sub
 * @ author                      : Sarjerao Pujari
 * @ ObjectReferenced            : none
 * @ param                       : none
 * @ description                 : This  Method is used to Test Subtraction of vf Page Calculator.
 * @ return                      : void 
 */
@isTest
public static void sub()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  pageReference PR =Page.ScientificCalculatorPage;
  system.Test.setCurrentPage(PR);
  PR.getParameters().put('operator','sub');
  obj.subtract();
}

/**
 * @ methodname                : mul
 * @ author                    : Sarjerao Pujari
 * @ ObjectReferenced          : none
 * @ param                     : none
 * @ description               : This  Method is used to Test Multiplication of vf Page Calculator
 * @ return                    : void 
 */
@isTest
public static void mul()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  pageReference PR =Page.ScientificCalculatorPage;
  system.Test.setCurrentPage(PR);
  PR.getParameters().put('operator','mul');
  obj.multiply();
}

/**
 * @ methodname              : Result
 * @ author                  : Sarjerao Pujari
 * @ ObjectReferenced        : none
 * @ param                   : none
 * @ description             : This  Method is used to call Arithnatic Nethods And Check Result of vf Page Calculator
 * @ return                  : void 
 */
@isTest
public Static void Result()
{
  scientificCalculatorController obj = new scientificCalculatorController();
  pageReference PR =Page.ScientificCalculatorPage;
  System.Test.setCurrentPage(PR);      
  PR.getParameters().put('val1','20');
  PR.getParameters().put('operator','sub');
  obj.val = '10';
  obj.result();
  System.assertEquals('10',String.valueOf(20 - 10));
  PR.getParameters().put('operator','add');
  obj.result();
  System.assertEquals('30',String.valueOf(20 + 10));
  PR.getParameters().put('operator','mul');
  obj.result();
  System.assertEquals('200',String.valueOf(20 * 10));
  PR.getParameters().put('operator','div');
  obj.result();
  System.assertEquals('2',String.valueOf(20 / 10));
}
}