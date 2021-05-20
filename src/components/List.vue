<template>
  <div>
    <h1>My To Do List</h1>
    <!--displays list -->
    <ul>
      <!-- <li v-bind:id="'list-' + id" v-for="item in listItems">{{ item }}</li>-->

        <div v-for="item in listItems" v-bind:key="item.id">
        </div>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'list',
  data () {
    return {
      listItems: [
        'buy food',
        'play games',
        'sleep',
      ],
    }
  },
}
</script>
