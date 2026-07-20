import { LightningElement } from 'lwc';
import getHotAccounts from '@salesforce/apex/AccountServices.getHotAccounts';

export default class LifeCycleHooksDemoOne extends LightningElement {

    counter = 0;
    accounts = [];
    error;

    constructor() {
        super();
        this.counter = 1;
        console.log('Constructor Executed...');
    }

    connectedCallback() {
        console.log('connectedCallback Executed...');

        getHotAccounts()
            .then(result => {
                this.accounts = result;
                this.error = undefined;
            })
            .catch(error => {
                this.error = error;
                this.accounts = [];
            });
    }
}