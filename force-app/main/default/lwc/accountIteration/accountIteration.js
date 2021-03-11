import { LightningElement, wire } from 'lwc';
import { track } from 'lwc';
import getAllActiveAccounts from '@salesforce/apex/AccountController.getAllActiveAccounts';
export default class RandomClassName extends LightningElement {
    @track accounts;
    @track error;
    @wire(getAllActiveAccounts)
    wiredAccounts({ error, data }) {
        console.log(JSON.stringify(data));
        if (data) {
            this.accounts = data;
        } else if (error) {
            console.error(error);
            this.error = error;
        }
    }

}