window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';


/**
 * Next we will register the CSRF Token as a common header with Axios so that
 * all outgoing HTTP requests automatically have it attached. This is just
 * a simple convenience so we don't have to attach every token manually.
 */

let token = document.head.querySelector('meta[name="csrf-token"]');

if (token) {
    window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
} else {
    console.error('CSRF token not found: https://laravel.com/docs/csrf#csrf-x-csrf-token');
}
window.Vue = require('vue');
import {Form, HasError, AlertError} from 'vform';
import swal from 'sweetalert2';

import VueProgressBar from "vue-progressbar";

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

Vue.component(
    'contact-form-1',
    require('./components/frontend/contact-form/form-1/contact-form-1')
);
Vue.component(
    'contact-form-2',
    require('./components/frontend/contact-form/form-2/contact-form-2')
);


window.Form = Form;
window.swal = swal;
window.Fire=new Vue();

const toast = swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000
});

window.toast = toast
const options = {
    color: '#bffaf3',
    failedColor: '#874b4b',
    thickness: '5px',
    transition: {
        speed: '0.2s',
        opacity: '0.6s',
        termination: 300
    },
    autoRevert: true,
    location: 'top',
    inverse: false
}
Vue.use(VueProgressBar, options);

const soft_1 = new Vue({
    el: '#soft_1'
});
