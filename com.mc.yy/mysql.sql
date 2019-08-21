mysql修改字段类型：	 
--能修改字段类型、类型长度、默认值、注释
--对某字段进行修改
ALTER  TABLE 表名 MODIFY COLUMN 字段名 新数据类型 新类型长度  新默认值  新注释; -- COLUMN可以省略
alter  table table1 modify  column column1  decimal(10,1) DEFAULT NULL COMMENT '注释'; -- 正常，能修改字段类型、类型长度、默认值、注释
 
mysql修改字段名：
ALTER  TABLE 表名 CHANGE 旧字段名 新字段名 新数据类型;	 
alter  table table1 change column1 column1 varchar(100) DEFAULT 1.2 COMMENT '注释'; -- 正常，此时字段名称没有改变，能修改字段类型、类型长度、默认值、注释
alter  table table1 change column1 column2 decimal(10,1) DEFAULT NULL COMMENT '注释' -- 正常，能修改字段名、字段类型、类型长度、默认值、注释
alter  table table1 change column2 column1 decimal(10,1) DEFAULT NULL COMMENT '注释' -- 正常，能修改字段名、字段类型、类型长度、默认值、注释
alter  table table1 change column1 column2; -- 报错