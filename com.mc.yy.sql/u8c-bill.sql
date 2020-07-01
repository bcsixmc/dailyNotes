##更新billItem_base 组件
select * from  billitem_base b,billtplgroup_base a    where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='parentOrderNo' and b.cName='parentOrderNo' and a.cCode='voucher_order_head_page_basr_data';

update billitem_base b,billtplgroup_base a   set b.bCanModify=0  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='productId.name' and b.cName='productName' and a.cCode='voucher_order_body_page_base_data';
update billitem_base b,billtplgroup_base a   set b.bCanModify=0  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='skuCode' and b.cName='skuCode' and a.cCode='voucher_order_body_page_base_data';


## 按钮更新
set @billno = 'voucher_order';

update bill_toolbaritem a inner join bill_toolbaritem b on a.Parent=b.sysid and a.tenant_id=b.tenant_id and a.billnumber=b.billnumber
set a.Parent=b.id
where  if(ISNULL(a.Parent),'',a.Parent)<>'' and a.billnumber=@billno and a.tenant_id<>0 and if(ISNULL(b.id),'',b.id)<>'';



###全住户
SELECT o.pubuts,o.id,
o.fOutBoundQty,
o.fTotalOutStockSubQty,
o.fOutBoundSumMoney,
o.fTotalOutStockOriMoney,
s.outqty,
s.outsubqty,
s.fOutBoundSumMoney,
s.fTotalOutStockOriMoney,
CONCAT('update orderdetail set fOutBoundQty=',IFNULL(s.outqty,'null'),',fTotalOutStockSubQty=',IFNULL(s.outsubqty,'null'),',fOutBoundSumMoney=',IFNULL(s.fOutBoundSumMoney,'null'),',fTotalOutStockOriMoney=',IFNULL(s.fTotalOutStockOriMoney,'null'),' where id =',o.id,';')
from uorders.orderdetail o 
LEFT JOIN
(
SELECT a.firstsourceautoid
,sum(a.qty) as outqty
,sum(subQty) as outsubqty
,sum(oriSum) as fOutBoundSumMoney
,sum(oriMoney) as fTotalOutStockOriMoney
from st_salesouts a 
join st_salesout b on a.imainid=b.id
where b.sourcesys='udinghuo'
and a.source in (1)
and b.tenant_id=1679514674680064
GROUP BY a.firstsourceautoid
) s on o.id=s.firstsourceautoid
where 
o.iCorpId=1679514674680064 and 
o.fOutBoundQty != IFNULL(s.outqty,0);


