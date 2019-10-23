
UPDATE billitem_base SET cControlType = 'Checkbox', cEnumType = 'aa_boolean', bEnum = '1',bIsNull=1 WHERE cDataSourceName = 'voucher.order.Order' AND cFieldName = 'modifyInvoiceType' ;

update billitem_base b,billtplgroup_base a   set b.bHidden=1  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='code' and b.cName='code' and a.cCode='voucher_order_body_page_base_data';

update billtplgroup_base set cName='订单状态数据区'  where cCode='voucher_order_body_page_deal_base_data';
update billitem_base set cCaption='是否批次管理',bHidden=1,bShowIt=0  where cName='isBatchManage'  and cDataSourceName='voucher.order.OrderDetail';
update billitem_base set bHidden=1,bShowIt=0  where cName='expireDateNo'  and cDataSourceName='voucher.order.OrderDetail';
update billitem_base set bHidden=1,bShowIt=0  where cName='isExpiryDateManage'  and cDataSourceName='voucher.order.OrderDetail';
update billitem_base set bHidden=1,bShowIt=0  where cName='expireDateUnit'  and cDataSourceName='voucher.order.OrderDetail';



-- ---发货主数量--------
set @billno = 'voucher_order';
set @filterName='voucher_order';
set @solutionName='voucher_order';

delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.sendSumQty' and billitem_base.cName='orderPrices!sendSumQty';


select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.sendSumQty','orderPrices!sendSumQty','发货主数量','发货主数量','443','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"unit_Precision"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);




insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.sendSumQty';




-- ---累计发货金额--------
delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.sendSumMoney' and billitem_base.cName='orderPrices!sendSumMoney';


select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.sendSumMoney','orderPrices!sendSumMoney','累计发货金额','累计发货金额','445','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"orderPrices!currency_moneyDigit"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);


insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.sendSumMoney';


-- ---开票主数量--------


delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.invoiceQty' and billitem_base.cName='orderPrices!invoiceQty';


select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.invoiceQty','orderPrices!invoiceQty','开票主数量','开票主数量','447','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"unit_Precision"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);




insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.invoiceQty';




-- ---累计开票金额--------
delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.invoiceOriSum' and billitem_base.cName='orderPrices!invoiceOriSum';

select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.invoiceOriSum','orderPrices!invoiceOriSum','累计开票金额','累计开票金额','449','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"orderPrices!currency_moneyDigit"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);


insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.invoiceOriSum';



-- ---出库主数量--------


delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.outBoundQty' and billitem_base.cName='orderPrices!outBoundQty';

select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.outBoundQty','orderPrices!outBoundQty','出库主数量','出库主数量','451','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"unit_Precision"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);



insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.outBoundQty';




-- ---累计出库金额--------
delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='orderPrices.outBoundSumMoney' and billitem_base.cName='orderPrices!outBoundSumMoney';

select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values (@id1,@id4,@id9,@id17,@id44,'SCMSA','orderPrices.outBoundSumMoney','orderPrices!outBoundSumMoney','累计出库金额','累计出库金额','453','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,1,null,1,0,1,null,null,null,'{"related":"orderPrices!currency_moneyDigit"}',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'InputNumber',null,null,0,null,null,0,null,0,0,4,null,0);


insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='orderPrices.outBoundSumMoney';


-- ---出库主数量--------

delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='collectMoney' and billitem_base.cName='collectMoney';

select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_money_data' and tenant_id =0;

INSERT INTO `uorders`.`billitem_base` (`id`,`cSubId`, `iBillId`, `cFieldName`, `cName`, `cCaption`, `cShowCaption`, `iBillEntityId`, `iBillTplGroupId`, `iTplId`, `iOrder`, `iMaxLength`, `iFieldType`, `bEnum`, `cEnumString`, `pubts`, `isDeleted`, `bMustSelect`, `bHidden`, `cRefType`, `cRefId`, `cRefRetId`, `cDataRule`, `iFunctionType`, `bSplit`, `bExtend`, `iNumPoint`, `bCanModify`, `cSourceType`, `iMaxShowLen`, `cMemo`, `iColWidth`, `cSumType`, `iAlign`, `bNeedSum`, `bShowIt`, `bFixed`, `bFilter`, `cDefaultValue`, `cFormatData`, `cUserId`, `iTabIndex`, `bIsNull`, `bPrintCaption`, `bJointQuery`, `bPrintUpCase`, `bSelfDefine`, `cSelfDefineType`, `cDataSourceName`, `cOrder`, `bCheck`, `cControlType`, `cEnumType`, `refReturn`, `bShowInRowAuth`, `iRowAuthBillId`, `cStyle`, `bRowAuthControlled`, `bVmExclude`, `bRowAuthDim`, `sysid`, `tenant_id`, `isprint`, `multiple`, `isshoprelated`, `depends`, `iSystem`, `auth_level`, `cDefineName`, `enterDirection`, `isExport`, `makeField`, `isMasterOrg`, `cSensFieldName`, `uncopyable`) VALUES
 (@id1,'SCMSA', @id4, 'unConfirmPrice+confirmPrice', 'collectMoney', '累计收款金额', '累计收款金额', @id9, @id44, @id17, '453', '255', '1', '0', NULL, '2019-10-14 15:55:55', '0', '1', '0', NULL, NULL, NULL, NULL, NULL, '0', '0', '2', '0', NULL, '255', NULL, '1', 'sum', NULL, '1', '1', NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 'voucher.order.Order', NULL, NULL, 'inputnumber', '', NULL, b'0', NULL, NULL, NULL, '0', b'0', NULL, '0', '1', NULL, '0', NULL, '0', '5', '[未审核的金额]+[已支付金额]', '4', '1', NULL, '0', NULL, '0');





insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='unConfirmPrice+confirmPrice';


---------企业业务员改名销售业务员-------------------
update billitem_base set cCaption='销售业务员',cShowCaption='销售业务员' where cFieldName='corpContact.name' and cName='corpContactUserName' and  cDataSourceName='voucher.order.Order';

update billitem_base set cCaption='销售业务员id',cShowCaption='销售业务员' where cFieldName='convertChar(corpContact)' and  cDataSourceName='voucher.order.Order';

------------------创建人编码规则bug修复-----------------------------
update billitem_base b,billtplgroup_base a   set b.cShowCaption='创建人' where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='creatorId' and b.cName='creatorId' and a.cCode='voucher_order_head_page_basr_data';


---------------- 客户联系人修改---------------------------

set @billno = 'voucher_order';
set @filterName='voucher_order';
set @solutionName='voucher_order';

delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='receiveContacter.name' and billitem_base.cName='receiveContacter_name';


select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id9 from billentity_base where cCode='voucher_order' and cName='销售订单' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id44 from billtplgroup_base where cCode = 'voucher_order_head_page_basr_data' and tenant_id =0;
insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values 
(@id1,@id4,@id9,@id17,@id44,'SCMSA','receiveContacter.name','receiveContacter_name','客户联系人','客户联系人','20','255',1,null,null,0,1,0,'productcenter.aa_merchantcontactref',null,'{"receiveContacter": "id","receiveContacter_name":"fullName","receiveContacterPhone": "mobile"}',null,null,0,0,null,1,null,'255',null,1,null,1,0,1,null,null,null,'',null,null,1,1,0,0,0,'voucher.order.Order',null,null,'refer',null,null,0,null,null,0,null,0,0,4,null,0);


insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='receiveContacter.name' and bill.iBillId is not null;

update billitem_base b,billtplgroup_base a   set  b.bHidden=1,b.bShowIt=0  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='receiveContacter' and b.cName='receiveContacter' and a.cCode='voucher_order_head_page_basr_data';

delete from pub_makebillrule_detail where origin_field='receiveContacter.name' and  target_field='receiveContacter_name';
select makebill_id as makeBIllId_saleinvoice into @saleinvoicemakebill_id  from pub_makebillrule where name='订单生成发货单' and  filterScheme='voucher_orderlist' ;
insert into pub_makebillrule_detail(`makebill_id`,`subId`,`origin_field`,`target_field`,`mapped_relation`,`mapped_type`,`calculate_formulas`,`origin_key`,`is_write_back`,`write_back_type`,`is_comparefield`,`is_edit`,`create_time`,`creator`,`is_deleted`) values (@saleinvoicemakebill_id,'SCMSA','receiveContacter.name','receiveContacter_name',1,0,null,null,0,null,null,0,now(),null,null);





set @billno = 'voucher_order';
set @filterName='voucher_order';
set @solutionName='voucher_order';

delete billitem_base from billitem_base inner JOIN bill_base on billitem_base.iBillId=bill_base.id where bill_base.cBillNo=@billno  and billitem_base.cFieldName='consignTime' and billitem_base.cName='consignTime';

select ifnull(max(id),0)+1 into @id1 from billitem_base;
select id into @id4 from bill_base where cBillNo='voucher_order' and cName='销售订单' AND tenant_id=0;
select id into @id10 from billentity_base where cCode='voucher_orderdetail' and cName='订单订单子表' and tenant_id=0;
select id into @id17 from billtemplate_base where cName='订单信息显示模板' and tenant_id=0;
select id into @id31 from billtplgroup_base where cCode = 'voucher_order_body_page_base_data' and tenant_id =0;

insert into billitem_base(`id`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`multiple`,`uncopyable`) values 
(@id1,@id4,@id10,@id17,@id31,'SCMSA','consignTime','consignTime','计划发货日期','计划发货日期','542','255',1,null,null,0,1,0,null,null,null,null,null,0,0,null,0,null,'255',null,150,null,1,0,1,null,null,null,null,null,null,0,1,0,0,0,'voucher.order.OrderDetail',null,null,'DatePicker',null,null,0,null,null,0,null,0,0,4,null,0);


insert into billitem_base(`sysid`,`iBillId`,`iBillEntityId`,`iTplId`,`iBillTplGroupId`,`cSubId`,`cFieldName`,`cName`,`cCaption`,`cShowCaption`,`iOrder`,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,`isDeleted`,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,`cMemo`,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,`bIsNull`,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,`cDataSourceName`,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,`cStyle`,`isMasterOrg`,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,`isprint`,`multiple`,`uncopyable`,`tenant_id`,`isshoprelated`,`depends`,`isExport`) 
select billitem_base.id,bill.iBillId,bill.iBillEntityId,bill.iTplId,bill.iBillTplGroupId,billitem_base.cSubId,`cFieldName`,billitem_base.cName,`cCaption`,`cShowCaption`,billitem_base.iOrder,`iMaxLength`,`iFieldType`,`bEnum`,`cEnumString`,billitem_base.isDeleted,`bMustSelect`,`bHidden`,`cRefType`,`cRefId`,`cRefRetID`,billitem_base.`cDataRule`,`iFunctionType`,`bSplit`,`bExtend`,`iNumPoint`,`bCanModify`,`cSourceType`,`iMaxShowLen`,billitem_base.cMemo,`iColWidth`,`cSumType`,`iAlign`,`bNeedSum`,`bShowIt`,`bFixed`,`bFilter`,`cDefaultValue`,`cFormatData`,`cUserId`,`iTabIndex`,billitem_base.bIsNull,`bPrintCaption`,`bJointQuery`,`bPrintUpCase`,`bSelfDefine`,billitem_base.cDataSourceName,`cOrder`,`bCheck`,`cControlType`,`cEnumType`,`refReturn`,`bShowInRowAuth`,`iRowAuthBillId`,billitem_base.cStyle,billitem_base.isMasterOrg,`cSelfDefineType`,`bVmExclude`,`bRowAuthDim`,`enterDirection`,billitem_base.isprint,`multiple`,`uncopyable`,tenant.id,`isshoprelated`,`depends`,billitem_base.isExport
from billitem_base
left join tenant on 1=1  and isOpen = 1
left join bill_base on billitem_base.iBillId=bill_base.id and billitem_base.tenant_id=bill_base.tenant_id
left join billentity_base on billentity_base.iBillId=bill_base.id and billentity_base.tenant_id=bill_base.tenant_id and billitem_base.iBillEntityId=billentity_base.id
left join billtemplate_base on billtemplate_base.iBillId=bill_base.id and billtemplate_base.tenant_id=bill_base.tenant_id and billitem_base.iTplId=billtemplate_base.id
left join billtplgroup_base on billtplgroup_base.iBillId=bill_base.id and billtplgroup_base.tenant_id=bill_base.tenant_id and billtplgroup_base.iBillEntityId=billentity_base.id and billitem_base.iBillTplGroupId=billtplgroup_base.id
left join (select bill_base.id as iBillId,billentity_base.id as iBillEntityId ,billtemplate_base.id as iTplId,
				  billtplgroup_base.id as iBillTplGroupId,bill_base.tenant_id,
					billentity_base.cCode as billentity_base_cCode,billtemplate_base.cname as billtemplate_base_cname,billtemplate_base.iTplMode,
					billtplgroup_base.cCode as billtplgroup_base_cCode
			from bill_base 
			left join billentity_base on bill_base.id=billentity_base.iBillId and bill_base.tenant_id=billentity_base.tenant_id
			left join billtemplate_base on bill_base.id=billtemplate_base.iBillId and bill_base.tenant_id=billtemplate_base.tenant_id
			left join billtplgroup_base on bill_base.id=billtplgroup_base.iBillId and billentity_base.id=billtplgroup_base.iBillEntityId
										and billtemplate_base.id=billtplgroup_base.iTplId and bill_base.tenant_id=billtplgroup_base.tenant_id
			where bill_base.cBillNo=@billno and bill_base.tenant_id<>0 and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> ''
			) bill on bill.tenant_id=tenant.id and billentity_base.cCode=bill.billentity_base_cCode and billtemplate_base.cName=bill.billtemplate_base_cname 
								and  billtplgroup_base.cCode=bill.billtplgroup_base_cCode 
where billitem_base.iBillId in (select id from bill_base where cBillNo=@billno and tenant_id=0) and if(isnull(billtplgroup_base.cCode),'', billtplgroup_base.cCode)<> '' 
and bill_base.cBillNo='voucher_order' and billitem_base.cFieldName='consignTime' and bill.iBillId is not null;

update pub_makebillrule_detail set mapped_relation=3,origin_field='consignTime' where makeBill_id in (select makeBill_id from  pub_makebillrule where code='order_delivery') and target_field='sendDate';

update billitem_base b,billtplgroup_base a   set  b.bCanModify=1  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='consignTime' and b.cName='consignTime' and a.cCode='voucher_order_body_page_base_data';

