import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import PrimeVue from 'primevue/config';
import Lara from '@/presets/lara';
import { library } from "@fortawesome/fontawesome-svg-core";
import { faDivide,faPercentage,faXmark,faSubtract,faPlus,faEquals } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";

library.add([faDivide,faPercentage,faXmark,faSubtract,faPlus,faEquals ]);

const app = createApp(App)

app.use(router)
app.component("font-awesome-icon", FontAwesomeIcon)
app.use(FontAwesomeIcon)
app.use(PrimeVue, {
    ripple: true,
    unstyled: true,
    pt: Lara
});
app.mount('#app')


