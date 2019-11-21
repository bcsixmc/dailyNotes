delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.totalMoney';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.totalMoney','总金额',0,'voucher.order.Order','totalMoney',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[saleCost]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.totalMoney' and t1.tenant_id=0;

delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.payMoney';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.payMoney','支付金额',0,'voucher.order.Order','payMoney',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[oriSum]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.payMoney' and t1.tenant_id=0;

delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.rebateMoney';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.rebateMoney','返利金额',0,'voucher.order.Order','rebateMoney',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[rebateMoney]*1}+[voucher.order.Order].[rebateMoney]',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.rebateMoney' and t1.tenant_id=0;

delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.particularlyMoney';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.particularlyMoney','特殊优惠',0,'voucher.order.Order','particularlyMoney',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[particularlyMoney]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.particularlyMoney' and t1.tenant_id=0;

delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.promotionMoney';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.promotionMoney','促销金额',0,'voucher.order.Order','promotionMoney',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[promotionMoney]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.promotionMoney' and t1.tenant_id=0;


delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.orderPrices!totalOriTax';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.orderPrices!totalOriTax','税额',0,'voucher.order.Order','orderPrices!totalOriTax',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[orderDetailPrices!oriTax]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.orderPrices!totalOriTax' and t1.tenant_id=0;


delete from bill_itemrule where billnumber='voucher_order' and ruleid='voucher.order.Order.orderPrices!payMoneyOrigTaxfree';
insert into bill_itemrule
(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,`defined`,`condition`,`expression`,`triggers`,`subid`,`system`,`sysid`,`tenant_id`) 
values ('voucher_order','voucher.order.Order.orderPrices!payMoneyOrigTaxfree','无税金额',0,'voucher.order.Order','orderPrices!payMoneyOrigTaxfree',
0,null,'sum<voucher.order.OrderDetail>{[voucher.order.OrderDetail].[orderDetailPrices!oriMoney]*1}',
'[voucher.order.OrderDetail].[qty],[voucher.order.OrderDetail].[subQty],[voucher.order.OrderDetail].[priceQty],
[voucher.order.OrderDetail].[oriUnitPrice],[voucher.order.OrderDetail].[oriTaxUnitPrice],
[voucher.order.OrderDetail].[natUnitPrice],[voucher.order.OrderDetail].[natTaxUnitPrice],
[voucher.order.OrderDetail].[oriSum],[voucher.order.OrderDetail].[taxRate],
[voucher.order.OrderDetail].[stockOrgId_name],[voucher.order.OrderDetail].[stockName]',
'PU',0,null,0);

insert into bill_itemrule(`billnumber`,`ruleid`,`rulename`,`ruletype`,`entity`,`item`,
`defined`,`condition`,`expression`,`triggers`,
`subid`,`system`,`sysid`,`tenant_id`) 
select t1.`billnumber`,t1.`ruleid`,t1.`rulename`,t1.`ruletype`,t1.`entity`,t1.`item`,
t1.`defined`,t1.`condition`,t1.`expression`,t1.`triggers`,
t1.`subid`,t1.`system`,t1.`id`,t2.`id` 
from bill_itemrule t1
left join tenant t2 on t2.id<>0 
where t1.billnumber='voucher_order' and t1.ruleid='voucher.order.Order.orderPrices!payMoneyOrigTaxfree' and t1.tenant_id=0;



delete from billruleregister where ruleId='udhGetFinanceOrgRule' and action='check_stockName' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockName', 'udhGetFinanceOrgRule', 40, 0, b'1');

delete from billruleregister where ruleId='udhGetFinanceOrgRule' and action='check_stockName' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetFinanceOrgRule' and action='check_stockName' and tenant_id=0;
							
delete from billruleregister where ruleId='udhGetFinanceOrgRule' and action='check_stockOrgId_name' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockOrgId_name', 'udhGetFinanceOrgRule', 40, 0, b'1');

delete from billruleregister where ruleId='udhGetFinanceOrgRule' and action='check_stockOrgId_name' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetFinanceOrgRule' and action='check_stockOrgId_name' and tenant_id=0;
			  

delete from billruleregister where ruleId='udhGetCurrencyRule' and action='check_stockName' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockName', 'udhGetCurrencyRule', 50, 0, b'1');

delete from billruleregister where ruleId='udhGetCurrencyRule' and action='check_stockName' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetCurrencyRule' and action='check_stockName' and tenant_id=0;
							
delete from billruleregister where ruleId='udhGetCurrencyRule' and action='check_stockOrgId_name' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockOrgId_name', 'udhGetCurrencyRule', 50, 0, b'1');

delete from billruleregister where ruleId='udhGetCurrencyRule' and action='check_stockOrgId_name' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetCurrencyRule' and action='check_stockOrgId_name' and tenant_id=0;

	
delete from billruleregister where ruleId='udhGetExchRateRule' and action='check_stockName' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockName', 'udhGetExchRateRule', 60, 0, b'1');

delete from billruleregister where ruleId='udhGetExchRateRule' and action='check_stockName' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetExchRateRule' and action='check_stockName' and tenant_id=0;
							
delete from billruleregister where ruleId='udhGetExchRateRule' and action='check_stockOrgId_name' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockOrgId_name', 'udhGetExchRateRule', 60, 0, b'1');

delete from billruleregister where ruleId='udhGetExchRateRule' and action='check_stockOrgId_name' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhGetExchRateRule' and action='check_stockOrgId_name' and tenant_id=0;
			  

delete from billruleregister where ruleId='NewUdhCalcMoneyRule' and action='check_stockName' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockName', 'NewUdhCalcMoneyRule', 70, 0, b'1');

delete from billruleregister where ruleId='NewUdhCalcMoneyRule' and action='check_stockName' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='NewUdhCalcMoneyRule' and action='check_stockName' and tenant_id=0;
							
delete from billruleregister where ruleId='NewUdhCalcMoneyRule' and action='check_stockOrgId_name' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockOrgId_name', 'NewUdhCalcMoneyRule', 70, 0, b'1');

delete from billruleregister where ruleId='NewUdhCalcMoneyRule' and action='check_stockOrgId_name' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='NewUdhCalcMoneyRule' and action='check_stockOrgId_name' and tenant_id=0;

#部门referRule			  
delete from billruleregister where ruleId='funcDeptShareReferRule' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`domain`,`key`)
VALUES ('common', 'refer', 'funcDeptShareReferRule', 21, 0, b'1','ucf-org-center','bd_adminorgsharetreeref');

delete from billruleregister where ruleId='funcDeptShareReferRule' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`domain`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,domain,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='funcDeptShareReferRule' and action='refer' and tenant_id=0;
			  
#业务员referRule
delete from billruleregister where ruleId='beforeReferCorpContactRule' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'beforeReferCorpContactRule', 19, 0, b'1','bd_staff_ref');

delete from billruleregister where ruleId='beforeReferCorpContactRule' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='beforeReferCorpContactRule' and action='refer' and tenant_id=0;
			  
delete from billruleregister where ruleId='staffRefFilterPermissionRule' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`domain`,`key`)
VALUES ('common', 'refer', 'staffRefFilterPermissionRule', 21, 0, b'1','ucf-staff-center','bd_staff_ref');

delete from billruleregister where ruleId='staffRefFilterPermissionRule' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`domain`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,domain,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='staffRefFilterPermissionRule' and action='refer' and tenant_id=0;
			  
#客户联系人 收货地址  referRule			  
delete from billruleregister where ruleId='beforeReferFilterAgentRule' and `key`='aa_merchantcontactref' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'beforeReferFilterAgentRule', 21, 0, b'1','aa_merchantcontactref');

delete from billruleregister where ruleId='beforeReferFilterAgentRule' and `key`='aa_merchantcontactref' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='beforeReferFilterAgentRule'and `key`='aa_merchantcontactref' and action='refer' and tenant_id=0;
							
delete from billruleregister where ruleId='beforeReferFilterAgentRule' and `key`='aa_merchantaddressref' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'beforeReferFilterAgentRule', 21, 0, b'1','aa_merchantaddressref');

delete from billruleregister where ruleId='beforeReferFilterAgentRule' and `key`='aa_merchantaddressref' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='beforeReferFilterAgentRule' and `key`='aa_merchantaddressref' and action='refer' and tenant_id=0;

delete from billruleregister where ruleId='udhCheckStockOrgBeforeRule' and `key`='stockOrgref' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'udhCheckStockOrgBeforeRule', 21, 0, b'1','stockOrgref');

delete from billruleregister where ruleId='udhCheckStockOrgBeforeRule' and `key`='stockOrgref' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhCheckStockOrgBeforeRule'and `key`='stockOrgref' and action='refer' and tenant_id=0;
							
			  
delete from billruleregister where ruleId='udhCheckStockAfterRule' and action='check_stockName' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
VALUES ('common', 'check_stockName', 'udhCheckStockAfterRule', 33, 0, b'1');

delete from billruleregister where ruleId='udhCheckStockAfterRule' and `key`='aa_warehouseref' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='udhCheckStockAfterRule'and action='check_stockName' and tenant_id=0;

#仓库referrule
delete from billruleregister where ruleId='beforeReferStockRule' and `key`='aa_warehouseref' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'beforeReferStockRule', 21, 0, b'1','aa_warehouseref');

delete from billruleregister where ruleId='beforeReferStockRule' and `key`='aa_warehouseref' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='beforeReferStockRule'and `key`='aa_warehouseref' and action='refer' and tenant_id=0;

#币种referrule			  
delete from billruleregister where ruleId='beforeReferCurrencyRule' and tenant_id=0;
INSERT INTO `billruleregister`(`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
VALUES ('common', 'refer', 'beforeReferCurrencyRule', 19, 0, b'1','bd_currencytenantref');

delete from billruleregister where ruleId='beforeReferCurrencyRule' and tenant_id<>0;
INSERT INTO billruleregister (`billnum`, `action`, `ruleId`, `iorder`, `tenant_id`,`isSystem`,`key`)
select `billnum`, `action`, `ruleId`, `iorder`, tenant.id,0,`key`
              from billruleregister
              left join tenant on 1=1 and tenant.id<>0
              where ruleId='beforeReferCurrencyRule' and action='refer' and tenant_id=0;
