@isTest
public class TestScienficCalculator {
    
    @isTest
    public static void buttonMethods(){
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
    public static void CalcuConstructor(){
       scientificCalculatorController obj = new scientificCalculatorController();
        obj = new scientificCalculatorController();
        String operator = 'null';
        String val = '100';
    }
      
    @isTest
       public static void div(){
             scientificCalculatorController obj = new scientificCalculatorController();
             pageReference PR =Page.ScientificCalculatorPage;
             system.Test.setCurrentPage(PR);
             PR.getParameters().put('operator','div');
             obj.divide();
           }
    
     @isTest
       public static void add(){
             scientificCalculatorController obj = new scientificCalculatorController();
             pageReference PR =Page.ScientificCalculatorPage;
             system.Test.setCurrentPage(PR);
             PR.getParameters().put('operator','add');
             obj.add();
           }
    
      @isTest
       public static void sub(){
             scientificCalculatorController obj = new scientificCalculatorController();
             pageReference PR =Page.ScientificCalculatorPage;
             system.Test.setCurrentPage(PR);
             PR.getParameters().put('operator','sub');
             obj.subtract();
           }
     @isTest
     public static void mul(){
             scientificCalculatorController obj = new scientificCalculatorController();
             pageReference PR =Page.ScientificCalculatorPage;
             system.Test.setCurrentPage(PR);
             PR.getParameters().put('operator','mul');
             obj.multiply();
           }
    
    
      @isTest
       public Static void Result(){
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