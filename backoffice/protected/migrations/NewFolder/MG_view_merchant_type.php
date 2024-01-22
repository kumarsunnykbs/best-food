<?php
class MG_view_merchant_type extends CDbMigration
{
	public function up()
	{
		if($check = Yii::app()->db->schema->getTable("{{view_merchant_type}}")){
			if($schema = Yii::app()->db->createCommand("SELECT * FROM information_schema.tables 
			where table_name  LIKE '%{{view_merchant_type}}%'
             ; ")->queryRow()){				
				if(strtolower($schema['TABLE_TYPE'])!="view"){
					$this->dropTable("{{view_merchant_type}}");
				}				
			}
		}
		
		$stmt="		
		CREATE OR REPLACE VIEW {{view_merchant_type}} as
		select
		a.type_id,a.type_name,a.status,a.color_hex,font_color_hex,
		
		IFNULL(b.language,'en') as language,
		IF(b.type_name IS NULL or b.type_name = '',a.type_name,b.type_name) as type_name_trans
		
		from  {{merchant_type}} a
		left join  {{merchant_type_translation}} b
		on
		a.type_id = b.type_id		
		";		
		$this->execute($stmt);
	}
	
	public function down()
	{
		
	}
}
/*end clas*/