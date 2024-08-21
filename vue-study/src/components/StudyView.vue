<template>
  <div>
    <!-- 상단메뉴 -->
    <div class="menu">
      <a v-for="menu in menuList" :key="menu">{{ menu }}</a>
    </div>
    <!-- @click은 onClick과 동일 -->
    <div>
        <p>{{ products[0] }}</p>
        <p>{{ price[0] }}만원</p>
        <button @click="increase()">허위매물신고</button>
        <p>신고수: {{ num }}</p>
    </div>
    <div>
      <p>{{ products[1] }}</p>
      <p>{{ price[1] }}만원</p>
      <button @click="increase()">허위매물신고</button>
      <p>신고수: {{ num }}</p>
    </div>
    <div>
      <p>{{ products[2] }}</p>
      <p>{{ price[2] }}만원</p>
      <button @click="increase()">허위매물신고</button>
      <p>신고수: {{ num }}</p>
    </div>
  </div>
</template>
<script>
// 240821.Vue의 데이터바인딩 문법
// - js에서 변수나 데이터를 HTML에 넣는 방식(document.getElementById(어쩌구).innerHTML = 데이터;)을
// vue에서는 data()안에 넣어 부르는 방식을 이용
// - 함수를 만들 땐, methodes: {} 항목에 만들어주면되며 '함수이름(){}'방식으로 만들면된다.
// 여기서 데이터를 가져다쓰고 싶으면 꼭 'this.데이터이름'으로 사용해야 함
export default {
  name: 'App',
  data(){
    return{
      menuList : ['Home', 'shop', 'About'], 
      products : ['역삼동원룸', '천호동원룸', '마포구원룸'],
      price : ['60', '70', '80'],
      num: 0,
    }
  },
  methods: {
    increase(){
      this.num++
    }
  },
  components:{
  }
}
</script>
<style lang="scss">
// scss를 사용하려면, 터미널에서 npm install --save-dev node-sass sass-loader로 설치해주면된다.
.menu {
  padding:10px 0;
  background:#EEE;
  a {
    padding:0 20px;
  }
}
button {
    padding:2px 5px;
    color:#FFF;
    outline:none;
    border:1px solid #111;
    background:#111;
  }
</style>