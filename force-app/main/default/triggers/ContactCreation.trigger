trigger ContactCreation on Contact (after insert) {

  Contact c=[select Id From Contact order by createdDate desc limit 1];
    
    String contactId=c.Id;
     GoogleApiIntegration.FetchContact(contactId,'AIzaSyA3ASL7uumIWhU6zhmLeMsDYVkgYdxmNpg');
}