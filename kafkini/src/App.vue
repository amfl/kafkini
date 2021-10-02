<template>
  <div id="app">
    <TopicDesign />
  </div>
</template>

<script>
import TopicDesign from './components/TopicDesign.vue'

export default {
  name: 'App',
  components: {
    TopicDesign
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  margin-top: 60px;
}
</style>
