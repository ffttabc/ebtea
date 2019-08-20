SET NAMES UTF8;
DROP DATABASE IF EXISTS tea;
CREATE DATABASE tea CHARSET=UTF8;
USE tea;


/**茶壶型号家族**/
CREATE TABLE tea_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
/**茶壶品类**/
CREATE TABLE tea_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  market_prices DECIMAL(10,2),#市场价格
  spec VARCHAR(64),           #规格/颜色
  tname VARCHAR(32),          #品牌
  tclass VARCHAR(32),         #所属分类
  suitable VARCHAR(32),       #适用人数
  space VARCHAR(32),	      #适应空间
  name VARCHAR(32),           #品名
  scope VARCHAR(32),          #适用范围
  cases VARCHAR(32),          #件数
  texture VARCHAR(32),        #材质
  color VARCHAR(32),          #颜色
  weight VARCHAR(32),         #重量
  area VARCHAR(32),           #产地
  pack VARCHAR(32),	      #包装
  style VARCHAR(32),          #风格
  code VARCHAR(32),           #商品编号
  pug VARCHAR(32),		#泥料
  author VARCHAR(32),           #作者
  capacity VARCHAR(32),         #容量
  craft VARCHAR(32),            #工艺
  shape VARCHAR(32),            #形状
  choose VARCHAR(32),           #选购热点
  stove VARCHAR(32),            #适用灶炉
  configuration VARCHAR(32)     #商品配置
);

/**茶壶图片**/
CREATE TABLE tea_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #茶壶编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);

/**用户信息**/
CREATE TABLE tea_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE tea_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE tea_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE tea_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE tea_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/****用户登录****/
CREATE TABLE tea_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);

/****首页轮播广告商品****/
CREATE TABLE tea_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);


/****logo图片****/
CREATE TABLE tea_index_logo(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
);

/****首页商品****/
CREATE TABLE tea_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  market_prices DECIMAL(10,2),
  href VARCHAR(128)
 # seq_recommended TINYINT,
  #seq_new_arrival TINYINT,
 # seq_top_sale TINYINT
);

/*******************/
/******数据导入******/
/*******************/
/**茶壶型号家族**/
INSERT INTO tea_laptop_family VALUES
(NULL,'金属茶具'),
(NULL,'陶瓷茶具'),
(NULL,'茶叶专区'),
(NULL,'电子茶具'),
(NULL,'茶盘系列'),
(NULL,'玻璃茶具'),
(NULL,'茶道配件');

/**茶壶**/
INSERT INTO tea_laptop VALUES
(1, 1, '品茶忆友 日本云龙银制烧水壶 烧水银壶茶壶 手工打造功夫茶具', '买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '黑色 铁锈色', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, '品茶忆友 日本云龙银制烧水壶 烧水银壶茶壶 手工打造功夫茶具', '买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '黑色 铁锈色', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3,'尚明泡茶壶过滤 耐热玻璃茶具耐热玻璃飘逸杯 玻璃壶耐高温飘逸壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4,'品茶忆友 龙旦茶叶罐紫砂 大号普洱茶缸原矿密封罐包装罐 醒茶罐','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5,'金灶B3 智能电水壶水晶电热玻璃煮水壶 烧水壶透明煮茶壶恒温壶 ','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6,'品茶忆友 茶盘 天然整块黑金石手绘茶盘 大号彩绘茶盘排水式茶台','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7,'品茶忆友 手工纯铜鎏金杯垫 黄铜杯托 精工制作隔热垫 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8,'品茶忆友 耐热透明玻璃壶 提梁彩色把烧水壶加厚煮茶壶 茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9,9 ,'品茶忆友 老铁壶铸铁茶壶无涂层铜把铸铁壶国产茶壶双龙铁壶茶具 双龙铁壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10,10 ,'品茶忆友 手工仿古手绘青花瓷山水茶杯 高脚釉中彩孔雀杯品茗杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20,'品茶忆友 麻布纯棉茶席 禅意桌旗布大号茶席茶垫茶布茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30,'品茶忆友 麻布纯棉茶席 禅意桌旗布大号茶席茶垫茶布茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40,'品茶忆友 麻布纯棉茶席 禅意桌旗布大号茶席茶垫茶布茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 45,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 46,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 47,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 48,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 49,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50,50 ,'品茶忆友 手工仿古手绘青花瓷山水茶杯 高脚釉中彩孔雀杯品茗杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 54,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 55,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 56,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 58,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 59,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 60,'品茶忆友 麻布纯棉茶席 禅意桌旗布大号茶席茶垫茶布茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 61,'品茶忆友 景德镇陶瓷器茶杯手工绘画经典釉下彩青花瓷品茗杯茶盏','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 62,'品茶忆友 简约竹制茶盘储水式干泡台日式长方形托盘茶台套装茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 63,'品茶忆友 素圆铁壶铁壶 茶具茶壶铸铁烧水壶无涂层生铁壶煮水茶壶','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 64,'品茶忆友竹制茶盘 整块茶盘干泡盘  平板托盘 茶台 茶道配件','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 65,'品茶忆友 手工竹制电陶炉 静音铁壶专用茶炉 铜壶银壶烧水炉','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 66,'品茶忆友 六度杯 青花瓷品杯茶杯陶瓷景德镇功夫茶具 白瓷小茶杯','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 67,'品茶忆友 汝窑茶具套装 开片宽心茶组整套手工陶瓷功夫汝窑茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 68,'品茶忆友 中式玻璃壶 耐热玻璃一壶两杯套组过滤水壶玻璃茶具','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 69,'品茶忆友 990足银碗泡 手工纯银吉祥缸  足银锤纹分茶器干泡套装','买大兰花铁壶送五件礼物，包括398元电陶炉，铁壶垫、茶巾、茶夹和养壶笔！！超值优惠哦！！不容错过！！', 2080.00, 4160.00, '铁锈色 大叶兰铁壶', '品茶忆友', '铸铁茶壶', NULL, '客厅', NULL, '办公室泡茶、个人泡茶、茶馆泡茶、送礼', NULL, '铸铁', '铁锈色 大叶兰铁壶', '1900g', '大陆', '精美包装', '现代中式', 'G552B79BAB7AFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


/**茶壶图片**/
INSERT INTO tea_laptop_pic VALUES
(NULL, 1, 'img/product/sm (1).jpg','',''),
(NULL, 2, 'img/product/sm (2).jpg','',''),
(NULL, 3, 'img/product/sm (3).jpg','',''),
(NULL, 4, 'img/product/sm (4).jpg','',''),
(NULL, 5, 'img/product/sm (5).jpg','',''),
(NULL, 6, 'img/product/sm (6).jpg','',''),
(NULL, 7, 'img/product/sm (7).jpg','',''),
(NULL, 8, 'img/product/sm (8).jpg','',''),
(NULL, 9, 'img/product/sm (9).jpg','',''),
(NULL, 10, 'img/product/sm (10).jpg','',''),
(NULL, 11, 'img/product/sm (11).jpg','',''),
(NULL, 12, 'img/product/sm (12).jpg','',''),
(NULL, 13, 'img/product/sm (13).jpg','',''),
(NULL, 14, 'img/product/sm (14).jpg','',''),
(NULL, 15, 'img/product/sm (15).jpg','',''),
(NULL, 16, 'img/product/sm (16).jpg','',''),
(NULL, 17, 'img/product/sm (17).jpg','',''),
(NULL, 18, 'img/product/sm (18).jpg','',''),
(NULL, 19, 'img/product/sm (19).jpg','',''),
(NULL, 20, 'img/product/sm (20).jpg','',''),
(NULL, 21, 'img/product/sm (21).jpg','',''),
(NULL, 22, 'img/product/sm (22).jpg','',''),
(NULL, 23, 'img/product/sm (23).jpg','',''),
(NULL, 24, 'img/product/sm (24).jpg','',''),
(NULL, 25, 'img/product/sm (25).jpg','',''),
(NULL, 26, 'img/product/sm (26).jpg','',''),
(NULL, 27, 'img/product/sm (27).jpg','',''),
(NULL, 28, 'img/product/sm (28).jpg','',''),
(NULL, 29, 'img/product/sm (29).jpg','',''),
(NULL, 30, 'img/product/sm (30).jpg','',''),
(NULL, 31, 'img/product/sm (31).jpg','',''),
(NULL, 32, 'img/product/sm (32).jpg','',''),
(NULL, 33, 'img/product/sm (33).jpg','',''),
(NULL, 34, 'img/product/sm (34).jpg','',''),
(NULL, 35, 'img/product/sm (35).jpg','',''),
(NULL, 36, 'img/product/sm (36).jpg','',''),
(NULL, 37, 'img/product/sm (37).jpg','',''),
(NULL, 38, 'img/product/sm (38).jpg','',''),
(NULL, 39, 'img/product/sm (39).jpg','',''),
(NULL, 40, 'img/product/sm (40).jpg','',''),
(NULL, 41, 'img/product/sm (41).jpg','',''),
(NULL, 42, 'img/product/sm (42).jpg','',''),
(NULL, 43, 'img/product/sm (43).jpg','',''),
(NULL, 44, 'img/product/sm (44).jpg','',''),
(NULL, 45, 'img/product/sm (45).jpg','',''),
(NULL, 46, 'img/product/sm (46).jpg','',''),
(NULL, 47, 'img/product/sm (47).jpg','',''),
(NULL, 48, 'img/product/sm (48).jpg','',''),
(NULL, 49, 'img/product/sm (49).jpg','',''),
(NULL, 50, 'img/product/sm (50).jpg','',''),
(NULL, 51, 'img/product/sm (51).jpg','',''),
(NULL, 52, 'img/product/sm (52).jpg','',''),
(NULL, 53, 'img/product/sm (53).jpg','',''),
(NULL, 54, 'img/product/sm (54).jpg','',''),
(NULL, 55, 'img/product/sm (55).jpg','',''),
(NULL, 56, 'img/product/sm (56).jpg','',''),
(NULL, 57, 'img/product/sm (57).jpg','',''),
(NULL, 58, 'img/product/sm (58).jpg','',''),
(NULL, 59, 'img/product/sm (59).jpg','',''),
(NULL, 60, 'img/product/sm (60).jpg','',''),
(NULL, 61, 'img/product/sm (61).jpg','',''),
(NULL, 62, 'img/product/sm (62).jpg','',''),
(NULL, 63, 'img/product/sm (63).jpg','',''),
(NULL, 64, 'img/product/sm (64).jpg','',''),
(NULL, 65, 'img/product/sm (65).jpg','',''),
(NULL, 66, 'img/product/sm (66).jpg','',''),
(NULL, 67, 'img/product/sm (67).jpg','',''),
(NULL, 68, 'img/product/sm (68).jpg','',''),
(NULL, 69, 'img/product/sm (69).jpg','',''),
(NULL, 70, 'img/product/sm (70).jpg','',''),
(NULL, 71, 'img/product/sm (71).jpg','',''),
(NULL, 72, 'img/product/sm (72).jpg','',''),
(NULL, 73, 'img/product/sm (73).jpg','',''),
(NULL, 74, 'img/product/sm (74).jpg','',''),
(NULL, 75, 'img/product/sm (75).jpg','',''),
(NULL, 76, 'img/product/sm (76).jpg','',''),
(NULL, 77, 'img/product/sm (77).jpg','',''),
(NULL, 78, 'img/product/sm (78).jpg','',''),
(NULL, 79, 'img/product/sm (79).jpg','',''),
(NULL, 80, 'img/product/sm (80).jpg','','');



/**用户信息**/
#INSERT INTO tea_user VALUES

/**用户登录**/
INSERT INTO tea_login VALUES
(null,'fujun',md5('456')),
(null,'wenbo',md5('456')),
(null,'jerry',md5('123'));



/****首页轮播广告商品****/
INSERT INTO tea_index_carousel VALUES
(NULL, 'img/slide1.jpg','轮播广告商品1',NULL),
(NULL, 'img/slide2.jpg','轮播广告商品2',NULL),
(NULL, 'img/slide3.jpg','轮播广告商品3',NULL),
(NULL, 'img/slide4.jpg','轮播广告商品4',NULL);

/****logo图片****/
INSERT INTO tea_index_logo VALUES
(NULL, 'img/logo1.jpg','logo1'),
(NULL, 'img/logo2.jpg','logo2'),
(NULL, 'img/logo3.jpg','logo3'),
(NULL, 'img/logo4.gif','logo4'),
(NULL, 'img/logo5.gif','logo5'),
(NULL, 'img/detail1.jpg','detail1'),
(NULL, 'img/detail2.jpg','detail2'),
(NULL, 'img/detail3.jpg','detail3'),
(NULL, 'img/detail4.jpg','detail4'),
(NULL, 'img/product.jpg','product');

/****首页商品****/
INSERT INTO tea_index_product VALUES
(1, '品茶忆友 平口肌纹铁壶', 'img/80.jpg', 699.00, NULL, 'product_details.html?lid=1'),
(2, '\r\n品茶忆友 毛竹铜壶','img/62.jpg', 849.00, NULL, 'product_details.html?lid=2'),
(3, '\r\n品茶忆友 南瓜紫砂杯','img/51.jpg', 248.00, NULL,'product_details.html?lid=3'),
(4, '品茶忆友 天圆套组','img/26.jpg', 330.00, NULL,'product_details.html?lid=4'),
(5, '品茶忆友 白牡丹茶叶','img/76.jpg', 88.00, NULL,'product_details.html?lid=5'),
(6, '品茶忆友 黑檀木茶盘套装','img/58.jpg', 1430.00, NULL,'product_details.html?lid=6'),

/*****1F********/
(7, NULL,'img/1F/19.jpg', NULL, NULL,'product_details.html?lid=7'),
(8, NULL,'img/1F/50.jpg', NULL, NULL, 'product_details.html?lid=8'),
(9, NULL,'img/1F/17.jpg', NULL, NULL,'product_details.html?lid=9'),
(10, '品茶忆友 老铁壶铸铁茶壶无涂层铜把铸铁壶国产茶壶双龙铁壶茶','img/1F/20.jpg', 269.00, 538.00,'product_details.html?lid=10'),
(11, '龙魂铸铁壶 日本铁壶铜盖 大铸铁茶壶 煮茶烧水茶具 生铁壶无涂层','img/1F/18.jpg', 539.00, 1078.00,'product_details.html?lid=10'),
(12, '品茶忆友 圆纹日本铸铁壶南部老铁壶茶壶烧水壶大号茶具','img/1F/53.jpg', 128.00, 790.00,'product_details.html?lid=12'),
(13, '品茶忆友 樱花漫舞铁壶日本生铁壶无涂层煮水泡茶铸铁茶壶','img/1F/33-1.jpg', 280.00, 700.00,'product_details.html?lid=13'),
(14, '品茶忆友 莲花铁壶无涂层老铁壶日本南部铸铁茶壶泡茶壶烧水壶','img/1F/69.jpg', 560.00, 1400.00,'product_details.html?lid=14'),
(15, '品茶忆友 日本南部老铁壶 圆融自在金线铁壶 无涂层生铁壶','img/1F/1.jpg', 1288.00, 3220.00,'product_details.html?lid=15'),

/*****2F********/
(16,NULL, 'img/2F/8.jpg', NULL, NULL,'product_details.html?lid=16'),
(17,NULL, 'img/2F/72.jpg', NULL, NULL, 'product_details.html?lid=17'),
(18,NULL, 'img/2F/49.jpg', NULL, NULL,'product_details.html?lid=18'),
(19, '品茶忆友 掇只壶砂壶宜兴','img/2F/28.jpg', 208.00, 416.00,'product_details.html?lid=19'),
(20, '品茶忆友 提梁紫砂壶','img/2F/14.jpg', 950.00, 1900.00,'product_details.html?lid=20'),
(21, '品茶忆友 同享套装','img/2F/39.jpg', 169.00, 338.00,'product_details.html?lid=21'),
(22, '品茶忆友 紫砂套装','img/2F/42.jpg', 169.00, 938.00,'product_details.html?lid=22'),
(23, '品茶忆友 青花套装','img/2F/84.jpg', 499.00, 998.00,'product_details.html?lid=23'),
(24, '品茶忆友巧云汝窑茶具套装','img/2F/79.png', 239.00, 478.00,'product_details.html?lid=24'),


/*****3F********/
(25,NULL, 'img/3F/60.jpg', NULL, NULL,'product_details.html?lid=25'),
(26,NULL, 'img/3F/38.jpg', NULL, NULL,'product_details.html?lid=26'),
(27,NULL, 'img/3F/4.jpg', NULL, NULL,'product_details.html?lid=27'),
(28, '品茶忆友 2014年白牡丹','img/3F/76.jpg', 88.00, NULL,'product_details.html?lid=28'),
(29, '品茶忆友 2008年老寿眉','img/3F/37.jpg', 226.00, NULL,'product_details.html?lid=29'),
(30, '品茶忆友90g福鼎白茶砖','img/3F/55.jpg', 42.00, NULL,'product_details.html?lid=30'),
(31, '品茶忆友铁观音礼盒','img/3F/47.jpg', 228.00, NULL,'product_details.html?lid=31'),
(32, '品茶忆友2014年高级白茶牡丹','img/3F/61.jpg', 258.00, NULL,'product_details.html?lid=32'),
(33, '品茶忆友福鼎白茶茶坨','img/3F/30.jpg', 36.00, NULL,'product_details.html?lid=33'),



/*****4F********/
(34,NULL, 'img/4F/73.jpg', NULL, NULL,'product_details.html?lid=34'),
(35,NULL, 'img/4F/35.jpg', NULL, NULL,'product_details.html?lid=35'),
(36,NULL, 'img/4F/7.jpg', NULL, NULL,'product_details.html?lid=36'),
(37, '品茶忆友超薄智能电陶炉','img/4F/52.jpg', 468.00, 936.00,'product_details.html?lid=37'),
(38, '品茶忆友莺歌烧电陶炉','img/4F/13.jpg', 2450.00, 4900.00,'product_details.html?lid=38'),
(39, '金灶P-02自动上水器','img/4F/6.jpg', 86.50, 173.00,'product_details.html?lid=39'),
(40, 'babol佰宝玻璃茶壶 透明水晶养生水壶高档茶具套装烧水壶DCH-908','img/4F/5.jpg', 1800.00, 3600.00,'product_details.html?lid=40'),
(41, '金灶T-600A智能电热茶炉','img/4F/24.jpg', 245.00, 490.00,'product_details.html?lid=41'),
(42, '金灶HT-306养生玻璃煮茶壶','img/4F/54.jpg', 196.00, 392.00,'product_details.html?lid=42'),



/*****5F********/
(43,NULL, 'img/5F/63.jpg', NULL, NULL,'product_details.html?lid=43'),
(44,NULL, 'img/5F/29.jpg', NULL, NULL, 'product_details.html?lid=44'),
(45,NULL, 'img/5F/25.jpg', NULL, NULL,'product_details.html?lid=45'),
(46, '品茶忆友 举案齐眉孟宗竹茶盘 四款','img/5F/11.jpg', 108.00, 478.00,'product_details.html?lid=46'),
(47, '品茶忆友 盛水竹木茶盘茶台 三个尺寸','img/5F/15.jpg', 74.00, 148.00,'product_details.html?lid=47'),
(48, '品茶忆友 黑檀乌金石创意组茶盘套装','img/5F/57.jpg', 741.00, 1520.00,'product_details.html?lid=48'),
(49, '品茶忆友 红影木黑檀木排水茶盘套装','img/5F/78.jpg', 1550.00, 3100.00,'product_details.html?lid=49'),
(50, '品茶忆友 举案齐眉紫砂配件整套茶具','img/5F/67.jpg', 285.00, 570.00,'product_details.html?lid=50'),
(51, '品茶忆友 花梨木电磁炉紫砂茶配整套茶具', 'img/5F/45.jpg', 74.00, 185.00,'product_details.html?lid=51'),



/*****6F********/
(52, NULL, 'img/6F/44.jpg', NULL, NULL,'product_details.html?lid=52'),
(53, NULL, 'img/6F/48.jpg', NULL, NULL,'product_details.html?lid=53'),
(54, NULL, 'img/6F/56.jpg', NULL, NULL,'product_details.html?lid=54'),
(55, '耐热泡茶玻璃杯圆趣三件杯','img/6F/31.jpg', 38.90, 76.54,'product_details.html?lid=55'),
(56, '耐热玻璃手工小茶杯','img/6F/23.jpg', 30.00, 55.00,'product_details.html?lid=56'),
(57, '尚明正品飘逸杯','img/6F/12.jpg', 47.50, 94.40,'product_details.html?lid=57'),
(58, '日本正品纯手工吹制锤纹玻璃公道杯 玻璃茶海 日本玻璃茶具','img/6F/81.jpg', 368.00, 736.00,'product_details.html?lid=58'),
(59, '品茶忆友玻璃壶三件杯套组','img/6F/41.jpg', 39.00, 156.00,'product_details.html?lid=59'),
(60, '一屋窑简约冷热水壶 耐热玻璃带刻度 大容量玻璃壶泡茶壶果汁壶','img/6F/70.jpg', 82.00, 164.00,'product_details.html?lid=60'),


/*****7F********/
(61,NULL, 'img/7F/75.jpg', NULL, NULL,'product_details.html?lid=61'),
(62,NULL, 'img/7F/59.jpg', NULL, NULL,'product_details.html?lid=62'),
(63,NULL, 'img/7F/21.jpg', NULL, NULL,'product_details.html?lid=63'),
(64, '品茶忆友带托棉质加厚茶巾','img/7F/3.jpg', 20.00, 50.00,'product_details.html?lid=64'),
(65, '品茶忆友棉麻多功能双面茶巾','img/7F/40.jpg', 18.00, 36.00,'product_details.html?lid=65'),
(66, '品茶忆友双面棉麻古韵茶席','img/7F/43.jpg', 95.00, 190.00,'product_details.html?lid=66'),
(67, '品茶忆友双面棉麻古韵茶席','img/7F/27.jpg', 360.00, 720.00,'product_details.html?lid=67'),
(68, '品茶忆友 梧桐木茶叶罐 日式便携旅行茶叶罐木制迷你醒茶罐茶叶盒','img/7F/82.jpg', 33.00, 66.00,'product_details.html?lid=68'),
(69, '茗匠 竹制茶水桶 茶渣桶排水桶 竹子带盖杂物桶 功夫茶具茶道配件','img/7F/71.jpg', 102.00, 204.00,'product_details.html?lid=69');
