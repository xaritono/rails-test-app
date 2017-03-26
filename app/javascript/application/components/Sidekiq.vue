<template>
  <div class="col-md-3">
    <service :service_name="'sidekiq'"></service>
  </div>
</template>

<script>
  import Service from './Service.vue'

  export default {
    name: 'sidekiq',
    components: { Service }
  }
</script>
