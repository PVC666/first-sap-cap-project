namespace first_project.db;
type charType : String(50);
//table for storing customer details
using { cuid, managed } from '@sap/cds/common';
entity Customers: cuid,managed {
    //key customerId: UUID;
        name : charType default '' @title : '{i18n>name}';
        address : Composition of many Address on address.customer = $self;
        emailId : charType;
        //city : String;
        //country : String;
        gender : String;
      //  cratedBy : String;
        //createdAt : DateTime;
        //modifiedBy : String;
        //modifiedAt : DateTime;
} 

//one customer has many addresses
//one address is linked to one customer
entity Address: cuid {
    details : String;
    city : String;
    country : String;
    addressType: String;
    pincode : String;
    street : String;
    customer : Association to one Customers;
}