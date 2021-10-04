<template>
  <h3>Topic: <span id="topicName">
      <span class="topicElement">{{ getTopicName() }}</span>
  </span></h3>

  <form>
    <label for="msgType">Type: </label>
    <select id="msgType" v-model="msgType">
      <option disabled value="">Select type</option>
      <option v-for="type in types()" v-bind:key="type">{{type}}</option>
    </select>
    <br>

    <label for="msgType">Domain: </label>
    <select id="msgEnv" v-model="msgDomain">
      <option disabled value="">Select domain</option>
      <option v-for="domain in domains()" v-bind:key="domain">{{domain}}</option>
    </select>
    <br>

    <label for="msgType">Dataset: </label><input type="text" id="msgDesc" v-model="msgDesc"><br>

    <label for="msgType">Environment: </label>
    <select id="msgEnv" v-model="msgEnv">
      <option disabled value="">Select environment</option>
      <option v-for="env in envs()" v-bind:key="env">{{env}}</option>
    </select>
  </form>

  <br>

  <form>
    <details>
      <summary><input type="text" id="replicationFactor" v-model="replicationFactor"> Replication Factor</summary>
      <p>How many copies of your data there will be in the cluster</p>
    </details>

    <details>
      <summary><input type="text" id="partitions" v-model="partitions"> Partitions</summary>
      <p>Unit of parallelization</p>
    </details>

    <details>
      <summary>Compacted Topic <input type="checkbox" id="compacted" name="compacted" v-model="configCompacted"></summary>
      <p>This means your topic is squished af</p>
    </details>
  </form>

  <code><pre>
resource "kafka_topic" "{{ getModuleName() }}" {
  name               = "{{ getTopicName() }}"
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

        selectedEnv: null,

        replicationFactor: 3,
        partitions: 3,

        configCompacted: true,
      };
    },
    methods: {
        getTopicName() {
            // TODO: handle periods in here
            let topicName = this.msgType + '.' + this.msgDomain + '.' + this.msgDesc + '.' + this.msgEnv
            topicName = topicName.toLowerCase()
            topicName = topicName.replaceAll(' ', '_');
            topicName = topicName.replaceAll('-', '_');
            return topicName;
        },
        getModuleName() {
            return this.getTopicName().replaceAll('.', '_');
        },
        envs() {
            return [
                'dev','test', 'uat', 'prod'
            ];
        },
        types() {
            return [
                'streaming','fact', 'cdc'
            ];
        },
        domains() {
            return [
                'cards','finance', 'customer', 'something else'
            ];
        }
    }
  }
</script>

<style>
  h3 {
    margin-bottom: 5%;
  }
</style>
