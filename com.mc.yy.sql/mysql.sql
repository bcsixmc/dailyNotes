## mysql修改字段类型;
--- 能修改字段类型、类型长度、默认值、注释
--- 对某字段进行修改
ALTER  TABLE 表名 MODIFY COLUMN 字段名 新数据类型 新类型长度  新默认值  新注释; -- COLUMN可以省略
alter  table table1 modify  column column1  decimal(10,1) DEFAULT NULL COMMENT '注释'; -- 正常，能修改字段类型、类型长度、默认值、注释
 
## mysql修改字段名;
ALTER  TABLE 表名 CHANGE 旧字段名 新字段名 新数据类型;	 
alter  table table1 change column1 column1 varchar(100) DEFAULT 1.2 COMMENT '注释'; -- 正常，此时字段名称没有改变，能修改字段类型、类型长度、默认值、注释
alter  table table1 change column1 column2 decimal(10,1) DEFAULT NULL COMMENT '注释' -- 正常，能修改字段名、字段类型、类型长度、默认值、注释
alter  table table1 change column2 column1 decimal(10,1) DEFAULT NULL COMMENT '注释' -- 正常，能修改字段名、字段类型、类型长度、默认值、注释


## 通过存储过程判断字段是否存在,不存在则增加;
DROP PROCEDURE IF EXISTS pro_AddColumn;
CREATE PROCEDURE pro_AddColumn() BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.columns WHERE table_name='component' AND COLUMN_NAME='PRINT_CHECK_STATUS') THEN
ALTER TABLE component ADD PRINT_CHECK_STATUS int(10) default 0;
END IF;
IF NOT EXISTS(SELECT 1 FROM information_schema.columns WHERE table_name='component' AND COLUMN_NAME='PRINT_CHECK_TIME') THEN
ALTER TABLE component ADD PRINT_CHECK_TIME datetime NULL;
END IF;
IF NOT EXISTS(SELECT 1 FROM information_schema.columns WHERE table_schema=podcloud AND table_name='component' AND COLUMN_NAME='PRINT_CHECK_BACK_REASON') THEN
ALTER TABLE component ADD PRINT_CHECK_BACK_REASON varchar(500) default null;
END IF;
END;
CALL pro_AddColumn;
DROP PROCEDURE pro_AddColumn;

## 通过存储过程判断索引是否存在,不存在则增加;
 DROP PROCEDURE IF EXISTS pro_AddIndex;
 DELIMITER;
 CREATE PROCEDURE pro_AddIndex() BEGIN IF NOT EXISTS (SELECT * FROM information_schema.statistics WHERE table_schema=CurrentDatabase AND table_name = 'rtc_phototype' AND index_name = 'index_name') THEN
     ALTER TABLE `rtc_Phototype` ADD INDEX index_name ( `imgtype` );
  END IF;
 END;
 DELIMITER;   CALL pro_AddIndex();
 Drop procedure pro_AddIndex;

## 插入语句判断是否存在,不存在则插入;
insert into permission(id,name,navigation_id,parentid) select '130','印前审查',null,'1' from DUAL WHERE NOT EXISTS(SELECT * FROM permission WHERE id='130');
insert into navigation(id,name,parent,path,seq_num,sub_sys,url) select '39','参数配置',11,'/3/11',1,3,null from DUAL WHERE NOT EXISTS(SELECT * FROM navigation WHERE id='39');



##查看执行计划##
SET optimizer_trace="enabled=on";
SELECT * from agentrelation  limit 10;
SELECT * FROM information_schema.OPTIMIZER_TRACE;
SET optimizer_trace="enabled=off";
