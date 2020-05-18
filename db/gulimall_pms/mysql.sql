--gulimall_pms    商品管理系统
create table pms_attr
(
   attr_id              bigint not null auto_increment,
   attr_name            char(30),
   search_type          tinyint,
   icon                 varchar(255),
   value_select         char(255),
   attr_type            tinyint,
   enable               bigint,
   catelog_id           bigint,
   show_desc            tinyint,
   primary key (attr_id)
);
create table pms_attr_attrgroup_relation
(
   id                   bigint not null auto_increment,
   attr_id              bigint,
   attr_group_id        bigint,
   attr_sort            int,
   primary key (id)
);
create table pms_attr_group
(
   attr_group_id        bigint not null auto_increment,
   attr_group_name      char(20),
   sort                 int,
   descript             varchar(255),
   icon                 varchar(255),
   catelog_id           bigint,
   primary key (attr_group_id)
);
create table pms_brand
(
   brand_id             bigint not null auto_increment,
   name                 char(50),
   logo                 varchar(2000),
   descript             longtext,
   show_status          tinyint,
   first_letter         char(1),
   sort                 int,
   primary key (brand_id)
);
create table pms_category
(
   cat_id               bigint not null auto_increment,
   name                 char(50),
   parent_cid           bigint,
   cat_level            int,
   show_status          tinyint,
   sort                 int,
   icon                 char(255),
   product_unit         char(50),
   product_count        int,
   primary key (cat_id)
);
create table pms_category_brand_relation
(
   id                   bigint not null auto_increment,
   brand_id             bigint,
   catelog_id           bigint,
   brand_name           varchar(255),
   catelog_name         varchar(255),
   primary key (id)
);
create table pms_comment_replay
(
   id                   bigint not null auto_increment,
   comment_id           bigint,
   reply_id             bigint,
   primary key (id)
);
create table pms_product_attr_value
(
   id                   bigint not null auto_increment,
   spu_id               bigint,
   attr_id              bigint,
   attr_name            varchar(200),
   attr_value           varchar(200),
   attr_sort            int,
   quick_show           tinyint,
   primary key (id)
);
create table pms_sku_images
(
   id                   bigint not null auto_increment,
   sku_id               bigint,
   img_url              varchar(255),
   img_sort             int,
   default_img          int,
   primary key (id)
);
create table pms_sku_info
(
   sku_id               bigint not null auto_increment,
   spu_id               bigint,
   sku_name             varchar(255),
   sku_desc             varchar(2000),
   catalog_id           bigint,
   brand_id             bigint,
   sku_default_img      varchar(255),
   sku_title            varchar(255),
   sku_subtitle         varchar(2000),
   price                decimal(18,4),
   sale_count           bigint,
   primary key (sku_id)
);
create table pms_sku_sale_attr_value
(
   id                   bigint not null auto_increment,
   sku_id               bigint,
   attr_id              bigint,
   attr_name            varchar(200),
   attr_value           varchar(200),
   attr_sort            int,
   primary key (id)
);
create table pms_spu_comment
(
   id                   bigint not null auto_increment,
   sku_id               bigint,
   spu_id               bigint,
   spu_name             varchar(255),
   member_nick_name     varchar(255),
   star                 tinyint(1),
   member_ip            varchar(64),
   create_time          datetime,
   show_status          tinyint(1),
   spu_attributes       varchar(255),
   likes_count          int,
   reply_count          int,
   resources            varchar(1000),
   content              text,
   member_icon          varchar(255),
   comment_type         tinyint,
   primary key (id)
);
create table pms_spu_images
(
   id                   bigint not null auto_increment,
   spu_id               bigint,
   img_name             varchar(200),
   img_url              varchar(255),
   img_sort             int,
   default_img          tinyint,
   primary key (id)
);
create table pms_spu_info
(
   id                   bigint not null auto_increment,
   spu_name             varchar(200),
   spu_description      varchar(1000),
   catalog_id           bigint,
   brand_id             bigint,
   weight               decimal(18,4),
   publish_status       tinyint,
   create_time          datetime,
   update_time          datetime,
   primary key (id)
);
create table pms_spu_info_desc
(
   spu_id               bigint not null,
   decript              longtext,
   primary key (spu_id)
);