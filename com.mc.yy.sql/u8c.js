var storesModel = viewmodel.get("suitableStoreOfAlipay");
   if(storesModel) {
    storesModel.on('beforeBrowse', function(data) {
     if(data) {
      switch(data.cellName) {
       case "store_name":
        //当前页面已选择的门店不再在参照面板中出现
        var rows = storesModel.getRows();
        var storeids = [];
        rows.forEach(function(item, index) {
         if(data.rowIndex === index) return;
         if(item.store_name === undefined) return;
         storeids.push(item.store);
        })
        var condition = {
         "isExtend": true,
         simpleVOs: []
        };
        if(storeids) {
         condition.simpleVOs.push({
          field: 'id',
          op: 'nin',
          value1: storeids
         });
        }
        data.context.setFilter(condition);
        break;
      }
     }
    });
   }
