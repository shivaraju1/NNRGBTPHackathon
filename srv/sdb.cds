using {  com.test.sdb as db} from '../db/schema';
service Goodsservice {
    entity Goods as projection on db.Goods;
    
}
annotate Goodsservice.Goods with @odata.draft.enabled;
annotate Goodsservice.Goods with @(
    UI.LineItem :[
       {
        $Type:'UI.DataField',
        Value:bp_no
       },
       {
        $Type:'UI.DataField',
        Value:Name
       },
       {
        $Type:'UI.DataField',
        Value:Address1
       },
       {
        $Type:'UI.DataField',
        Value:Address2
       },
       
    ]
);


