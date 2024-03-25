<script>
import { GreetRequest } from './api/Greeter.ts'
import { GreeterClient } from './api/Greeter.client.ts'
import { GrpcWebFetchTransport } from '@protobuf-ts/grpcweb-transport'

export default {
  data() {
    return {
      msg: "",
      greeterClient: null
    }
  },
  methods: {
    GreetBtnClick() {
      const request = GreetRequest.fromJson({
        "name": "World"
      })

      this.greeterClient.getGreeting(
        request, {}
      ).then(
        (res) => {
          let { response } = res
          console.log(
            response.res
          )
          this.msg = response.res
        }
      ).catch(
        (err) => {
          console.log(
            err
          )
          this.msg = err
        }
      )

    }
  },
  mounted() {
    let transport = new GrpcWebFetchTransport({
      baseUrl: "http://localhost:9090"
    })
    this.greeterClient = new GreeterClient(transport)
  }
}
</script>

<template>
  <div class="main">
    <div>{{ msg }}</div>
    <div><button @click="GreetBtnClick">Greet</button></div>
  </div>
</template>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.main {
  width: 100vw;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: 5rem;
  font-weight: bolder;
}

.main button {
  border-radius: 2rem;
  padding: .5rem;
  border-width: .2px;
  background-color: palegreen;
  font-size: 1.5rem;
}
</style>