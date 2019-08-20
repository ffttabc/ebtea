<template>
  <div>
    <myheader></myheader>
    <carousel :items="items" v-if="items"></carousel>
    <div class="section-main" v-if="results!==''">
      <div class="main_item" id="f0">
        <ul class="goods_list">
          <li class="goods_item" v-for="(item,i) of p1" :key="i">
            <router-link :to="`/details/${item.href.split('=')[1]}`">
              <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
              <h3 class="goods_name">{{item.title}}</h3>
              <p>￥{{item.price.toFixed(2)}}</p>
            </router-link>
          </li>
        </ul>
      </div>
      <div class="main_shop" v-if="results" id="f1">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>01F</div>
          <h2>金属茶具</h2>
          <h3>国产铁壶第一家，茶器精髓，铁壶之魂，厚重之美，精湛工艺完美体现！</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[6].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[6].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[8].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[8].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[7].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[7].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p2" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f2">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>02F</div>
          <h2>陶瓷茶具</h2>
          <h3>中国陶瓷茶具的典范！</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[16].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[16].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[17].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[17].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[15].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[15].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p3" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f3">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>03F</div>
          <h2>茶叶专区</h2>
          <h3>不是因为茶叶多，而是我们只做品质茶</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[25].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[25].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[26].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[26].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[24].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[24].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p4" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <!-- <del>
                    <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>-->
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f4">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>04F</div>
          <h2>电子茶具</h2>
          <h3>泡茶、煮水，品茗电器</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[34].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[34].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[35].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[35].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[33].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[33].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p5" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f5">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>05F</div>
          <h2>茶盘系列</h2>
          <h3>实木茶具，花梨木，黑檀木</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[43].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[43].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[44].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[44].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[42].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[42].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p6" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f6">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>06F</div>
          <h2>玻璃茶具</h2>
          <h3>晶莹剔透，如玉之美，玻璃茶具</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[52].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[52].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[53].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[53].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[51].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[51].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p7" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="main_shop" id="f7">
        <div class="main_shop_h1">
          <span>
            <a href="javascript:;">查看更多 ></a>
          </span>
          <div>07F</div>
          <h2>茶道配件</h2>
          <h3>香茶、茶则、茶道、茶刀</h3>
        </div>
        <div class="main_shop_cart">
          <div class="left">
            <div class="banner">
              <router-link :to="`/details/${results[61].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[61].pic" alt />
              </router-link>
            </div>
            <div class="banner">
              <router-link :to="`/details/${results[62].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[62].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="center">
            <div class="banner">
              <router-link :to="`/details/${results[60].href.split('=')[1]}`">
                <img :src="`http://127.0.0.1:5050/`+results[60].pic" alt />
              </router-link>
            </div>
          </div>
          <div class="right">
            <ul class="goods_list">
              <li class="goods_item" v-for="(item,i) of p8" :key="i">
                <div class="goods_pic">
                  <router-link :to="`/details/${item.href.split('=')[1]}`">
                    <img :src="`http://127.0.0.1:5050/`+item.pic" alt />
                    <h3 class="goods_name">{{item.title}}</h3>
                    <div class="goods_price">
                      <ins>
                        <i>￥{{item.price.toFixed(2)}}</i>
                      </ins>
                      <del>
                        <i>￥{{item.market_prices.toFixed(2)}}</i>
                      </del>
                    </div>
                  </router-link>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <myfooter></myfooter>
  </div>
</template>
<script>
export default {
  data() {
    return {
      results: "",
      items: [],
      p1: [],
      p2: [],
      p3: [],
      p4: [],
      p5: [],
      p6: [],
      p7: [],
      p8: []
    };
  },
  created() {
    this.axios.get("http://localhost:5050/index").then(result => {
      var results = result.data.data;
      this.results = results;
      var p1 = results.slice(0, 6);
      var p2 = results.slice(9, 15);
      var p3 = results.slice(18, 24);
      var p4 = results.slice(27, 33);
      var p5 = results.slice(36, 42);
      var p6 = results.slice(45, 51);
      var p7 = results.slice(54, 60);
      var p8 = results.slice(63, 69);
      this.p1 = p1;
      this.p2 = p2;
      this.p3 = p3;
      this.p4 = p4;
      this.p5 = p5;
      this.p6 = p6;
      this.p7 = p7;
      this.p8 = p8;
      console.log(this.results);
    });
    this.axios.get("http://localhost:5050/index/carousel").then(result => {
      this.items = result.data.data;
    });
  }
};
</script>
<style >
* {
  padding: 0;
  margin: 0;
}
body {
  font-family: Lucida Grande, Lucida Sans Unicode, Tahoma, Helvetica, Arial,
    Hiragino Sans GB, sans-serif;
}

body {
  font-size: 75%;
  line-height: 1.5;
  height: 2000px;
}
ul,
ol,
menu {
  list-style: none;
  margin: 0;
  padding: 0;
}
a {
  text-decoration: none;
  color: #666;
}
h1,
h2,
h3 {
  margin: 0;
}
i {
  font-style: normal;
}
img:hover {
  filter: opacity(70%);
}
.goods-item .goods-name {
  margin-bottom: 10px;
}
.trigger-item {
  float: left;
}
.section-banner {
  width: 100%;
  height: 360px;
  min-width: 1225px;
  background: #f7f7f7;
}
.banner-wrap {
  width: 1225px;
  margin: 0 auto;
}
#main-slide {
  height: 360px;
  width: 1226px;
  margin-bottom: 10px;
  overflow: hidden;
  position: relative;
}
#main-slide img {
  width: 100%;
}
#index {
  position: absolute;
  bottom: 20px;
  right: 20px;
}
#index li {
  line-height: 25px;
  color: #fff;
  float: left;
  height: 25px;
  width: 25px;
  margin: 0 5px;
  font-size: 16px;
  text-align: center;
  border-radius: 50%;
  list-style: none;
  cursor: pointer;
  background-color: transparent;
}
.main_item {
  width: 1224px;
  margin: 10px auto;
  padding-top: 15px;
  border: 1px solid #e0e0e0;
  border-top: 1px solid #8dda3e;
}
.section-main .goods_list {
  width: 1224px;
  height: 220px;
  overflow: hidden;
}
.section-main .goods_list .goods_item {
  width: 190px;
  padding: 0 7px;
  height: 220px;
  float: left;
  text-align: center;
}
.section-main .goods_list .goods_item img {
  width: 140px;
  height: 140px;
}
.goods_item .goods_name {
  font-size: 12px;
  line-height: 18px;
  height: 36px;
  overflow: hidden;
  font-weight: 400;
  margin-bottom: 10px;
}
.goods_item p {
  font-weight: bold;
  color: #086303;
  font-size: 14px;
}
.main_shop {
  width: 1226px;
  margin: 0 auto 10px auto;
}
.main_shop .main_shop_h1 {
  height: 30px;
  border-bottom: 1px solid #8dda3e;
}
.main_shop span {
  float: right;
  line-height: 30px;
}
.main_shop_h1 div {
  float: left;
  height: 22px;
  line-height: 22px;
  padding-top: 8px;
  font-size: 12px;
  color: #999;
}
.main_shop_h1 h2 {
  float: left;
  height: 30px;
  line-height: 30px;
  font-size: 18px;
  color: #086303;
  padding: 0 10px;
}
.main_shop_h1 h3 {
  float: left;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
  color: #666;
  font-weight: normal;
}
.main_shop_cart {
  width: 1224px;
  height: 470px;
  border-left: 1px dashed #e0e0e0;
  border-right: 1px dashed #e0e0e0;
}
.main_shop_cart .left {
  width: 210px;
  height: 470px;
  float: left;
}
.main_shop_cart .banner img {
  display: block;
}
.main_shop_cart .center {
  width: 310px;
  height: 470px;
  float: left;
}
.main_shop_cart .right {
  width: 704px;
  height: 470px;
  float: right;
  overflow: hidden;
}
.main_shop_cart .right .goods_list {
  width: 705px;
  height: 470px;
  overflow: hidden;
}
.main_shop_cart .right .goods_list li {
  width: 220px;
  padding: 10px 7px 5px 7px;
  height: 219px;
  border-bottom: 1px dashed #e0e0e0;
  border-left: 1px dashed #e0e0e0;
  float: left;
  text-align: center;
}
.goods_pic img {
  width: 140px;
  height: 140px;
}
.goods_item .goods_name {
  font-size: 12px;
  line-height: 18px;
  height: 36px;
  overflow: hidden;
}
.right .goods_price {
  color: #086303;
}
.right .goods_price ins {
  text-decoration: none;
  font-weight: bold;
}
.right .goods_price ins i {
  font-size: 14px;
}
.right .goods_price del {
  color: #999;
}
</style>
