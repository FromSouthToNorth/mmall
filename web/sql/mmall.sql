CREATE DATABASE mmall;

use mmall;

CREATE TABLE IF NOT EXISTS `users`(
   id INT UNSIGNED AUTO_INCREMENT,
   user_name VARCHAR(100) NOT NULL,
   user_password VARCHAR(40) NOT NULL,
	 sex VARCHAR(255) DEFAULT '保密',
	 phone_call VARCHAR(255) DEFAULT '无',
	 mail VARCHAR(255) DEFAULT '无',
	 avatar VARCHAR(268 ) DEFAULT '无',
	 user_type INT NOT NULL,
	 state INT NOT NULL DEFAULT 1,
   register_date DATE,
	 login_date DATE,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `goods`(
   id INT UNSIGNED AUTO_INCREMENT,
   goods_name VARCHAR(100) NOT NULL,
	 price DECIMAL(7,2) NOT NULL,
   goods_title VARCHAR(360) NOT NULL,
	 goods_img VARCHAR(1080) NOT NULL,
	 goods_type INT NOT NULL,
   register_date DATE,
	 update_date DATE,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `goods_type`(
   id INT UNSIGNED AUTO_INCREMENT,
   type VARCHAR(160) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `address`(
   id INT UNSIGNED AUTO_INCREMENT,
	 user_id INT NOT NULL,
	 user_name VARCHAR(100) NOT NULL,
   phone VARCHAR(100) NOT NULL,
	 type INT NOT NULL,
	 address VARCHAR(1380) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cart`(
   id INT UNSIGNED AUTO_INCREMENT,
	 user_id INT NOT NULL,
   goods_id INT NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `order_form`(
   id INT UNSIGNED AUTO_INCREMENT,
	 order_form_id bigint not null,
	 address_id INT NOT NULL,
	 cart_id INT NOT NULL,
	 state INT NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `goods_info`(
   id INT UNSIGNED AUTO_INCREMENT,
	 goods_id INT NOT NULL,
	 goods_info_img VARCHAR(560) NOT NULL,
	 PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `goods_thumbnail`(
   id INT UNSIGNED AUTO_INCREMENT,
	 goods_id INT NOT NULL,
	 goods_img VARCHAR(560) NOT NULL,
	 PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO goods_type (id, type) values (1, '服装专场');
INSERT INTO goods_type (id, type) values (2, '精选配件');
INSERT INTO goods_type (id, type) values (4, '手机及配件');
INSERT INTO goods_type (id, type) values (5, '热门商品');

INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('落栗 卫衣 连帽', 129, '人类首次公开使用乙醚', 'image/goods/7c370886c898cde47ab7149e8674f9c6.jpg',1);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan 帆布鞋', 199, '一双踏实、舒适的帆布鞋', 'image/goods/1db1a8bfee3623fded41c9115b5a5335.jpg',1);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('落栗 衬衫', 99, '牛津纺', 'image/goods/e2144f0b80beb52ead734974c7fffb34.png',1);
INSERT INTO goods (goods_name,price,goods_img,goods_type) values ('落栗 卫衣 圆领 莫里斯·麦当劳诞生', 129, 'image/goods/79a0d4666b2e4d03259aed7298bf83d9.png',1);
INSERT INTO goods (goods_name,price,goods_img,goods_type) values ('落栗 卫衣 连帽 ',249, 'image/goods/3218a971d4d837c31e10fa738ef7f91f.png',1);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan Polo衫 经典款', 199, '一件表里如一的舒适 POLO 衫', 'image/goods/daa975651d6d700c0f886718c520ee19.jpg',1);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan 原装快充充电器 18W', 49, '18W 安全快充', 'image/goods/dc53bd870ee64d2053ecc51750ece43a.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan 双口 & 快充车载充电器', 79, '铝合金机身、双口 & 快充、智能调节', 'image/goods/d4480234a2f24b0ff5acd98288fd902d.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan 半入耳式耳机', 59, '经典配色、专业调音、高品质麦克风', 'image/goods/30ac0a1ab02999667f1362c501447e58.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果彩虹数据线', 16, '七彩配色随机发货，为生活增添一份小小惊喜', 'image/goods/82aab62886740f165a3631ce6cffe895.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果快充移动电源 10000mAh (18W max)', 99, '支持QC3.0/PD3.0协议，USB-C口可支持苹果手机快充，小巧便携，多重安全防护', 'image/goods/2d106f8a751539abba6f446d3cda7818.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果三脚架自拍杆', 79, '两种模式，随时随地都能拍得开心', 'image/goods/f55641e23f35f6dd82226b6c4a043f00.jpg',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 3', 2399, '高通骁龙™ 855Plus · 4800 万模范四摄 · Smartisan OS 7.0', 'image/goods/9934374dda26c292555dd1ec0887e17b.png',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 3', 3399, '高通骁龙™ 855Plus · 4800 万模范四摄 · Smartisan OS 7.0', 'image/goods/a4c73e549097c7f5cf2c5e0d87e56d13.png',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 3', 2699, '高通骁龙™ 855Plus · 4800 万模范四摄 · Smartisan OS 7.0', 'image/goods/f195e666e089d4e3775ce67d8e9523ce.png',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 弯头数据线（Type-C）', 24.9, '“3A”大电流', 'image/goods/8e822aa7cbab24fec7eacf0bbb2f6526.jpg',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('Smartisan 真无线蓝牙耳机', 248, '智能配对 开盖即连', 'image/goods/e991f946530a7cfab3d9670dd8b1371b.png',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 2 特别版', 1899, '漂亮得不像实力派', 'image/goods/84366aa98fd0659d7809e1b9eed62cb4.png',4);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 3 足迹保护套 克里斯蒂安·多普勒出生', 38, '这一次，两面都有好故事', 'image/goods/b93f8e0265cf372e774d0a76e32f2c0f.png',2);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('坚果 Pro 3 足迹保护套 莫里斯·詹姆士·麦当劳出生', 38, '这一次，两面都有好故事', 'image/goods/31c8be42fbbabad10490835d953be356.jpg',2);
INSERT INTO goods (goods_name,price,goods_img,goods_type) values ('Smartisan T恤 薛定谔', 99,'image/goods/22f9e824c1cf7e8fad3d432ee494b932.png', 1);
INSERT INTO goods (goods_name,price,goods_img,goods_type) values ('Smartisan T恤 红白机', 99, 'image/goods/24c6437342c9ea969e13f00b82f7e3e5.png', 1);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('地平线 8 号旅行箱 春水绿', 359, '每个人都能拥有的标准登机箱', 'image/goods/46bb2de2f6b6387484211f0cfc84dfd5.jpg', 5);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('科沃斯扫地机器人 DN55', 1649, '智能规划 扫拖一体', 'image/goods/b1ea23314be6d08474d8d3e9c7ba6e15.jpg', 5);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('smartisan 颈挂蓝牙耳机', 149, '“圈铁一体代表作”', 'image/goods/a5b6bf1f38fb88dceeb1e917bec288da.jpg', 5);
INSERT INTO goods (goods_name,price,goods_title,goods_img,goods_type) values ('抖音文创 斜挎单肩帆布包', 69, '优质帆布面料，可拆卸肩带', 'image/goods/7df76ec4859f6d5ab46084e7704fb53e.jpg', 1);

INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d60.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d61.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d62.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d64.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d65.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d66.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d67.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d68.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (9, 'image/info/d32dcdf0549fb9a834837ace29743d69.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63381.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63382.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63383.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63384.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63385.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63386.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63387.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (16, 'image/info/2ea5e805290919532a70eee1c3a63388.png');
INSERT INTO goods_info (goods_id, goods_info_img) values (24, 'image/info/187399193069c8f8c8a24b64f88d1fae.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (24, 'image/info/187399193069c8f8c8a24b64f88d1faf.jpg');
INSERT INTO goods_info (goods_id, goods_info_img) values (2, 'image/info/60c3946caaaad37a78838138dbab412b.jpg');

INSERT INTO goods_thumb (goods_id, goods_img) values (23, 'image/thumb/bafb7f45130c5b39851a7783fe0bccf4.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (23, 'image/thumb/af966ae8e84ac07276aa36ae150a3fef.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (23, 'image/thumb/771c02e3fb03f15e6e80dd1136afa8d9.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (23, 'image/thumb/46bb2de2f6b6387484211f0cfc84dfd5.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (23, 'image/thumb/2deec96235bd4baa22c29647266d7ee6.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (24, 'image/thumb/b1ea23314be6d08474d8d3e9c7ba6e15.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (24, 'image/thumb/dd4fa0058cedf53e8f5cd4f66421ebc0.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (24, 'image/thumb/dfd89bae78aa537f035edec1fa30b064.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (24, 'image/thumb/920f6ad79f8e2bb1ce63c284ab0fefb7.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (24, 'image/thumb/bb5bd1f2f8ac2da51ee57e7cbfba1c53.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (26, 'image/thumb/a5b6bf1f38fb88dceeb1e917bec288da.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (16, 'image/thumb/8e822aa7cbab24fec7eacf0bbb2f6526.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (16, 'image/thumb/549f2d17429b7476439cb80b0b8d076f.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (2, 'image/thumb/1db1a8bfee3623fded41c9115b5a5335.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (2, 'image/thumb/5ac98ab2ad4cc0a9ea21432a4ec4f38e.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (2, 'image/thumb/ee1d31263b89edda3945be58aeace0bd.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (2, 'image/thumb/410fe25f97d773e250bba922c0acbdf5.jpg');
INSERT INTO goods_thumb (goods_id, goods_img) values (2, 'image/thumb/face0baa69fccf086e1e227cf78fc0c3.jpg');

INSERT INTO users (user_name, user_password, avatar, user_type) values ('test', 'test', 'image/avatar/202004242302558020001.jpg', 0);