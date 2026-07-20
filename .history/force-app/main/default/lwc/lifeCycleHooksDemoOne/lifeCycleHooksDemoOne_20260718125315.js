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

    connectCallback(){
        console.log('ConnectedCallback Executed..');

        getHotAccounts()
            .then(result => )
    }

}