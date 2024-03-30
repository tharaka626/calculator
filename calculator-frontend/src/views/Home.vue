<script setup>
  import { reactive,ref } from 'vue';
  import axios from "axios"
  import TextInput from '@/components/TextInput.vue';
  import mainBtn from '@/components/button.vue'

// API URL
  axios.defaults.baseURL = import.meta.env.VITE_API_URL;

  const form = reactive({
    operand: 0,
    operand_1: '',
    operand_2: '',
    operator: '',
  })

  const operator_stauts = ref(false);
  const add_status = ref(false);
  const subtract_status = ref(false);
  const multiply_status = ref(false);
  const divide_status = ref(false);
  const percentage_status = ref(false);
  const minus = ref(false);
  const loader = ref(false);

// operand buttons action
  const addOperand = (value,type) => {
    if (type == 'keyup') {
        if (operator_stauts.value == false) {
            form.operand_1 = form.operand_1 ? value : value 
        } else {
            form.operand_2 = form.operand_2 ? value : value 
        }
    } else {

        if (operator_stauts.value == false) {
            form.operand_1 = form.operand_1 ? form.operand_1 +''+ value : value
            form.operand = form.operand_1
        } else {
            form.operand_2 = form.operand_2 ? form.operand_2 +''+ value : value 
            form.operand = form.operand_2  

        }
    }

    add_status.value = false
    subtract_status.value = false
    multiply_status.value = false
    divide_status.value = false
    percentage_status.value = false
    console.log(form);
  }

// operator buttons action
  const processOperator = (type,status) => {
    form.operand = ''
    operator_stauts.value = status
    
    switch (type) {
        case 'add':
            add_status.value = true
            subtract_status.value = false
            multiply_status.value = false
            divide_status.value = false
            percentage_status.value = false
            break;
        case 'subtract':
            add_status.value = false
            subtract_status.value = true
            multiply_status.value = false
            divide_status.value = false
            percentage_status.value = false
            break;
        case 'multiply':
            add_status.value = false
            subtract_status.value = false
            multiply_status.value = true
            divide_status.value = false
            percentage_status.value = false
            break;
        case 'divide':
            add_status.value = false
            subtract_status.value = false
            multiply_status.value = false
            divide_status.value = true
            percentage_status.value = false
            break;
        case 'percentage':
            add_status.value = false
            subtract_status.value = false
            multiply_status.value = false
            divide_status.value = false
            percentage_status.value = true
            break;
        default:
            break;
    }

    if (type != 'equal') {
        form.operator = type
    }

    // get result from backend using Axios
    if (form.operand_2 != '' && type != 'percentage' || type == 'percentage') {
        type == 'percentage' ? form.operand_2 = 0 : true
        try {
            loader.value = true;
            axios.post("calculators",form)
                .then((query_result)=> {
                    console.log(query_result.data);
                    const record = query_result.data.data[0]
                    form.operand_1 = record.result
                    form.operand = record.result
                    if (type == 'equal') {
                        form.operand_2 = record.operand_2
                    }else{
                        form.operand_2 = ''
                    }
                    loader.value = false;
                })
        } catch (error) {
            console.log(error)
        }
    }

  }

// clear button action
  const clearValues = () => {
    form.operand = 0
    form.operand_1 = ''
    form.operand_2 = ''
    form.operator = ''
    operator_stauts.value = false;
    add_status.value = false
    subtract_status.value = false
    multiply_status.value = false
    divide_status.value = false
    percentage_status.value = false
  }

  // plus/Minus button action
  const processMinus = (status) => {
    if (status) {
        if (operator_stauts.value == false) {
            form.operand_1 = !minus.value ? '-'+form.operand_1 : Math.abs(form.operand_1)
            form.operand = form.operand_1
        } else {
            form.operand_2 = !minus.value ? '-'+form.operand_2 : Math.abs(form.operand_2)
            form.operand = form.operand_2
        }

        minus.value = minus.value ? false : true
    }
  }
</script>

<template>
    <div class="relative isolate px-6 pt-14 lg:px-8">
        <div class="mx-auto max-w-2xl">
            <div class="text-center mb-5">
                <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl">Calculator App</h1>
                <p class="text-sm text-gray-600">Developed By: Tharaka Sandaruwan</p>
            </div>

            <form class="w-60 mx-auto bg-black text-white rounded-md" @submit.prevent="">
                <div class="flex justify-end" id="loader-content">
                    <img v-if="loader" class="w-10 h-10" src="../assets/loader.gif" alt="Loading" />
                </div>
                <div class="my-2">
                    <TextInput type="text" id="operand" v-model="form.operand" @keyup="addOperand(form.operand,'keyup')" :class="form.operand.length > 7 ? 'text-4xl' : 'text-5xl'" disabled/>
                </div>
                <div id="panel" class="text-sm">
                    <div class="grid grid-cols-4 gap-2 text-center m-2">
                        <div >
                            <mainBtn type="button" :btn_type="0" @click="clearValues">{{ form.operand_1 != '' || form.operand_2 != '' ? 'C': 'AC' }}</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="0" @click="processMinus(form.operand_1 != '')">+/-</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="0" class="grid content-center" :active="percentage_status" @click="processOperator('percentage',true)">
                                <font-awesome-icon icon="percentage" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="1" class="grid content-center" :active="divide_status" @click="processOperator('divide',true)">
                                <font-awesome-icon icon="divide" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                    </div>
                    <div class="grid grid-cols-4 gap-2 text-center m-2">
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(7)">7</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(8)">8</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(9)">9</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="1" class="grid content-center" :active="multiply_status" @click="processOperator('multiply',true)">
                                <font-awesome-icon icon="xmark" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                    </div>
                    <div class="grid grid-cols-4 gap-2 text-center m-2">
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(4)">4</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(5)">5</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(6)">6</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="1" class="grid content-center" :active="subtract_status" @click="processOperator('subtract',true)">
                                <font-awesome-icon icon="subtract" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                    </div>
                    <div class="grid grid-cols-4 gap-2 text-center m-2">
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(1)">1</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(2)">2</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand(3)">3</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="1" class="grid content-center" :active="add_status" @click="processOperator('add',true)">
                                <font-awesome-icon icon="plus" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                    </div>
                    <div class="grid grid-cols-4 gap-2 text-center m-2 pb-2">
                        <div class="col-span-2">
                            <mainBtn :align="'start'" type="button" :btn_type="2" :width="'w-full'" @click="addOperand(0)">0</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="2" @click="addOperand('.')">.</mainBtn> 
                        </div>
                        <div >
                            <mainBtn type="button" :btn_type="1" class="grid content-center" @click="processOperator('equal',true)">
                                <font-awesome-icon icon="equals" size="md" class="px-1"/>
                            </mainBtn> 
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </div>
</template>
  
  
  