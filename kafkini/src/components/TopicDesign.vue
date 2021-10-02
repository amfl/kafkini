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

  <br>

  <form>
    <details>
      <summary><input type="text" id="msgEnv" v-model="msgEnv">
Replication Factor</summary>
      <p>How many copies of your data there will be in the cluster</p>
    </details>

    <details>
      <summary><input type="text" id="msgEnv" v-model="msgEnv">
Partitions</summary>
      <p>Unit of parallelization</p>
    </details>

    <details>
      <summary>Compacted Topic <input type="checkbox" id="compacted" name="compacted" v-model="configCompacted"></summary>
      <p>This means your topic is squished af</p>
    </details>
  </form>

  <code><pre>
resource "kafka_topic" "logs" {
  name               = "{{ msgDesc }}"
  replication_factor = {{ replicationFactor }}
  partitions         = {{ partitions }}

  config = {
    <span v-if="configCompacted">"cleanup.policy" = "compact"</span>
  }
}
  </pre></code>
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

        replicationFactor: 3,
        partitions: 3,

        configCompacted: true,
      };
    }
  }
</script>

<style>
  h3 {
    margin-bottom: 5%;
  }
</style>
