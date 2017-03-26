<template>
  <div class="panel panel-default">
    <div class="panel-heading">{{ service_name }}</div>
    <div class="panel-body">
      <h3>
        <span class="label" v-bind:class="[statusClass]">
          {{ statusText }}
        </span>
      </h3>
    </div>
  </div>
</template>

<script>
  export default {
    props: ['service_name'],
    name: 'service',
    data () {
      return {
        service_enabled: false
      }
    },
    computed: {
      statusClass() {
        if(this.service_enabled) {
          return 'label-success'
        }
        else {
          return 'label-danger'
        }
      },
      statusText () {
        if(this.service_enabled) {
          return 'on'
        }
        else {
          return 'off'
        }
      }
    },
    mounted() {
      this.$http.get(`/statuses/${this.service_name}`).then((res) => {
        this.service_enabled = res.body.running;
      });
    }
  }
</script>

<style scoped>
  span.label {
    text-transform: uppercase;
  }

  .panel-heading {
    text-transform: capitalize;
  }
</style>
