trigger ContactCreation on Contact (after insert,after update) {

  Contact c=[select Id From Contact order by createdDate desc limit 1];
    
    String contactId=c.Id;
     GoogleApiIntegration.FetchContact(contactId,'47528181417-ju72vso903f5l1edf5to8dc7ec5ojc9f.apps.googleusercontent.com');
}