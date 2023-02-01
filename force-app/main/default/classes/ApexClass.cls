/*
* @classname      ApexClass
* @author         Sarjerao
* @date           20-01-2023
* @description    This is Apex class Contains Conditions and loops of Apex
 
* @modificationlog
* 1. Sarjerao        01-02-2023  Add Code Comments
*/


public class ApexClass{

/*
* @methodname         ConditionalLoop
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for For loop example.
* @return             Void
*/ 
    public  void ConditionalLoop(){
        List<Contact> conList = new List<Contact>([Select Id,Name from Contact  where Name LIKE 'A%'limit 10]);
        for(Integer i= 0; i < conList.size() ; i++){
            system.debug('***print***'+conList[i]);
        }
    }

/*
* @methodname         ifExampleMethod
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for if condition in For loop example.
* @return             Void
*/
    public void ifExampleMethod() {
        List<Contact> conList =[Select Id,Name,gender__c,age__c from Contact limit 10];
        for(Contact c : conList){
            if(c.Name =='Chef'){
                continue;
            }
            System.debug('Contact Detail'+c);
            
        }
    }
    

/*
* @methodname         whileMethod
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for While loop example.
* @return             Void
*/
    public void whileMethod() {
        Set<Contact> conSet = new Set<Contact>([Select Id,Name,Birthdate,gender__c from Contact LIMIT 10]);
        while(conSet.size() < 6){
            System.debug('Contact Detail'+conSet);
        }
    }
    

/*
* @methodname         MapMethod
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for Map example.
* @return             Void
*/
    public void MapMethod(){
        Map<Integer, String> aMap = new Map<Integer, String>{};
            aMap.put(1, 'Sarjerao');
        aMap.put(2, 'Vishal');
        
        System.debug(''+aMap.get(1));
        
    }
    

/*
* @methodname         forLoopSobjectMethod
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for if else conditions in Inline for loop example.
* @return             Void
*/
    public void forLoopSobjectMethod() {
        List<Contact> conList1 = new List<Contact>([Select Id,Name from Contact]);
        for(Contact c : conList1){
            if(c.Name == 'Sarjerao Pujari'){
                System.debug('Found Contact '+c.Id+'Name -'+c.Name);
                System.debug('Id TypCast='+String.valueOf(c.Id));
            } else 
                break;
            
        }
    }

/*
* @methodname         switchWhenMethod
* @author             Sarjerao
* @group              none
* @param              none
* @description        This method is used for switch loop example.
* @return             Void
*/
    public void switchWhenMethod(String rainbow){
        Switch on rainbow{
            when 'white' {
                System.debug('selected color is white');
            }
            when 'red' {
                System.debug('selected color is red');
            }
            when 'yellow' {
                System.debug('selected color is yellow');
            }
            when 'black' {
                System.debug('selected color is black');
            }
            when 'pink' {
                System.debug('selected color is pink');
            }
            when 'blue' {
                System.debug('selected color is blue');
            }
            when 'green' {
                System.debug('selected color is green');
            }
        }
    }
    
    
}