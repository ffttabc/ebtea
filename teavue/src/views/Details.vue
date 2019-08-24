<template>
  <div>
    <myheader></myheader>
    <div class="container">
      <div class="ebtea_main">
        <!-- left-aside -->
        <div class="ebtea_left">
          <div class="e_history">
            <div>
              <ul class="nav-content-list category-content">
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">金属茶具</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">陶瓷茶具</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">茶盘系列</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">玻璃茶具</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">茶道配件</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">电子茶具</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
                <li class="nav-content-item">
                  <a href="javascript:;">
                    <span class="text">茶叶专区</span>
                    <i class="icon">&gt;</i>
                  </a>
                </li>
              </ul>
            </div>
            <div class="banner">
              <a href="javascript:;">
                <img
                  width="155"
                  height="155"
                  :src="arr.length &&`http://127.0.0.1:5050/`+arr[5].img"
                  alt
                />
              </a>
            </div>
            <div class="banner">
              <a href="javascript:;">
                <img
                  width="155"
                  height="155"
                  :src="arr.length &&`http://127.0.0.1:5050/`+arr[6].img"
                  alt
                />
              </a>
            </div>
            <div class="banner">
              <a href="javascript:;">
                <img
                  width="158"
                  height="220"
                  :src="arr.length &&`http://127.0.0.1:5050/`+arr[7].img"
                  alt
                />
              </a>
            </div>
            <div class="banner">
              <a href="javascript:;">
                <img width="158" :src="arr.length &&`http://127.0.0.1:5050/`+arr[8].img" alt />
              </a>
            </div>
          </div>
        </div>
        <!-- 主体 -->
        <div class="inner_warp">
          <!-- 顶部图片 -->
          <div class="banner">
            <a href="javascript:;">
              <img :src="arr.length && `http://127.0.0.1:5050/`+arr[9].img" alt />
            </a>
          </div>
          <!-- 面包屑导航 -->
          <div class="bread-crumbs">
            您当前的位置：
            <span>
              <a href="javascript:;" alt title>首页</a>
            </span>
            <span>»</span>
            <span>
              <a href="javascript:;" alt title v-text="Arr.fname"></a>
            </span>
            <span>»</span>
            <span>
              <a href="javascript:;" alt title v-text="results.tclass"></a>
            </span>
            <span>»</span>
            <span class="now" v-text="results.title"></span>
          </div>
          <div>
            <!-- 产品内容 -->
            <div class="product-container" v-if="results1!=''">
              <!-- 产品效果图 -->
              <div class="product-side">
                <div class="product-album">
                  <!-- 大图 -->
                  <div class="top">
                    <a href="javascript:;">
                      <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                    </a>
                  </div>
                  <!-- 部位图 -->
                  <div class="bottom">
                    <div class="left">
                      <a href="javascript:;"></a>
                    </div>
                    <div class="thumbnail-list">
                      <ul>
                        <li class="active">
                          <div class="thumbnail">
                            <a href="javascript:;">
                              <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                            </a>
                          </div>
                        </li>
                        <li class>
                          <div class="thumbnail">
                            <a href="javascript:;">
                              <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                            </a>
                          </div>
                        </li>
                        <li class>
                          <div class="thumbnail">
                            <a href="javascript:;">
                              <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                            </a>
                          </div>
                        </li>
                        <li class>
                          <div class="thumbnail">
                            <a href="javascript:;">
                              <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                            </a>
                          </div>
                        </li>
                        <li class>
                          <div class="thumbnail">
                            <a href="javascript:;">
                              <img :src="`http://127.0.0.1:5050/`+results1[0].sm" alt />
                            </a>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="right">
                      <a href="javascript:;"></a>
                    </div>
                  </div>
                </div>
                <!-- 分享、推荐、收藏按钮 -->
                <div class="share-recommend">
                  <button class="btn btn-rounded action-handle">
                    <!-- 引入图标 -->
                    <i
                      class="fa fa-share-alt-square fa-lg"
                      aria-hidden="true"
                      style="color:#5c9c30;"
                    ></i>分享
                  </button>
                  <button class="btn btn-rounded action-handle">
                    <!-- 引入图标 -->
                    <i class="fa fa-envelope" aria-hidden="true" style="color:#249ebf;"></i>推荐
                  </button>
                  <button class="bt btn-rounded action-handle">
                    <!-- 引入图标 -->
                    <i class="fa fa-star" aria-hidden="true" style="color:#f49f18;;"></i>收藏
                  </button>
                </div>
              </div>
              <!-- 产品详情 -->
              <div class="product-main">
                <div class="product-titles">
                  <h2 v-text="results.title"></h2>
                  <p v-text="results.subtitle"></p>
                </div>
                <div class="product-information">
                  <p>
                    <span class="label">销售价：</span>
                    <span class="action-price">
                      <b>￥{{results.price}}</b>
                    </span>
                    <i class="minor">(节省￥{{money}})</i>
                  </p>
                  <p>
                    <span class="label">市场价：</span>
                    <del class="action-mktprice minor">￥{{results.market_prices}}</del>
                  </p>
                  <p>
                    <span class="label">商品评分：</span>
                  </p>
                </div>
                <div class="product-params">
                  <span>品牌：</span>
                  <a v-text="results.tname"></a>
                </div>
                <div class="product-buy">
                  <ul>
                    <li class="product-buy-quantity">
                      <span>数量：</span>
                      <el-input-number
                        v-model="num"
                        @change="handleChange"
                        :min="1"
                        :max="10"
                        label="描述文字"
                      ></el-input-number>
                      <span>件</span>
                    </li>
                    <li class="product-buy-action">
                      <a href="login.html" class="btn">立即购买</a>
                      <a href="javascript:;" class="btn">加入购物车</a>
                      <a href="javascript:;">
                        扫一扫购买
                        <i class="fa fa-qrcode fa-lg" aria-hidden="true"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <el-tabs
              v-model="activeName2"
              type="card"
              @tab-click="handleClick"
              class="product-tags clearfix" 
              style="text-align:left"
            >
              <el-tab-pane label="商品详情" name="first">
                <div id="product_detail" class="tab-content tab1">
                  <div class="product-section product-detail">
                    <div class="product-attributes">
                      <ul class="clearfix">
                        <li>
                          品牌：
                          <a href="/brand-15.html">品茶忆友</a>
                        </li>
                        <li>所属分类：紫砂杯</li>
                        <li>适用空间：居家生活</li>
                        <li>泥料：朱泥</li>
                        <li>品名：品茶忆友紫砂茶杯南瓜个人杯</li>
                        <li>使用范围：办公室泡茶、个人泡茶、茶馆泡茶、礼品</li>
                        <li>材质：紫砂</li>
                        <li>颜色：红</li>
                        <li>重量：306克</li>
                        <li>产地：宜兴市</li>
                        <li>容量：100-399ml</li>
                        <li>工艺：纯手工</li>
                        <li>包装：精美包装</li>
                        <li>风格：现代中式</li>
                        <li>商品编号：G5539B618C773F</li>
                      </ul>
                    </div>
                  </div>
                  <div class="detail-content">
                    <div>
                      <div>
                        <img height="70" src="../assets/commodity.jpg" width="740" />
                      </div>
                      <div>
                        <img src="../assets/T2.jpg" alt />
                        <img src="../assets/T3.jpg" alt />
                        <p>紫砂材料透气性优良，具有泡茶不易走味，茶叶不易变质的优点，让茶汤更加香醇美味。</p>
                      </div>
                    </div>
                    <div>
                      <div>
                        <img height="70" src="../assets/commodity2.jpg" width="740" />
                      </div>
                      <div style="text-align: center;margin-top: 10px;margin-bottom: 20px;">
                        <table
                          align="center"
                          border="1"
                          cellpadding="0"
                          cellspacing="0"
                          style="border-collapse: collapse;"
                          width="700"
                        >
                          <tbody>
                            <tr>
                              <td colspan="4" height="60" style="text-align: left;">
                                <img height="500" src="../assets/T4.jpg" width="750" />
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;" width="60">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>品名</strong>
                              </td>
                              <td height="32" style="text-align: left;" width="200">品茶忆友紫砂茶杯南瓜个人杯</td>
                              <td style="text-align: left;" width="60">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>净重</strong>
                              </td>
                              <td height="32" style="text-align: left;" width="200">
                                &nbsp;
                                &nbsp;306克
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>&nbsp;材质</strong>
                              </td>
                              <td height="33" style="text-align: left;">&nbsp; &nbsp;&nbsp;紫砂</td>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>产地</strong>
                              </td>
                              <td height="33" style="text-align: left;">&nbsp; &nbsp;&nbsp;宜兴</td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>&nbsp;工艺</strong>
                              </td>
                              <td height="32" style="text-align: left;">&nbsp; &nbsp;&nbsp;纯手工</td>
                              <td style="text-align: left;">
                                &nbsp;&nbsp; &nbsp;
                                <br />容量
                              </td>
                              <td height="32" style="text-align: left;">&nbsp; &nbsp; 350ml</td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>
                                  &nbsp;商品
                                  <br />&nbsp;&nbsp;&nbsp; 配置
                                </strong>
                              </td>
                              <td height="32" style="text-align: left;">&nbsp; &nbsp;&nbsp;茶杯*1</td>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>经销商</strong>
                              </td>
                              <td height="32" style="text-align: left;">
                                &nbsp;
                                &nbsp;&nbsp;&nbsp;中茶茗品（北京）科技有限公司
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>&nbsp;规格</strong>
                              </td>
                              <td height="32" style="text-align: left;">
                                &nbsp;
                                &nbsp;&nbsp;如图所示（手工测量，有少许偏差，尺寸仅供参考） &nbsp;
                              </td>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;
                                <strong>
                                  产品
                                  <br />&nbsp;&nbsp;
                                  标准号
                                </strong>
                              </td>
                              <td height="32" style="text-align: left;">
                                &nbsp;
                                &nbsp;&nbsp;&nbsp;GB/T
                                10816-2008
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;
                                <strong>&nbsp;&nbsp;颜色</strong>
                              </td>
                              <td colspan="3" height="32" style="text-align: left;">
                                &nbsp;
                                &nbsp;&nbsp;朱泥
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>包装</strong>
                              </td>
                              <td colspan="3" height="36" style="text-align: left;">
                                &nbsp; &nbsp;
                                精美包装
                              </td>
                            </tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>
                                  使用
                                  <br />&nbsp;&nbsp;&nbsp; 范围
                                </strong>
                              </td>
                              <td colspan="3" height="32" style="text-align: left;">
                                &nbsp;
                                &nbsp;&nbsp;办公室泡茶、个人泡茶、茶馆泡茶、礼品
                              </td>
                            </tr>
                            <tr></tr>
                            <tr>
                              <td style="text-align: left;">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>备注</strong>
                              </td>
                              <td
                                colspan="3"
                                height="32"
                                style="text-align: left;"
                              >&nbsp;由于拍摄环境及电脑显示器的原因会导致图片有些许色差，望各位茶友体谅，愿您喜爱！</td>
                            </tr>
                          </tbody>
                        </table>
                        <img src="../assets/T5.jpg" alt />
                      </div>
                      <div style="text-align: center;margin-top: 10.0px;margin-bottom: 20.0px;">
                        <img height="70" src="../assets/commodity2.jpg" width="740" />
                      </div>
                      <div>
                        <img src="../assets/T6.jpg" alt />
                        <p>此杯茶香色浓,即使酷暑亦可保持数日不变味,长期使用,不仅不会出现磨损和划痕,相反会因为吸收了茶汤中的茶油而变得光润似玉,杯身刻画精美，做工细腻，让人爱不释手,</p>
                        <img src="../assets/T7.jpg" alt />
                        <p>紫砂杯使用越久，茶具身色泽越发光亮照人，气韵温雅。紫砂杯长久使用，器身会因抚摸擦拭，变得越发光润可爱。</p>
                        <img src="../assets/T8.jpg" alt />
                        <p>养杯时都是小心翼翼，以保持杯的完整性，当与紫砂杯有了深厚感情，品茗过程也会平添无限乐趣。</p>
                      </div>
                    </div>
                    <div style="margin-bottom:27.6px;">
                      <div>
                        <img height="70" src="../assets/commodity3.jpg" width="740" />
                      </div>
                      <div>
                        <img src="../assets/T9.jpg" alt />
                        <img src="../assets/T10.jpg" alt />
                        <img src="../assets/T11.jpg" alt />
                        <img src="../assets/T12.jpg" alt />
                      </div>
                    </div>
                    <div style="margin-bottom:10px;">
                      <div>
                        <img height="70" src="../assets/commodity4.jpg" width="740" />
                      </div>
                      <div
                        style="border-left: #d6d6d6 1.0px solid;padding-bottom: 8.0px;padding-left: 25.0px;padding-right: 5.0px;border-right: #d6d6d6 1.0px solid;padding-top: 8.0px;"
                      >
                        <img src="../assets/T13.jpg" alt />
                      </div>
                    </div>
                    <div style="margin-bottom:10px;">
                      <div>
                        <img height="70" src="../assets/commodity5.jpg" width="740" />
                      </div>
                      <div
                        style="border-left: #d6d6d6 1.0px solid;padding-bottom: 8.0px;padding-left: 25.0px;padding-right: 5.0px;border-right: #d6d6d6 1.0px solid;padding-top: 8.0px;"
                      >
                        <img src="../assets/T14.jpg" alt />
                      </div>
                    </div>
                    <div style="margin-bottom:10px;">
                      <div>
                        <img height="70" src="../assets/commodity6.jpg" width="740" />
                      </div>
                      <div
                        style="border-left: #d6d6d6 1.0px solid;padding-bottom: 8.0px;padding-left: 25.0px;padding-right: 5.0px;border-right: #d6d6d6 1.0px solid;padding-top: 8.0px;"
                      >
                        <img src="../assets/T15.jpg" alt />
                      </div>
                    </div>
                  </div>
                  <div class="product-comment">
                    <div class="mod-title mod">
                      <h2>商品评论</h2>
                    </div>
                    <div class="product-score">
                      <div class="score-total">
                        <span class="label">商品评分</span>
                        <span class="values">
                          <em class="stars">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                          </em>
                          <b class="score">5.0</b>
                          <span class="total">
                            <b class="total-count">1</b>人评分
                          </span>
                        </span>
                      </div>
                      <div class="scores-right">
                        <ul class="scores-list">
                          <li class="scores-item">
                            <span class="label">产品质量</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                          <li class="scores-item">
                            <span class="label">服务态度</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                          <li class="scores-item">
                            <span class="label">发货速度</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="comment-bottom">
                      <div class="title">
                        共
                        <i>1</i>个评论。
                        <a href="javascript:;">查看全部评论 »</a>
                      </div>
                      <div class="action-content-list">
                        <ul class="content">
                          <li class="comment-item">
                            <div class="member">
                              <div class="member-avatar">
                                <img src="images/avatar.png" alt />
                              </div>
                              <div>匿名</div>
                            </div>
                            <div class="member-discuss">
                              <div class="point point-left">
                                <i class="below"></i>
                                <i class="above"></i>
                              </div>
                              <div class="discuss-label">
                                <span class="stars">
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                </span>
                                <span class="time">19-07-08 00:00</span>
                              </div>
                              <p class="discuss-content">放办公室用 很不错</p>
                              <div class="reply-list">
                                <p class="clearfix reply-action">
                                  <i>已有1条回复</i>
                                  <span class="inter-handle">
                                    <a href="javascript:;">[回复]</a>
                                    <em>
                                      <i class="arrow arrow-top">
                                        <i class="above"></i>
                                      </i>
                                    </em>
                                  </span>
                                </p>
                                <blockquote class="reply-item answer-admin">
                                  <i class="fa fa-quote-left lquote" aria-hidden="true"></i>
                                  <div class="reply-label clearfix">
                                    <span class="infos">
                                      <em>管理员</em> 说
                                    </span>
                                    <span class="time">15-05-15 10:10</span>
                                  </div>
                                  <p class="reply-content">感谢您的选购，祝您喝好茶，好心情</p>
                                  <i class="fa fa-quote-right rquote" aria-hidden="true"></i>
                                </blockquote>
                              </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="product-consult">
                    <div class="mod-title mod">
                      <h2>商品咨询</h2>
                    </div>
                    <div class="consult-title">
                      <a href></a>
                      <button class="btn">
                        <span>我要咨询</span>
                      </button>
                      <em>
                        请
                        <a href="javascript:;">登录</a>后再咨询,如果您不是会员请
                        <a href="javascript:;">注册</a>!
                      </em>
                    </div>
                    <div class="consult-content">
                      <ul class="tabs clearfix switchable-triggerBox">
                        <li>
                          <a href="javascript:;">全部咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">商品咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">配送咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">售后咨询(0)</a>
                        </li>
                      </ul>
                      <div>
                        <div class="no-message">如果您对本商品有什么问题,请提问咨询!</div>
                      </div>
                    </div>
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="商品评论" name="second">
                <div id="product_detail" class="tab-content tab2">
                  <div class="product-comment">
                    <div class="mod-title mod">
                      <h2>商品评论</h2>
                    </div>
                    <div class="product-score">
                      <div class="score-total">
                        <span class="label">商品评分</span>
                        <span class="values">
                          <em class="stars">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                          </em>
                          <b class="score">5.0</b>
                          <span class="total">
                            <b class="total-count">1</b>人评分
                          </span>
                        </span>
                      </div>
                      <div class="scores-right">
                        <ul class="scores-list">
                          <li class="scores-item">
                            <span class="label">产品质量</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                          <li class="scores-item">
                            <span class="label">服务态度</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                          <li class="scores-item">
                            <span class="label">发货速度</span>
                            <em class="stars stars-50">
                              <span class="below">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                            </em>
                            <b class="score">5.0</b>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="comment-bottom">
                      <div class="title">
                        共
                        <i>1</i>个评论。
                        <a href="javascript:;">查看全部评论 »</a>
                      </div>
                      <div class="action-content-list">
                        <ul class="content">
                          <li class="comment-item">
                            <div class="member">
                              <div class="member-avatar">
                                <img src="images/avatar.png" alt />
                              </div>
                              <div>匿名</div>
                            </div>
                            <div class="member-discuss">
                              <div class="point point-left">
                                <i class="below"></i>
                                <i class="above"></i>
                              </div>
                              <div class="discuss-label">
                                <span class="stars">
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                  <i class="fa fa-star" aria-hidden="true"></i>
                                </span>
                                <span class="time">19-07-08 00:00</span>
                              </div>
                              <p class="discuss-content">放办公室用 很不错</p>
                              <div class="reply-list">
                                <p class="clearfix reply-action">
                                  <i>已有1条回复</i>
                                  <span class="inter-handle">
                                    <a href="javascript:;">[回复]</a>
                                    <em>
                                      <i class="arrow arrow-top">
                                        <i class="above"></i>
                                      </i>
                                    </em>
                                  </span>
                                </p>
                                <blockquote class="reply-item answer-admin">
                                  <i class="fa fa-quote-left lquote" aria-hidden="true"></i>
                                  <div class="reply-label clearfix">
                                    <span class="infos">
                                      <em>管理员</em> 说
                                    </span>
                                    <span class="time">15-05-15 10:10</span>
                                  </div>
                                  <p class="reply-content">感谢您的选购，祝您喝好茶，好心情</p>
                                  <i class="fa fa-quote-right rquote" aria-hidden="true"></i>
                                </blockquote>
                              </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="product-consult">
                    <div class="mod-title mod">
                      <h2>商品咨询</h2>
                    </div>
                    <div class="consult-title">
                      <a href></a>
                      <button class="btn">
                        <span>我要咨询</span>
                      </button>
                      <em>
                        请
                        <a href="javascript:;">登录</a>后再咨询,如果您不是会员请
                        <a href="javascript:;">注册</a>!
                      </em>
                    </div>
                    <div class="consult-content">
                      <ul class="tabs clearfix switchable-triggerBox">
                        <li>
                          <a href="javascript:;">全部咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">商品咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">配送咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">售后咨询(0)</a>
                        </li>
                      </ul>
                      <div>
                        <div class="no-message">如果您对本商品有什么问题,请提问咨询!</div>
                      </div>
                    </div>
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="商品咨询" name="third">
                <div id="product_consult" class="tab-content tab3">
                  <div class="product-consult">
                    <div class="mod-title mod">
                      <h2>商品咨询</h2>
                    </div>
                    <div class="consult-title">
                      <a href></a>
                      <button class="btn">
                        <span>我要咨询</span>
                      </button>
                      <em>
                        请
                        <a href="javascript:;">登录</a>后再咨询,如果您不是会员请
                        <a href="javascript:;">注册</a>!
                      </em>
                    </div>
                    <div class="consult-content">
                      <ul class="tabs clearfix switchable-triggerBox">
                        <li>
                          <a href="javascript:;">全部咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">商品咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">配送咨询(0)</a>
                        </li>
                        <li>
                          <a href="javascript:;">售后咨询(0)</a>
                        </li>
                      </ul>
                      <div>
                        <div class="no-message">如果您对本商品有什么问题,请提问咨询!</div>
                      </div>
                    </div>
                  </div>
                  <div class="post-comment">
                    <div class="mod-title">
                      <h2>发表咨询</h2>
                    </div>
                    <div class="mod-content">
                      <ul>
                        <li class="form-item">
                          <label for class="form-label">咨询类型：</label>
                          <div class="form-act">
                            <input
                              type="radio"
                              value="1"
                              name="gask_type"
                              id="for_consult_0"
                              disabled="disabled"
                              checked="checked"
                            />
                            <label for="for_consult_0">商品咨询</label>
                            <input
                              type="radio"
                              value="2"
                              name="gask_type"
                              id="for_consult_1"
                              disabled="disabled"
                            />
                            <label for="for_consult_1">配送咨询</label>
                            <input
                              type="radio"
                              value="3"
                              name="gask_type"
                              id="for_consult_2"
                              disabled="disabled"
                            />
                            <label for="for_consult_2">售后咨询</label>
                          </div>
                        </li>
                        <li class="form-item">
                          <div class="form-act-side no-permission">
                            <textarea
                              class="action-filled-textarea"
                              vtype="required"
                              data-caution="请填写咨询内容，最多1000字"
                              name="comment"
                              disabled="disabled"
                              cols="30"
                              rows="10"
                              placeholder="欢迎发表咨询，最多1000字。"
                            ></textarea>
                            <div class="mini-mask">
                              请
                              <a href="javascript:;">登录</a>后再咨询,如果您不是会员请
                              <a href="javascript:;">注册</a>!
                            </div>
                            <div class="clearfix">
                              <div class="word-count">
                                <i class="current">0</i>/
                                <i class="word-limit">1000</i>
                              </div>
                              <div class="sub-label"></div>
                            </div>
                          </div>
                        </li>
                        <li class="form-item">
                          <label for class="form-label">联系方式：</label>
                          <span class="form-act">
                            <input type="text" name="contact" id disabled="disabled" />
                            <span class="sub-label">可以是电话、email、qq等</span>
                          </span>
                        </li>
                        <li class="form-item">
                          <span class="form-act">
                            <button
                              type="submit"
                              class="btn btn-simple action-submit-post"
                              disabled="disabled"
                            >提交咨询</button>
                          </span>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="销售记录" name="fourth">
                <div id="product_saleslog" class="tab-content tab4">
                  <table class="saleslog">
                    <thead>
                      <tr>
                        <th>买家</th>
                        <th>购买数量</th>
                        <th>购买时间</th>
                        <th>规格</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>ygd***</td>
                        <td>1</td>
                        <td>2015-05-26</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>ygd***</td>
                        <td>1</td>
                        <td>2015-05-22</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>ygd***</td>
                        <td>1</td>
                        <td>2015-05-12</td>
                        <td></td>
                      </tr>
                    </tbody>
                  </table>
                  <div class="p5">截至今日， 累计销售3件</div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="售后服务" name="five">
                <div id="product_shfw" class="tab-content tab5">
                  <div style="text-align:center; padding:15px; border:1px solid #ccc;">
                    <img alt="售后服务" src="../assets/T14.jpg" />
                  </div>
                </div>
              </el-tab-pane>
              <el-tab-pane label="运输帮助" name="six">
                <div id="product_ysbz" class="tab-content tab6">
                  <div style="line-height:180%; padding:15px; border:1px solid #ccc;">
                    我们采用多种配送方式：
                    <br />1、快递运输，支持国内主流的快递如圆通、申通、韵达、顺丰、德邦。
                    <br />2、货到付款：支持顺丰快递到付业务，具体顺丰到付地址请查询
                    <a
                      href="http://www.sf-express.com/cn/"
                      target="_blank"
                    >http://www.sf-express.com/cn/</a>
                    <br />3、nternational expres：International express business, please contact the sales staff to
                    determine thearrival time and address after accounting for freight, in accordance with
                    the actual settlement
                  </div>
                </div>
              </el-tab-pane>
            </el-tabs>
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
      results: [],
      results1: [],
      arr: [],
      arr1: [],
      Arr: {},
      sm: "",
      money: "",
      num: 1,
      activeName2: 'first'
    };
  },
  props: ["lid"],
  created() {
    if (this.lid) {
      this.axios
        .get("http://localhost:5050/details", {
          params: {
            lid: this.lid
          }
        })
        .then(result => {
          var results = result.data.product;
          this.results = results;
          var cut = Number(results.market_prices) - Number(results.price);
          this.money = cut.toFixed(2);
          // console.log(this.results,this.money);
          var results1 = result.data.pics;
          this.results1 = results1;
          console.log(this.results1[0]);
        });
    }
    this.axios.get("http://localhost:5050/logo").then(result => {
      this.arr = result.data.data;
      //   console.log(this.arr);
    });
    this.axios.get("http://localhost:5050/logo/f").then(result => {
      this.arr1 = result.data.data;
      if (this.lid >= 9 && this.lid <= 15) {
        var Arr = this.arr1[0];
        this.Arr = Arr;
      }
      //   console.log(this.arr1);
    });
  },
  methods: {
    handleChange() {
      console.log(this.num);
    },
    handleClick(tab, event) {
        console.log(tab, event);
      }
  }
};
</script>
<style scoped>
@import url("../assets/css/details.css");
</style>