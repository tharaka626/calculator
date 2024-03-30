<script setup>
    import { ref,watch } from 'vue';

    const props = defineProps(['btn_type', 'width', 'active','align']);

    const colors = ref('');
    const width = ref('w-12');
    const align = ref(props.align ? 'ps-5 justify_'+props.align : 'justify-center');

    switch (props.btn_type) {
        case 1:
            colors.value = 'bg-amber-500 text-white hover:bg-amber-300 focus-visible:ring-amber-500';
            break;
        case 0:
            colors.value = 'bg-gray-300 text-gray-900 hover:bg-gray-200 focus-visible:ring-gray-500';
            break;
        case 2:
            colors.value = 'bg-zinc-800 text-white-900 hover:bg-zinc-600 focus-visible:ring-zinc-500';
            break;
        default:
            break;
    }

    switch (props.active) {
        case true:
            colors.value = 'bg-slate-200 text-amber-500 focus-visible:ring-slate-500';
            break;
        default:
            if (props.btn_type == 1) {
                colors.value = 'bg-amber-500 text-white hover:bg-amber-300 focus-visible:ring-amber-500';
            }
            if (props.btn_type == 0) {
                colors.value = 'bg-gray-300 text-gray-900 hover:bg-gray-200 focus-visible:ring-gray-500';
            }
            break;
    }

    watch(()=>props.active, (newVal) => {
        console.log(newVal);
        switch (newVal) {
            case true:
                colors.value = 'bg-slate-200 text-amber-500 focus-visible:ring-slate-500';
                break;
            default:
                if (props.btn_type == 1) {
                    colors.value = 'bg-amber-500 text-white hover:bg-amber-300 focus-visible:ring-amber-500';
                }
                if (props.btn_type == 0) {
                colors.value = 'bg-gray-300 text-gray-900 hover:bg-gray-200 focus-visible:ring-gray-500';
            }
                break;
        }
    })

    if (props.width) {
        width.value = props.width
    }

</script>

<template>
    <button
        type="button"
        :class="colors+' '+width+' '+align"
        class="inline-flex rounded-full h-12 border border-transparent  px-2 py-2 text-lg font-normal  focus:outline-none focus-visible:ring-2  focus-visible:ring-offset-2"
    >
        <slot />
    </button>

</template>