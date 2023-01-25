public class ApexClass{
    
    public  void ifConditionalLoop(){
        List<Contact> conList = new List<Contact>([Select Id,Name from Contact  where Name LIKE 'A%'limit 10]);
        for(Integer i= 0; i < conList.size() ; i++){
            system.debug('***print***'+conList[i]);
        }
    }
    
    public void ifExampleMethod() {
        List<Contact> conList =[Select Id,Name,gender__c,age__c from Contact limit 10];
        for(Contact c : conList){
            if(c.Name =='Chef'){
                continue;
            }
            System.debug('Contact Detail'+c);
            
        }
    }
    
    public void whileMethod() {
        Set<Contact> conSet = new Set<Contact>([Select Id,Name,Birthdate,gender__c from Contact LIMIT 10]);
        while(conSet.size() < 6){
            System.debug('Contact Detail'+conSet);
        }
    }
    
    public void MapMethod(){
        Map<Integer, String> aMap = new Map<Integer, String>{};
            aMap.put(1, 'Aruna');
        aMap.put(2, 'Nikita');
        
        System.debug(''+aMap.get(1));
        
    }
    
    public void forLoopSobjectMethod() {
        List<Contact> conList1 = new List<Contact>([Select Id,Name from Contact]);
        for(Contact c : conList1){
            if(c.Name == 'Aruna Cheppilate'){
                System.debug('Found Contact '+c.Id+'Name -'+c.Name);
                System.debug('Id TypCast='+String.valueOf(c.Id));
            } else 
                break;
            
        }
    }
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