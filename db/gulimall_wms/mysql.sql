--gulimall_wms    库存管理系统
create table wms_purchase
(
   id                   bigint not null auto_increment,                                                   
   assignee_id          bigint,                                                                           
   assignee_name        varchar(255),                                                                     
   phone                char(13),                                                                         
   priority             int(4),                                                                           
   status               int(4),                                                                           
   ware_id              bigint,                                                                           
   amount               decimal(18,4),                                                                    
   create_time          datetime,                                                                         
   update_time          datetime,                                                                         
   primary key (id)
);
create table wms_purchase_detail
(
   id                   bigint not null auto_increment,
   purchase_id          bigint,                                                                           
   sku_id               bigint,                                                                           
   sku_num              int,                                                                              
   sku_price            decimal(18,4),                                                                    
   ware_id              bigint,                                                                           
   status               int,                                                                              
   primary key (id)
);
create table wms_ware_info
(
   id                   bigint not null auto_increment,                                                   
   name                 varchar(255),                                                                     
   address              varchar(255),                                                                     
   areacode             varchar(20),                                                                      
   primary key (id)
);
create table wms_ware_order_task
(
   id                   bigint not null auto_increment,                                                   
   order_id             bigint,                                                                           
   order_sn             varchar(255),                                                                     
   consignee            varchar(100),                                                                     
   consignee_tel        char(15),                                                                         
   delivery_address     varchar(500),                                                                     
   order_comment        varchar(200),                                                                     
   payment_way          tinyint(1),                                                                       
   task_status          tinyint(2),                                                                       
   order_body           varchar(255),                                                                     
   tracking_no          char(30),                                                                         
   create_time          datetime,                                                                         
   ware_id              bigint,                                                                           
   task_comment         varchar(500),                                                                     
   primary key (id)
);
create table wms_ware_order_task_detail
(
   id                   bigint not null auto_increment,                                                   
   sku_id               bigint,                                                                           
   sku_name             varchar(255),                                                                     
   sku_num              int,                                                                              
   task_id              bigint,                                                                           
   primary key (id)
);
create table wms_ware_sku
(
   id                   bigint not null auto_increment,                                                   
   sku_id               bigint,                                                                           
   ware_id              bigint,                                                                           
   stock                int,                                                                              
   sku_name             varchar(200),                                                                     
   stock_locked         int,                                                                              
   primary key (id)
);