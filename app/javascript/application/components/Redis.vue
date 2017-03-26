<template>
  <div class="col-md-3">
    <service :service_name="'redis'"></service>
  </div>
</template>

<script>
  import Service from './Service.vue'

  export default {
    name: 'redis',
    components: { Service }
  }
</script>
