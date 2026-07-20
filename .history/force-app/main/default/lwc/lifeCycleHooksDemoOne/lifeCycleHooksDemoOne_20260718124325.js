import { LightningElement } from 'lwc';

export default class LifeCycleHooksDemoOne extends LightningElement {

    counter = 0;
    constructor(){
        super();
        this.counter = 1;
        console.log('Constructor Executed...');
    }
}