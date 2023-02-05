/**
 * @ classname            : scientificCalculatorController
 * @ author               : Sarjerao Pujari
 * @ date                 : 22-Dec-2022
 * @ description          : This is Apex Class Controller of VF Page for Arithmatic calculation of calculator

 * @ modificationlog
 * 1.Sarjerao Pujari     01-Feb-2023     Add Code Comments
 */
public class scientificCalculatorController 
{
  public string val {get;set;} 
    
  public Integer val1;
  public Integer val2;

  public ScientificCalculatorController()
  {
    String oper =  ApexPages.currentPage().getParameters().get('operator');
    if(String.isBlank(oper))
    {
      val = ApexPages.currentPage().getParameters().get('val');
    }
  }

/**
 * @ methodname             : button7Clicked
 * @ author                 : Sarjerao Pujari
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 7 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button7Clicked() 
  {
    val = (val==null)?'7':val + '7';
    return null;
  }

/** 
 * @ methodname             : button8Clicked
 * @ author                 : Sarjerao Pujari
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 8 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button8Clicked() 
  {
    val = (val==null)?'8':val + '8';
    return null;
  }

/**
 * @ methodname             : button9Clicked
 * @ author                 : Sarjerao Pujari
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 9 Number button Of calculator.
 * @ return                 : pagereference 
 */ 
  public pagereference button9Clicked ()
  {
    val = (val==null)?'9':val + '9';
    return null;
  }

/**
 * @ methodname             : button6Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 6 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button6Clicked() 
  {
    val = (val==null)?'6':val + '6';
    return null;
  }

/**
 * @ methodname             : button4Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 4 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button4Clicked() 
  {
    val = (val==null)?'4':val + '4';
    return null;
  }

/**
 * @ methodname             : button5Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 5 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button5Clicked() 
  {
    val = (val==null)?'5':val + '5';
    return null;
  }

/**
 * @ methodname             : button0Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 0 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button0Clicked() 
  {
    val = (val==null)?'0':val + '0';
    return null;
  }

/**
 * @ methodname             : button1Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 1 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button1Clicked() 
  {
    val = (val==null)?'1':val + '1';
    return null;
  }

/**
 * @ methodname             : button2Clicked
 * @ author                 : Sarjerao Pujari 
 * @ ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 2 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button2Clicked() 
  {
    val = (val==null)?'2':val + '2';
    return null;
  } 

/**
 * @ methodname             : button3Clicked
 * @ author                 : Sarjerao Pujari 
 * @  ObjectReferenced       : none
 * @ param                  : none
 * @ description            : This  Method is used for 3 Number button Of calculator.
 * @ return                 : pagereference 
 */
  public pagereference button3Clicked() 
  {
    val = (val==null)?'3':val + '3';
    return null;
  }

/**
 * @methodname            : divide
 * @author                : Sarjerao Pujari
 * @ObjectReferenced      : none
 * @param                 : none
 * @description           : This  Method is used for Division of two numbers.
 * @return                : pagereference 
 */
  public pageReference divide() 
  {
    val = (val==null)?'0':val;
    if(val1 == null)
    {
      val1 = Integer.valueOf(val);
    }
      pageReference p =Page.ScientificCalculatorPage;  
      p.getParameters().put('operator','div');
      p.getParameters().put('val1',String.valueOf(val1));
      p.setRedirect(true);
      return p;
  }

/**
 * @ methodname            : multiply
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : none
 * @ param                 : none
 * @ description           : This  Method is used for multiplication of two numbers.
 * @ return                : pagereference 
 */
  public pageReference multiply()
  {
    val = (val==null)?'0':val;
    if(this.val1 == null)
    {
      this.val1 = Integer.valueOf(val);
    }
      pageReference p =Page.ScientificCalculatorPage;  
      p.getParameters().put('operator','multiply');
      p.getParameters().put('val1',String.valueOf(val1));
      p.setRedirect(true);
      return p;
  }

/**
 * @ methodname            : subtract
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : none
 * @ param                 : none
 * @ description           : This  Method is used for subtraction of two numbers.
 * @ return                : pagereference 
 */
  public pageReference subtract()
  {
    val = (val==null)?'0':val;
    if(this.val1 == null)
    {
      this.val1 = Integer.valueOf(val);
    }
      pageReference p =Page.ScientificCalculatorPage;  
      p.getParameters().put('operator','subtract');
      p.getParameters().put('val1',String.valueOf(val1));
      p.setRedirect(true);
      return p;
  }

/**
 * @ methodname            : add
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : none
 * @ param                 : none
 * @ description           : This  Method is used for addition of two numbers.
 * @ return                : pagereference 
 */
  public pageReference add()
  {
    val = (val==null)?'0':val;
    if(this.val1 == null)
    {
      this.val1 = Integer.valueOf(val);
    }
      pageReference p =Page.ScientificCalculatorPage;  
      p.getParameters().put('operator','add');
      p.getParameters().put('val1',String.valueOf(val1));
      p.setRedirect(true);
      return p;
  }

/**
 * @ methodname            : result
 * @ author                : Sarjerao Pujari
 * @ ObjectReferenced      : none
 * @ param                 : none
 * @ description           : This  Method is used for Arithmatic Result of two numbers.
 * @ return                : Void 
 */
  public void  result()
  {
    pageReference p =Page.ScientificCalculatorPage;
    val1 = Integer.valueOf(ApexPages.currentPage().getParameters().get('val1'));
    val = (val==null)?'0':val;
    if(this.val2 == null)
    {
      this.val2 = Integer.valueOf(val);
    }
    String  operator =ApexPages.currentPage().getParameters().get('operator');
    Switch on operator
    {
      when 'add'
      {
        val = String.valueOf(val1 + val2);
      }
      when 'sub'
      {
        val = String.valueOf(val1 - val2);
      }
      when 'mul'
      {
        val = String.valueOf(val1 * val2);
      }
      when 'div'
      {
        val = String.valueOf(val1 / val2);
      }
    }
  }
}