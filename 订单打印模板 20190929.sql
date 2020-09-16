
-- voucher_order
delete t1
from print_bo_attr t1
inner join print_bo t2 on t1.pk_bo=t2.pk_bo
where t2.bo_code='voucher_order';

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售组织','salesOrgId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '交易类型','transactionTypeId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '单据日期','vouchdate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单号','code','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '客户','agentId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '散户名称','retailAgentName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '是否散户','retailInvestors','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '客户联系人','receiveContacter','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '客户联系电话','receiveContacterPhone','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售部门','saleDepartmentId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '业务员','corpContactUserName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开票组织','settlementOrgId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '期望收货日期','hopeReceiveDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '预计发货日期','sendDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '单据来源（PC，移动）','source','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '制单人类型','submitSource','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单是否发完货','isFinishDelivery','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单日期','orderDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '驳回批注','opposeMemo','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单状态','nextStatusName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '支付状态','payStatusCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '是否存在发货单','haveDelivery','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '库存占用时机','occupyInventory','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '积分','points','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;


insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '交货日期','deliveryDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '收货人邮编','receiveZipCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '收货人固定电话','receiveTelePhone','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '结算方式编码','cSettlementCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '单据状态','status','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '退回次数','returncount','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '原币编码','orderPrices_originalCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '币种','orderPrices_originalName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '汇率','orderPrices_exchRate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币编码','orderPrices_domesticCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币','orderPrices_domesticName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '单价含税','orderPrices_taxInclusive','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项1','headItem_define1','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项2','headItem_define2','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项3','headItem_define3','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项4','headItem_define4','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项5','headItem_define5','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项6','headItem_define6','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项7','headItem_define7','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项8','headItem_define8','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项9','headItem_define9','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项10','headItem_define10','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项11','headItem_define11','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项12','headItem_define12','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项13','headItem_define13','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项14','headItem_define14','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项15','headItem_define15','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项16','headItem_define16','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项17','headItem_define17','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项18','headItem_define18','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项19','headItem_define19','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项20','headItem_define20','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项21','headItem_define21','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项22','headItem_define22','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项23','headItem_define23','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项24','headItem_define24','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项25','headItem_define25','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项26','headItem_define26','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项27','headItem_define27','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项28','headItem_define28','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项29','headItem_define29','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项30','headItem_define30','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项31','headItem_define31','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项32','headItem_define32','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项33','headItem_define33','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项34','headItem_define34','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项35','headItem_define35','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项36','headItem_define36','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项37','headItem_define37','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项38','headItem_define38','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项39','headItem_define39','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项40','headItem_define40','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项41','headItem_define41','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项42','headItem_define42','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项43','headItem_define43','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项44','headItem_define44','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项45','headItem_define45','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项46','headItem_define46','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项47','headItem_define47','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项48','headItem_define48','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项49','headItem_define49','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项50','headItem_define50','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项51','headItem_define51','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项52','headItem_define52','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项53','headItem_define53','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项54','headItem_define54','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项55','headItem_define55','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项56','headItem_define56','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项57','headItem_define57','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项58','headItem_define58','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项59','headItem_define59','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表头自定义项60','headItem_define60','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '收货人','receiver','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '收货电话','receiveMobile','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '收货地址','receiveAddress','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '支付方式','orderPayType','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '结算方式','settlement_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发运方式','shippingChoiceId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发运方式编码','shippingChoiceId_code','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '注册地址','address','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '注册电话','telephone','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开户名','userBankName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开户行编码','bankCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开票客户','invoiceAgentId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发票类型可改','modifyInvoiceType','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发票类型','invoiceUpcType','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '抬头类型','invoiceTitleType','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发票抬头','invoiceTitle','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '纳税识别号','taxNum','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开户银行','bankName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '开户支行','subBankName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '银行账号','bankAccount','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '营业电话','invoiceTelephone','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '营业地址','invoiceAddress','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '总金额','totalMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '促销优惠','promotionMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '折扣返利金额','rebateMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '抵现返利金额','rebateCashMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '积分抵扣金额','pointsMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '运费','reight','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '合计含税金额','payMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品实付金额','orderPayMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '应付金额','realMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品应付金额','orderRealMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '特殊优惠','particularlyMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '未审核的金额','unConfirmPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '已支付金额','confirmPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税总金额','orderPrices_totalMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税返利金额','orderPrices_rebateMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税抵现金额','orderPrices_rebateCashMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '合计无税金额','orderPrices_payMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品实付无税金额','orderPrices_orderPayMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '应付无税金额','orderPrices_realMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品应付无税金额','orderPrices_orderRealMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税运费','orderPrices_reightMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税特殊优惠','orderPrices_particularlyMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税促销优惠','orderPrices_promotionMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税积分抵扣','orderPrices_pointsMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币总金额','orderPrices_totalMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税返利金额','orderPrices_rebateMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税抵现金额','orderPrices_rebateCashMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税实付金额','orderPrices_payMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品本币含税实付金额','orderPrices_orderPayMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税应付金额','orderPrices_realMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品本币含税应付金额','orderPrices_orderRealMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币运费','orderPrices_reightMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币特殊优惠','orderPrices_particularlyMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币促销优惠','orderPrices_promotionMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币积分抵扣','orderPrices_pointsMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税总金额','orderPrices_totalMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税返利金额','orderPrices_rebateMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税抵现金额','orderPrices_rebateCashMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税实付金额','orderPrices_payMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品本币无税实付金额','orderPrices_orderPayMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税应付金额','orderPrices_realMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品本币无税应付金额','orderPrices_orderRealMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '税额','orderPrices_totalOriTax','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币总税额','orderPrices_totalNatTax','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售组织','salesOrgId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '制单人','creator','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '创建时间','createTime','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '创建日期','createDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '审批人','auditor','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '审批时间','auditTime','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '审批日期','auditDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '关闭时间','closeTime','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '关闭日期','closeDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '关闭人','closer','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '修改日期','modifyDate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '修改人','modifier','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '修改时间','modifyTime','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_bo where app_id='yxcloud' and bo_code='voucher_order' ;

-- print_sub_bo 
delete from print_sub_bo where bo_code='orderDetails' and app_id='yxcloud'; 
INSERT INTO `print_sub_bo` (`bo_name`, `bo_code`, `pk_bo`, `pk_parent`, `tenant_id`, `app_id`) 
select '订单订单子表', 'orderDetails', UUID(), pk_bo, NULL, 'yxcloud' 
from print_bo where bo_code='voucher_order' and app_id='yxcloud'; 
-- voucher_order
delete t1 from print_bo_attr t1
inner join print_sub_bo t2 on t1.pk_bo=t2.pk_bo
inner join print_bo t3 on t2.pk_parent=t3.pk_bo
where t3.bo_code='voucher_order';

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单号','code','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select 'sku名称','skuName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品编码','productCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品名称','productName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select 'SKU编码','skuCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '规格描述','specDescription','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '项目名称','projectId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '项目编码','projectId_code','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售单位','productAuxUnitName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售换算率','invExchRate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '销售数量','subQty','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '计价单位','productUnitName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '计价换算率','invPriceExchRate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '计价数量','priceQty','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '数量','qty','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '主计量','qtyName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '发货仓库','stockName','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '库存组织','stockOrgId_name','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '含税成交价','oriTaxUnitPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '含税金额','oriSum','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '原币无税合计','orderDetailPrices_saleCost_orig_taxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '税额','orderDetailPrices_oriTax','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '税率','taxRate','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '报价含税金额','saleCost','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '税目','taxItems','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '税目税率编码','taxCode','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '商品售卖类型','orderProductType','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计已发货含税金额','sendPayMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计已发货未审数量','sendQty','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计开票数量','invoiceQty','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计发货已审数量','auditCount','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计收货数量','receiveCount','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '累计开票含税金额','invoiceOriSum','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '客户收货数量','takeQuantity','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '客户收货金额','takeSalePayMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '含税报价','salePrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '返利分摊金额','rebateMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '特殊优惠','particularlyMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '促销分摊','promotionMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '积分抵扣金额','pointsMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '预发货日期','consignTime','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');






insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项1','bodyItem_define1','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项2','bodyItem_define2','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项3','bodyItem_define3','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项4','bodyItem_define4','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项5','bodyItem_define5','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项6','bodyItem_define6','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项7','bodyItem_define7','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项8','bodyItem_define8','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项9','bodyItem_define9','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项10','bodyItem_define10','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项11','bodyItem_define11','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项12','bodyItem_define12','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项13','bodyItem_define13','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项14','bodyItem_define14','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项15','bodyItem_define15','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项16','bodyItem_define16','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项17','bodyItem_define17','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项18','bodyItem_define18','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项19','bodyItem_define19','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项20','bodyItem_define20','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项21','bodyItem_define21','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项22','bodyItem_define22','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项23','bodyItem_define23','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项24','bodyItem_define24','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项25','bodyItem_define25','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项26','bodyItem_define26','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项27','bodyItem_define27','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项28','bodyItem_define28','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项29','bodyItem_define29','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项30','bodyItem_define30','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项31','bodyItem_define31','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项32','bodyItem_define32','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项33','bodyItem_define33','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项34','bodyItem_define34','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项35','bodyItem_define35','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项36','bodyItem_define36','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项37','bodyItem_define37','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项38','bodyItem_define38','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项39','bodyItem_define39','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项40','bodyItem_define40','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项41','bodyItem_define41','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项42','bodyItem_define42','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项43','bodyItem_define43','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项44','bodyItem_define44','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项45','bodyItem_define45','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项46','bodyItem_define46','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项47','bodyItem_define47','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项48','bodyItem_define48','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项49','bodyItem_define49','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项50','bodyItem_define50','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项51','bodyItem_define51','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项52','bodyItem_define52','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项53','bodyItem_define53','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项54','bodyItem_define54','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项55','bodyItem_define55','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项56','bodyItem_define56','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项57','bodyItem_define57','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项58','bodyItem_define58','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项59','bodyItem_define59','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '表体自定义项60','bodyItem_define60','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '订单号','orderDetailPrices_code','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税单价','orderDetailPrices_salePrice_orig_taxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税成交价','orderDetailPrices_oriUnitPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税金额','orderDetailPrices_oriMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税分摊返利','orderDetailPrices_rebateMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税特殊优惠','orderDetailPrices_particularlyMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税促销优惠','orderDetailPrices_promotionMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '无税积分抵扣','orderDetailPrices_pointsMoneyOrigTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '报价本币含税金额','orderDetailPrices_saleCost_domestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '报价本币含税单价','orderDetailPrices_salePrice_domestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税金额','orderDetailPrices_natSum','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币含税单价','orderDetailPrices_natTaxUnitPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币分摊返利','orderDetailPrices_rebateMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币特殊优惠','orderDetailPrices_particularlyMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币促销优惠','orderDetailPrices_promotionMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币积分抵扣','orderDetailPrices_pointsMoneyDomestic','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '报价本币无税金额','orderDetailPrices_saleCost_domestic_taxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '报价本币无税单价','orderDetailPrices_salePrice_domestic_taxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税金额','orderDetailPrices_natMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税单价','orderDetailPrices_natUnitPrice','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税分摊返利','orderDetailPrices_rebateMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税特殊优惠','orderDetailPrices_particularlyMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税促销优惠','orderDetailPrices_promotionMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币无税积分抵扣','orderDetailPrices_pointsMoneyDomesticTaxfree','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');

insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '本币税额','orderDetailPrices_natTax','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '关闭总金额','closedSumMoney','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '行关闭数量','closedRowCount','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
insert into print_bo_attr(name,code,fieldtype,pk_attribute,pk_bo,issystemattr,isprimarykey,isvisible,islist,isdeleted) 
select '备注','memo','VARCHAR',UUID(),pk_bo,0,0,0,0,0 from print_sub_bo where app_id='yxcloud' and bo_code='orderDetails' and pk_parent in (select pk_bo from print_bo where bo_code='voucher_order' and app_id='yxcloud');
