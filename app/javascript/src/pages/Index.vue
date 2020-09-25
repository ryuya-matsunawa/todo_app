<template lang="pug">
.todo-page
  p
    | TODOリスト表示用ページ
  table
    thead
      tr
        th タスク名
        th ステータス
    tbody
      template(v-for="todo in todos")
        tr
          td
            | {{ todo.title }}
          td
            | {{ todo.finished }}
  button
    router-link(to="/detail/1")
      | detail
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      todos: []
    }
  },
  mounted() {
    this.fetchTodos();
  },
  methods: {
    fetchTodos () {
      this.todos = [];
      axios.get('/api/todos').then((response) => {
        response.data.todos.forEach((todo) => {
          this.todos.push(todo);
        });
      }, (error) => {
        console.log(error);
      });
    },
  }
}
</script>