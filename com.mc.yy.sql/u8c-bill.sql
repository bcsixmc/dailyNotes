##更新billItem_base 组件
select * from  billitem_base b,billtplgroup_base a    where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='parentOrderNo' and b.cName='parentOrderNo' and a.cCode='voucher_order_head_page_basr_data';

update billitem_base b,billtplgroup_base a   set b.bCanModify=0  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='productId.name' and b.cName='productName' and a.cCode='voucher_order_body_page_base_data';
update billitem_base b,billtplgroup_base a   set b.bCanModify=0  where b.iBillEntityId=a.iBillEntityId and  b.cFieldName='skuCode' and b.cName='skuCode' and a.cCode='voucher_order_body_page_base_data';


## 按钮更新
set @billno = 'voucher_order';

update bill_toolbaritem a inner join bill_toolbaritem b on a.Parent=b.sysid and a.tenant_id=b.tenant_id and a.billnumber=b.billnumber
set a.Parent=b.id
where  if(ISNULL(a.Parent),'',a.Parent)<>'' and a.billnumber=@billno and a.tenant_id<>0 and if(ISNULL(b.id),'',b.id)<>'';
