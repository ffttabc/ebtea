<template>
  <div>
    <div class="footer1" v-if="arr!==''">
      <div class="inner_wrap">
        <div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>新茶客帮助</a>
              </dt>
              <dd class="node-index">
                <a href>商品退货保障</a>
              </dd>
              <dd class="node-index">
                <a href>积分奖励计划</a>
              </dd>
              <dd class="node-index">
                <a href>订单的几种状态</a>
              </dd>
              <dd class="node-index">
                <a href>注册帮助</a>
              </dd>
              <dd class="node-index">
                <a href>顾客必读</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>购物指南</a>
              </dt>
              <dd class="node-index">
                <a href>简单的购物流程</a>
              </dd>
              <dd class="node-index">
                <a href>网站免责声明</a>
              </dd>
              <dd class="node-index">
                <a href>体贴的售后服务</a>
              </dd>
              <dd class="node-index">
                <a href>非会员购物通道</a>
              </dd>
              <dd class="node-index">
                <a href>会员等级折扣</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>帮助中心</a>
              </dt>
              <dd class="node-index">
                <a href>体贴的售后服务</a>
              </dd>
              <dd class="node-index">
                <a href>配送方式</a>
              </dd>
              <dd class="node-index">
                <a href>订单何时出库？</a>
              </dd>
              <dd class="node-index">
                <a href>关于送货和验货</a>
              </dd>
              <dd class="node-index">
                <a href>售后服务</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>帮助中心</a>
              </dt>
              <dd class="node-index">
                <a href>隐私保护政策</a>
              </dd>
              <dd class="node-index">
                <a href>网站免责声明</a>
              </dd>
              <dd class="node-index">
                <a href>网站使用条款</a>
              </dd>
              <dd class="node-index">
                <a href>会员注册协议</a>
              </dd>
              <dd class="node-index">
                <a href>会员隐私协议</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>公司简介</a>
              </dt>
              <dd class="node-index">
                <a href>业务合作</a>
              </dd>
              <dd class="node-index">
                <a href>公司介绍</a>
              </dd>
              <dd class="node-index">
                <a href>公司文化</a>
              </dd>
              <dd class="node-index">
                <a href>联系方式</a>
              </dd>
              <dd class="node-index">
                <a href>招聘信息</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <dl class="content-list">
              <dt class="content-title">
                <a href>公司简介</a>
              </dt>
              <dd class="node-index">
                <a href>业务合作</a>
              </dd>
              <dd class="node-index">
                <a href>公司介绍</a>
              </dd>
              <dd class="node-index">
                <a href>公司文化</a>
              </dd>
              <dd class="node-index">
                <a href>联系方式</a>
              </dd>
              <dd class="node-index">
                <a href>招聘信息</a>
              </dd>
            </dl>
          </div>
          <div class="helper-item">
            <a href>
              <img :src="`http://127.0.0.1:5050/`+arr[2].img" />
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="footer2">
      <div class="inner_wrap2">
        <div style="text-align: center;">
          <img :src="`http://127.0.0.1:5050/`+arr[3].img" alt />
        </div>
        <div style="text-align: center;">
          <font
            face="Tahoma"
          >Copyright © 2009-2015 中茶茗品（北京）科技有限公司ebtea.com 茗茶网|All Rights Reserved|京ICP备12040349号|增值电信业务经营许可证：京ICP证100245号</font>
        </div>
        <div style="text-align: center;">
          <font face="Tahoma">2013-2015北京市重点示范电子商务企业|北京市文化特色产业专项资金扶持企业|2014-2015国家商务典型电子商务服务企业</font>
          |
          <a href title="我们经营的茶叶，茶具产品">茶具</a>
          &nbsp;|
          <span>
            <a href title="站长统计">
              <img :src="`http://127.0.0.1:5050/`+arr[4].img" alt border="0" hspace="0" vspace="0" />
            </a>
          </span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      arr: [{ img: "" }]
    };
  },
  //
  created() {
    this.axios.get("http://localhost:5050/logo/logo").then(result => {
      this.arr = result.data.data;
    });
  }
};
</script>
<style scoped>
ul,
li {
  margin: 0;
  padding: 0;
  display: block;
}
h3 {
  margin: 0;
  font-family: Lucida Grande, Lucida Sans Unicode, Tahoma, Helvetica, Arial,
    Hiragino Sans GB, sans-serif;
}
ol {
  margin-top: 0;
  margin-bottom: 10px;
}
a {
  text-decoration: none;
  color: #666;
}
div,
dl {
  display: block;
}
dd {
  margin-inline-start: 0px;
}
img:hover {
  filter: opacity(70%);
}
.col-md-3,
.col-sm-6 {
  position: relative;
  min-height: 1px;
  float: left;
}
.container {
  width: 1225px;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
.container::before,
.clearfix::before {
  content: "";
  display: table;
}
.container::after,
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
.footer1 {
  background-color: #f9f9f9;
  width: 100%;
  height: 195px;
  position: relative;
}
.footer1 .inner_wrap {
  width: 1225px;
  margin: 0 auto;
}
.inner_wrap {
  padding: 20px 0;
  height: auto;
}
.footer1 .inner_wrap .helper-item {
  float: left;
  width: 160px;
}
.footer1 .inner_wrap .helper-item a img {
  border: 0 none;
}
.footer1 .inner_wrap .helper-item .content-list {
  margin: 0;
}
.content-list .content-title {
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 10px;
}
.content-list .content-title a {
  color: #333;
}
.content-list .node-index {
  line-height: 24px;
  width: 100%;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  display: block;
}
.content-list .node-index a {
  color: #555;
}
.footer2 {
  background-color: #fff;
}
.footer2 .inner_wrap2 {
  text-align: center;
  padding: 10px 0;
  color: #cccccc;
  line-height: 24px;
  width: 1225px;
  margin: 0 auto;
}
</style>