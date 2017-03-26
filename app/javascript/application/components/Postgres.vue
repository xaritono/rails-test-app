<template>
  <div class="col-md-3">
    <service :service_name="'postgres'"></service>
  </div>
</template>

<script>
  import Service from './Service.vue'

  export default {
    name: 'postgres',
    components: { Service }
  }
</script>
