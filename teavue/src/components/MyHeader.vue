<template>
  <div>
    <div id="topbar">
      <div class="inner-wrap2">
        <div class="topbar-left">
          分享优质茶具、茶叶，品味饮茶的乐趣，客服电话：400-6576-218
          <a href="http://127.0.0.1:5050/login.html">登录</a>
          <span>|</span>
          <a href="http://127.0.0.1:5050/reg.html">注册</a>
        </div>
        <div class="topbar-right">
          <a href="javascript:;">会员中心</a>
          <a href="javascript:;">微信登录</a>
          <a href="javascript:;">帮助中心</a>
          <a href="javascript:;">关于我们</a>
          <a href="javascript:;">联系我们</a>
        </div>
      </div>
    </div>
    <div id="header">
      <div class="inner-wrap2">
        <div class="header-left">
          <a href="../index.html">
            <img :src="arr.length &&`http://127.0.0.1:5050/`+arr[0].img" alt />
          </a>
        </div>
        <div class="header-main">
          <div>
            <input type="text" class="x-input" placeholder="春百花，夏有风，清茗煮沸待友来" />
            <button>
              <span class="icon">搜索</span>
            </button>
          </div>
          <div class="hots">
            <span>热门搜索：</span>
            <a href="javascript:;">铁壶</a>
            <a href="javascript:;">汝窑</a>
            <a href="javascript:;">玻璃杯</a>
            <a href="javascript:;">品茶忆友</a>
          </div>
        </div>
        <div class="header-right">
          <a href="javascript:;" target="_blank">
            <img :src="arr.length &&`http://127.0.0.1:5050/`+arr[1].img" alt />
          </a>
        </div>
      </div>
    </div>
    <div id="nav">
      <div class="inner-wrap2">
        <div class="nav-left">
          <div class="nav-hand" id="nav_hand">
            <ul>
              <li class="column">
                <el-dropdown>
                  <span class="every">
                    所有商品分类
                    <i class="el-icon-arrow-down el-icon--right"></i>
                  </span>
                  <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item v-for="(item,i) of fam" :key="i" class="nav-content-item">
                      <span class="text">{{item.fname}}</span>
                      <i class="icon">&gt;</i>
                    </el-dropdown-item>
                  </el-dropdown-menu>
                </el-dropdown>
              </li>
            </ul>
          </div>
        </div>
        <div class="nav-main">
          <ul>
            <li class="active">
              <a href>首页</a>
            </li>
            <li>
              <a href>会员中心</a>
            </li>
            <li>
              <a href>品牌汇</a>
            </li>
            <li>
              <a href>限时优惠</a>
            </li>
            <li>
              <a href>积分兑换</a>
            </li>
            <li>
              <a href>秒杀</a>
            </li>
            <li>
              <a href>新品上线</a>
            </li>
            <li>
              <a href>铁壶之源</a>
            </li>
            <li>
              <a href>视频</a>
            </li>
          </ul>
        </div>
        <div class="nav-right minicart">
          <a href="http://127.0.0.1:5050/cart.html" class="minicart-text">
            <i class="icon"></i>
            购物车中有
            <b>0</b>
            件商品
          </a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      arr: [],
      fam: ""
    };
  },
  // props: {
  //   arr: {
  //     type: Array,
  //     default: function() {
  //       return [];
  //     }
  //   }
  // },
  created() {
    this.axios.get("http://localhost:5050/logo").then(result => {
      this.arr = result.data.data;
      console.log(this.arr)
    });
    this.axios.get("http://localhost:5050/logo/f").then(result => {
      this.fam = result.data.data;
      console.log(this.fam);
    });
  }
};
</script>
<style scoped>
body {
  font-family: Lucida Grande, Lucida Sans Unicode, Tahoma, Helvetica, Arial,
    Hiragino Sans GB, sans-serif;
}
a {
  color: #666;
  text-decoration: none;
}
ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
img:hover {
  filter: opacity(70%);
}
#topbar {
  height: 32px;
  line-height: 32px;
  background-color: #f7f7f7;
}
.inner-wrap2 {
  width: 1225px;
  margin: 0 auto;
}
.inner-wrap2:after {
  content: "\0020";
  display: block;
  visibility: hidden;
  clear: both;
  height: 0;
  overflow: hidden;
}
.topbar-left {
  float: left;
}
.topbar-left a {
  margin: 0 3px;
}
.topbar-left span {
  margin-left: 4px;
  padding: 0;
}
.topbar-right {
  float: right;
}
.topbar-right a {
  margin: 0 3px;
}
#header .inner-wrap2 {
  margin: 20px auto;
}
.header-left {
  float: left;
  width: 350px;
}
.header-left img {
  margin-top: 15px;
}
.header-main {
  float: left;
}
.header-main {
  margin-left: 20px;
  width: 490px;
  margin-top: 25px;
}
.header-main input {
  width: 390px;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
  padding: 1px;
}
.header-main .x-input {
  border-width: 1px;
  border-color: #ccc;
  padding: 1px;
  border-style: solid;
  position: relative;
  top: -1px;
}
.header-main button {
  height: 34px;
  overflow: hidden;
  border: 0 none;
  background-color: #1a8717;
  padding: 0;
  margin: 0;
  white-space: nowrap;
  cursor: pointer;
  width: 50px;
}
.header-main button span {
  line-height: 32px;
  border-color: #1a8717;
  background-color: #1a8717;
  order: 1px solid #ccc;
}
.header-main button .icon {
  font-size: 14px;
  color: #fff;
  padding: 0 10px;
}
.header-main .hots {
  line-height: 25px;
  color: #666666;
  position: relative;
  top: -1px;
}
.header-right {
  float: right;
  padding-top: 10px;
}

/* 下拉框 */
#nav {
  border-bottom: 2px solid #8dda3e;
  /* height: 10px; */
}
.nav-left,
.nav-main {
  float: left;
}
.nav-right {
  float: right;
}
#nav .nav-left .nav-hand {
  width: 160px;
  line-height: 40px;
  text-align: center;
  font-size: 14px;
  font-weight: bold;
}
#nav .nav-left .nav-hand .column {
  position: relative;
}
#nav .nav-left .nav-hand span.every {
  color: white;
  display: block;
  width: 160px;
  background-color: #46ba11;
}
.el-dropdown-menu__item {
  padding-left: 20px;
  padding-right: 10px;
  padding-top: 1px;
  display: block;
  color: #666;
  height:36px;
  font-weight: 400;
  overflow: hidden;
  text-align: left;
  border-left: 1px solid #e0e0e0;
  border-right: 1px solid #e0e0e0;
}

.el-dropdown-menu__item span {
  width: 113px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  display: block;
  /* vertical-align: middle; */
  float: left;
  font-size: 14px;
}

/* 导航条 */
.nav-main {
  width: 825px;
  margin-left: 0;
}
.nav-main li {
  line-height: 40px;
  font-size: 14px;
  float: left;
}
.nav-main li a {
  color: #333;
  display: block;
  padding: 0 20px;
}
.nav-main .active a {
  color: #086303;
  font-weight: bold;
}
.nav-main li a:hover {
  background-color: #66d134;
  color: #fff;
}
.nav-right {
  width: 240px;
  line-height: 40px;
  text-align: right;
  position: relative;
  z-index: 3;
  text-align: center;
}
.minicart {
  line-height: 40px;
  position: relative;
  z-index: 3;
}
.icon {
  font-family: iconfonts, sans-serif;
  font-style: normal;
}
.minicart .minicart-text {
  height: 40px;
  display: block;
  color: #46ba11;
}
.minicart .minicart-text:hover {
  background-color: #46ba11;
  color: #fff;
}
.nav-content {
  background-color: #f9f9f9;
  border-bottom: 1px solid #e0e0e0;
  line-height: 47px;
  position: absolute;
  width: 160px;
  z-index: 99;
}
.nav-content .nav-content-item {
  position: relative;
  font-size: 14px;
}
</style>