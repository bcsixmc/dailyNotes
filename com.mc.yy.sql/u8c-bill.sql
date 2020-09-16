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


DELETE from orders where id=1750177404883200;
DELETE from orders_price where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from orderdetail where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from orderdetail where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from uo_define_orderdefine  where order_id in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from orderdetailgroup where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from orderpaymentstatus where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from orderstatus where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from paymentschedules where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');
DELETE from paymentexedetail where firstsourceid in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001');



DELETE from orderproductapportion where iOrderDetailId 
in (SELECT id from orderdetail where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001'));
DELETE from uo_define_orderdetaildefine  where orderdetail_id 
in (SELECT id from orderdetail where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001'));
DELETE from orderdetail_price where iOrderDetailId 
in (SELECT id from orderdetail where iorderId in(SELECT id from orders where icorpid=1700708355789056 and cOrderNo='XS2020050001'));

                                                 
                                                 
                                                 
                                                 DELETE b FROM billitem_base b inner join bill_base a on b.iBillId = a.id where a.cBillNo = 'voucher_order' and b.cName = 'uordercorp' and tenant_id`=1806853821223168;
 insert into billitem_base
(`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,
`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,
`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,
`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,
`iRowAuthBillId`,`cStyle`,`bRowAuthControlled`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`isshoprelated`,`tenant_id`) 
select a.`iBillId`,a.`iBillEntityId`,a.`iTplId`,a.`iBillTplGroupId`,a.`cSubId`,'uordercorp' as `cFieldName`,'uordercorp' as `cName`,'租户id' as `cCaption`,
'租户id' as `cShowCaption`,'3022',a.`iMaxLength`,a.`iFieldType`,a.`bEnum`,a.`cEnumString`,a.`isDeleted`,1 as `bMustSelect`,0 as `bHidden`,a.`cRefType`,a.`cRefId`,a.`cRefRetID`,null as `cDataRule`,a.`iFunctionType`,a.`bSplit`,a.`bExtend`,a.`iNumPoint`,
0 as `bCanModify`,a.`cSourceType`,a.`iMaxShowLen`,a.`cMemo`,a.`iColWidth`,null as `cSumType`,a.`iAlign`,a.`bNeedSum`,1 as `bShowIt`,
a.`bFixed`,a.`bFilter`,a.`cDefaultValue`,null,a.`cUserId`,a.`iTabIndex`,
1 as `bIsNull`,a.`bPrintCaption`,0 as `bJointQuery`,a.`bPrintUpCase`,a.`bSelfDefine`,a.`cDataSourceName`,null as `cOrder`,
a.`bCheck`,'input' as `cControlType`,a.`cEnumType`,a.`refReturn`,a.`bShowInRowAuth`,a.`iRowAuthBillId`,a.`cStyle`,
a.`bRowAuthControlled`,a.`cSelfDefineType`,0 as `bVmExclude`,a.`bRowAuthDim`,a.`isshoprelated`,a.`tenant_id` 
from billitem_base a inner join bill_base b on a.iBillId=b.id inner join billtemplate_base c  on a.iTplId=c.id 
where  b.cBillNo ='voucher_order' and a.cName='synSourceTenant' AND A.tenant_id=1806853821223168;
