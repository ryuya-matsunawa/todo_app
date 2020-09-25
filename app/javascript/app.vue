<template lang="pug">
  #app
    Header
    router-view
</template>

<script>
import Header from "./src/components/Header";

export default {
  components: {
    Header
  }
}
</script>

<style scoped>

</style>
