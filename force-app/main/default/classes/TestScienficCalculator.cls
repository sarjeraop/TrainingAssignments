/* 
 * @ classname          : TestScienficCalculator
 * @ author             : Sarjerao Pujari
 * @ date               : 22-Dec-2022
 * @ description        : This is Apex Test Class of VF Page Controller for Arithmatic calculation of calculator
 
 * @ modificationlog
 * 1.Sarjerao Pujari       05-Feb-2023        Add Code Comments 
 * 2.Sarjerao Pujari       07-Feb-2023        Add AssertEquals
 * 3.Sarjerao Pujari       07-Feb-2023        Code Indentation
 */
@isTest
public class TestScienficCalculator 
{
public Static string val;

/**
 * @ Constructor            : CalcuConstructorTest
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This Constructor Is Of CalcuConstrutor For Assign Value And Oparator When Page refresh.
 * @ return                 : void 
 */
@isTest
public static void CalcuConstructorTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  cal = new scientificCalculatorController();
  String operator = 'null';
  String val = '90';
}

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used to test the button Methods  Of calculator.
 * @ return                 : void 
 */
@isTest
public static void Button0ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button0Clicked();
  System.assertEquals('0',cal.val,'Zero Button not clicked');
}

@isTest
public static void Button1ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button1Clicked();
  System.assertEquals('1',cal.val, 'One  Button not clicked');
}

@isTest
public static void Button2ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button2Clicked();
  System.assertEquals('2',cal.val,'Two  Button not clicked');
}

@isTest
public static void Button3ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button3Clicked(); 
  System.assertEquals('3',cal.val,'Three Button not clicked');
}

@isTest
public static void Button4ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button4Clicked();
  System.assertEquals('4',cal.val,'Four Button not clicked'); 
}

@isTest
public static void Button5ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button5Clicked();
  System.assertEquals('5',cal.val,'Five Button not clicked');
}

@isTest
public static void Button6ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button6Clicked();
  System.assertEquals('6',cal.val,'Six Button not clicked');
}

@isTest
public static void Button7ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button7Clicked();
  System.assertEquals('7',cal.val,'Seven Button not clicked');
}

@isTest
public static void Button8ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button8Clicked();
  System.assertEquals('8',cal.val,'Eight Button not clicked');
}

@isTest
public static void Button9ClickedTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  Cal.val = null;
  cal.button9Clicked();
  System.assertEquals('9',cal.val,'Nine Button not clicked');
}

/**
 * @ methodname             : addTest
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used Addition Of Two Numbers Of calculator.
 * @ return                 : void 
 */
@isTest
public static void  addTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  pageReference p = page.ScientificCalculatorPage;
  System.Test.setCurrentPage(p);
  p.getParameters().put('operator','add');
  String Value = p.getParameters().get('operator');
  cal.add();
  System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
}

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 0 Number button Of calculator.
 * @ return                 : pagereference 
 */
@isTest
public static void  subtractTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  pageReference p = page.ScientificCalculatorPage;
  System.Test.setCurrentPage(p);
  p.getParameters().put('operator','sub');
  String Value = p.getParameters().get('operator');
  cal.subtract();
  System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
}

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 0 Number button Of calculator.
 * @ return                 : pagereference 
 */
@isTest
public static void DivideTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  pageReference p = page.ScientificCalculatorPage;
  System.Test.setCurrentPage(p);
  p.getParameters().put('operator','div');
  String Value = p.getParameters().get('operator');
  cal.divide();
  System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
}

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 0 Number button Of calculator.
 * @ return                 : pagereference 
 */
@isTest
public static void  MultiplyTest()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  pageReference p = page.ScientificCalculatorPage;
  System.Test.setCurrentPage(p);
  p.getParameters().put('val1','mul');
  p.getParameters().put('val1',String.valueOf(Cal.val1));
  cal.multiply();
  String Value = p.getParameters().get('operator');
  System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
    
}

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 0 Number button Of calculator.
 * @ return                 : pagereference 
 */
@isTest
public Static void getResultTestSub()
{
  scientificCalculatorController cal=new scientificCalculatorController();
  pageReference p = page.ScientificCalculatorPage;
  System.Test.setCurrentPage(p);       
  p.getParameters().put('val1','10');
  p.getParameters().put('operator','sub');
  cal.val = '2';
  cal.Result();
  String subValue = p.getParameters().get('val');
  System.assertEquals(subValue,ApexPages.currentPage().getParameters().get('val'),'sub didnt work');
  p.getParameters().put('operator','add');
  cal.Result();
  String addValue = p.getParameters().get('val');
  System.assertEquals(addValue,ApexPages.currentPage().getParameters().get('val'),'add didnt work');
  p.getParameters().put('operator','mul');
  cal.Result();
  String mulValue = p.getParameters().get('val');
  System.assertEquals(mulValue,ApexPages.currentPage().getParameters().get('val'),'mul didnt work');
  p.getParameters().put('operator','div');
  cal.Result();
  String divValue = p.getParameters().get('val');
  System.assertEquals(divValue,ApexPages.currentPage().getParameters().get('val'),'div didnt work');        
}
}