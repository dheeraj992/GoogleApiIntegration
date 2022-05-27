public with sharing class GoogleApiIntegration {
    

   @future(callout=true)
   public static void FetchContact(String contactId){

    List<Contact>listofContact=[select Id, FirstName,LastName,Phone,Email from Contact where Id=:contactId];

    for(Contact c:listofContact){

        SendApiRequest(c.Id,c.FirstName,c.LastName,c.Phone,c.Email);
    }
   } 

   public static Void SendApiRequest(String Id, String FirstName,String LastName,String Phone,String EmailAddress){

    ContactInformation con=new ContactInformation();
    con.name.add(new ContactInformation.Name(FirstName+' '+LastName));
    con.email.add(new ContactInformation.EmailAddress(EmailAddress));
    con.phone.add(new ContactInformation.Phone(Phone));
    Http http=new Http();
    HttpRequest request = new HttpRequest();
   // request.setHeader('Authorization', 'Bearer '+apiKey);
    request.setHeader('Content-Type', 'application/json');
    request.setHeader('Accept', 'application/json');
    request.setBody(JSON.serialize(con));
    request.setEndpoint('https://people.googleapis.com/v1/people:createContact');
    request.setMethod('POST');
    HttpResponse response = http.send(request);
   System.debug(response.getStatus()+'-->'+response.getStatusCode());
    String responseBody = response.getBody();
    system.debug( 'responseBody'+responseBody);




   }
}