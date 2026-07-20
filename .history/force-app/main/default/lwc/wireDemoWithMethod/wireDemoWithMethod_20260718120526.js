import { LightningElement, wire } from 'lwc';
import getHotAccounts from '@salesforce/apex/AccountServices.getHotAccounts';
export default class WireDemoWithMethod extends LightningElement {
    @wire(getHotAccounts) accounts;
}