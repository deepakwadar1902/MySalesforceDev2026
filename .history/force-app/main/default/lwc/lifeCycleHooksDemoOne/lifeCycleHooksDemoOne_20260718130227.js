import { LightningElement, wire } from 'lwc';
import getHotAccounts from '@salesforce/apex/AccountServices.getHotAccounts';

export default class LifeCycleHooksDemoOne extends LightningElement {

    counter = 0;
    constructor(){
        super();
        this.counter = 1;
        console.log('Constructor Executed...');
    }

    accounts =[];
    error;

    connectedCallback(){
        console.log('ConnectedCallback Executed..');

        getHotAccounts()
            .then(result => {
                this.accounts = result;
            })
            .catch(error => {
                this.error = error;
            });
    }

}