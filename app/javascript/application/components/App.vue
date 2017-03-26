<template>
  <div id="app">
    <div class="col-md-3">
      <div class="panel panel-default">
        <div class="panel-heading">Webpack</div>
        <div class="panel-body">
          <h3>
            <span class="label label-success">ON</span>
          </h3>
        </div>
      </div>
    </div>

    <postgres></postgres>
    <sidekiq></sidekiq>
    <elasticsearch></elasticsearch>
    <redis></redis>
  </div>
</template>

<script>
  import Elasticsearch from './Elasticsearch.vue'
  import Redis from './Redis.vue'
  import Sidekiq from './Sidekiq.vue'
  import Postgres from './Postgres.vue'

  export default {
    components: {
      Postgres,
      Elasticsearch,
      Redis,
      Sidekiq,
    }
  }
</script>
