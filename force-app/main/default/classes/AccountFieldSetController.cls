public class AccountFieldSetController {
    public String queryString{get;set;}
    public List<Account> accList{get;set;}
    public AccountFieldSetController(){
        queryString = 'SELECT Id';
        for(Schema.FieldSetMember fld : SObjectType.Account.FieldSets.Account_Field_Set.getFields()) {
            queryString += ', ' + fld.getFieldPath();
        }
        queryString += ' FROM Account LIMIT 5';         
        acclist = Database.query(queryString); 
        System.debug('-------ONLY APEX CLASSES using ANT:::123456799-----');         
    }     
}