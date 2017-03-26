<template>
  <div class="col-md-3">
    <service :service_name="'elasticsearch'"></service>
  </div>
</template>

<script>
  import Service from './Service.vue'

  export default {
    name: 'elasticsearch',
    components: { Service }
  }
</script>
