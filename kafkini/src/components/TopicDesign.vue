<template>
  <h3>Topic: <span id="topicName">
      <span class="topicElement">{{ msgType }}</span>.<span class="topicElement">{{ msgDomain }}</span>.<span class="topicElement">{{ msgDesc }}</span>.<span class="topicElement">{{ msgEnv }}</span>
  </span></h3>

  <form>
    <label for="msgType">Type: </label><input type="text" id="msgType" v-model="msgType"><br>
    <label for="msgType">Domain: </label><input type="text" id="msgDomain" v-model="msgDomain"><br>
    <label for="msgType">Dataset: </label><input type="text" id="msgDesc" v-model="msgDesc"><br>
    <label for="msgType">Environment: </label><input type="text" id="msgEnv" v-model="msgEnv"><br>
  </form>
</template>

<script>
  export default {
    name: 'TopicDesign',
    data() {
      return {
        msgType: "streaming",
        msgDomain: "cards",
        msgDesc: "donut service",
        msgEnv: "prod",
      };
    }
  }
</script>

<style>
  h3 {
    margin-bottom: 5%;
  }
</style>
