public with sharing class ContactInformation {
    
    public List<EmailAddress> email;
	public List<Name> name;
	public List<Phone> phone;

    public ContactInformation(){
        name=new List<Name>();
        email=new List<EmailAddress>();
        phone=new List<Phone>();
    }
    
     public class Name{
    
        String GName;
        public Name(String name){
            this.GName=name;
        }

    }

     public class EmailAddress{

        String GEmail;
        public EmailAddress(String email){
            this.GEmail=email;
        }
    }
    public class Phone{
        String Gphone;
        public Phone(String phoneNo){
            this.Gphone=phoneNo;
        }
    }
     
    }