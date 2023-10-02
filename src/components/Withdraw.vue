<template>
  <n-space>
    <n-input-number v-model:value="withdraw" clearable />
    <n-input v-model:value="description" type="text" placeholder="取钱说明"/>
    <n-button type="warning" @click="executeWithdraw(withdraw, description)">取钱</n-button>
  </n-space>
  <n-space>
    <n-input-number v-model:value="invest" clearable />
    <n-input v-model:value="description" type="text" placeholder="投资目标"/>
    <n-button type="warning" @click="executeInvest(invest, description)">投资</n-button>
  </n-space>
</template>

<script lang='ts'>
import { defineComponent, ref } from 'vue'
import { NInputNumber, NButton, NSpace, NInput } from 'naive-ui';
import ax from 'axios'

export const axios = ax
export default defineComponent({
  name: 'Withdraw',
  components: {
    NInputNumber,
    NInput,
    NButton,
    NSpace
  },
  setup () {
    return {
      withdraw: ref(0),
      invest: ref(0),
      description: ref("")
    }
  },
  methods: {
    executeWithdraw: function ( amount: any, description: any ) {
      let todayDate = new Date();
      var dd = String(todayDate.getDate()).padStart(2, '0');
      var mm = String(todayDate.getMonth() + 1).padStart(2, '0'); //January is 0!
      var yyyy = todayDate.getFullYear();
      var today: string = yyyy + '-' + mm + '-' + dd;
      axios.post(document.location.origin + '/withdraw', {
          date: today,
          amount: amount,
          description: description,
          delete: false,
          sequence: 0
        })
      window.location.reload();
    },
    executeInvest: function ( amount: any, description: any ) {
      axios.post(document.location.origin + '/invest', {
          amount: amount,
          description: description
        })
      window.location.reload();
    }
  }
})
</script>
