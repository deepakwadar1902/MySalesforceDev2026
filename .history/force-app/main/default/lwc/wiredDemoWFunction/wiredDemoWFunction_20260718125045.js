import { LightningElement, wire } from 'lwc';
import getHotAccounts from '@salesforce/apex/AccountServices.getHotAccounts';

export default class WiredDemoWFunction extends LightningElement {

    accounts;
    error;

    connectCallback(){
        @wire(getHotAccounts)
        wiredAccounts({data, error}){
        if(data){
            this.accounts = data;
        }else if(error){
            this.error = error;
        }
    }
    }
}