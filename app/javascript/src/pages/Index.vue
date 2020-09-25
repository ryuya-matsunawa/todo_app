<template lang="pug">
div
  .todo-table
    md-table(v-model='todos' md-sort='title' md-sort-order='asc' md-card md-fixed-header)
      md-table-toolbar
        h1.md-title Todo
      md-table-row(slot='md-table-row' slot-scope='{ item }' @click="goDetail(item.id)")
        md-table-cell.w-10(md-label='State' md-sort-by='status')
          .status.d-flex-center(:class="item.status")
            | {{ item.status }}
        md-table-cell.w-30(md-label='Limit' md-sort-by='limit') {{ item.limit }}
        md-table-cell.w-30(md-label='Title' md-sort-by='title') {{ item.title }}
        md-table-cell.w-20
          .d-flex-end-x
            button.font-m(v-if="item.status !== 'complete'")
              font-awesome-icon(icon="check-circle")
            button.font-m()
              font-awesome-icon(icon="pen")
            button.font-m()
              font-awesome-icon(icon="trash-alt")

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
    goDetail(id) {
      this.$router.push('/detail/' + id);
    }
  }
}
</script>