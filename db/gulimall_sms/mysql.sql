--gulimall_sms     销售管理系统
create table sms_coupon
(
   id                   bigint not null auto_increment ,
   coupon_type          tinyint(1) ,
   coupon_img           varchar(2000) ,
   coupon_name          varchar(100) ,
   num                  int ,
   amount               decimal(18,4) ,
   per_limit            int ,
   min_point            decimal(18,4) ,
   start_time           datetime ,
   end_time             datetime ,
   use_type             tinyint(1) ,
   note                 varchar(200) ,
   publish_count        int(11) ,
   use_count            int(11) ,
   receive_count        int(11) ,
   enable_start_time    datetime ,
   enable_end_time      datetime ,
   code                 varchar(64) ,
   member_level         tinyint(1) ,
   publish              tinyint(1) ,
   primary key (id)
);
create table sms_coupon_history
(
   id                   bigint not null auto_increment ,
   coupon_id            bigint ,
   member_id            bigint ,
   member_nick_name     varchar(64) ,
   get_type             tinyint(1) ,
   create_time          datetime ,
   use_type             tinyint(1) ,
   use_time             datetime ,
   order_id             bigint ,
   order_sn             bigint ,
   primary key (id)
);
create table sms_coupon_spu_category_relation
(
   id                   bigint not null auto_increment ,
   coupon_id            bigint ,
   category_id          bigint ,
   category_name        varchar(64) ,
   primary key (id)
);
create table sms_coupon_spu_relation
(
   id                   bigint not null auto_increment ,
   coupon_id            bigint ,
   spu_id               bigint ,
   spu_name             varchar(255) ,
   primary key (id)
);
create table sms_home_adv
(
   id                   bigint not null auto_increment ,
   name                 varchar(100) ,
   pic                  varchar(500) ,
   start_time           datetime ,
   end_time             datetime ,
   status               tinyint(1) ,
   click_count          int ,
   url                  varchar(500) ,
   note                 varchar(500) ,
   sort                 int ,
   publisher_id         bigint ,
   auth_id              bigint ,
   primary key (id)
);
create table sms_home_subject
(
   id                   bigint not null auto_increment ,
   name                 varchar(200) ,
   title                varchar(255) ,
   sub_title            varchar(255) ,
   status               tinyint(1) ,
   url                  varchar(500) ,
   sort                 int ,
   img                  varchar(500) ,
   primary key (id)
);
create table sms_home_subject_spu
(
   id                   bigint not null auto_increment ,
   name                 varchar(200) ,
   subject_id           bigint ,
   spu_id               bigint ,
   sort                 int ,
   primary key (id)
);
create table sms_member_price
(
   id                   bigint not null auto_increment ,
   sku_id               bigint ,
   member_level_id      bigint ,
   member_level_name    varchar(100) ,
   member_price         decimal(18,4) ,
   add_other            tinyint(1) ,
   primary key (id)
);
create table sms_seckill_promotion
(
   id                   bigint not null auto_increment ,
   title                varchar(255) ,
   start_time           datetime ,
   end_time             datetime ,
   status               tinyint ,
   create_time          datetime ,
   user_id              bigint ,
   primary key (id)
);
create table sms_seckill_session
(
   id                   bigint not null auto_increment ,
   name                 varchar(200) ,
   start_time           datetime ,
   end_time             datetime ,
   status               tinyint(1) ,
   create_time          datetime ,
   primary key (id)
);
create table sms_seckill_sku_notice
(
   id                   bigint not null auto_increment ,
   member_id            bigint ,
   sku_id               bigint ,
   session_id           bigint ,
   subcribe_time        datetime ,
   send_time            datetime ,
   notice_type          tinyint(1) ,
   primary key (id)
);
create table sms_seckill_sku_relation
(
   id                   bigint not null auto_increment ,
   promotion_id         bigint ,
   promotion_session_id bigint ,
   sku_id               bigint ,
   seckill_price        decimal ,
   seckill_count        decimal ,
   seckill_limit        decimal ,
   seckill_sort         int ,
   primary key (id)
);
create table sms_sku_full_reduction
(
   id                   bigint not null auto_increment ,
   sku_id               bigint ,
   full_price           decimal(18,4) ,
   reduce_price         decimal(18,4) ,
   add_other            tinyint(1) ,
   primary key (id)
);
create table sms_sku_ladder
(
   id                   bigint not null auto_increment ,
   sku_id               bigint ,
   full_count           int ,
   discount             decimal(4,2) ,
   price                decimal(18,4) ,
   add_other            tinyint(1) ,
   primary key (id)
);
create table sms_spu_bounds
(
   id                   bigint not null auto_increment ,
   spu_id               bigint,
   grow_bounds          decimal(18,4) ,
   buy_bounds           decimal(18,4) ,
   work                 tinyint(1),
   primary key (id)
);