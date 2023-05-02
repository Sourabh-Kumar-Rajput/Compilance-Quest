import { LightningElement } from 'lwc';

export default class Registration extends LightningElement {
    value = '';

    get options() {
        return [
            { label: 'Male', value: 'Male' },
            { label: 'Female', value: 'Female' },
            { label: 'Not to say', value: 'No_Say' },
        ];
    }

}