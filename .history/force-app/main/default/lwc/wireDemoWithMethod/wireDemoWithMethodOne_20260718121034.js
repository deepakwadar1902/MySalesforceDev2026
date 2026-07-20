import { LightningElement, wire } from 'lwc';
import getHotAccounts from '@salesforce/apex/AccountServices.getHotAccounts';
export default class WireDemoWithMethodOne extends LightningElement {
    @wire(getHotAccounts) accounts;
}