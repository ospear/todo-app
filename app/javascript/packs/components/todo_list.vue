<template>
  <div>
    <p v-for="(todo, idx) in todos">
      {{ idx }}. {{ todo.title }}
      <button @click="remove(idx)">X</button>
    </p>
    <input type="text" v-model="newTitle" placeholder="new todo"/>
    <button @click="add()">New</button>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      newTitle: '',
      todos: [{title: 'todo sample 1'}]
    }
  },
  methods: {
    add() {
      if (!this.newTitle) return
      this.todos.push({title: this.newTitle})
      this.newTitle = ''
    },
    remove(idx) {
      this.todos.splice(idx, 1)
    }
  }
}
</script>
