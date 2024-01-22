<?php
class MigrateTables{
	
	public static function run()
	{
		$tbl=new add_table_ordernew();
		$tbl->up();
		
		$tbl=new add_table_ordernew_meta();
		$tbl->up();
		
		$tbl=new add_table_ordernew_addons();
		$tbl->up();
		
		$tbl=new add_table_ordernew_attributes();
		$tbl->up();
		
		$tbl=new add_table_ordernew_item();
		$tbl->up();
		
		$tbl=new add_table_merchant_type();
		$tbl->up();
		
		$tbl=new add_table_ordernew_trans();
		$tbl->up();
		
		$tbl=new add_table_ordernew_trans_meta();
		$tbl->up();
		
		$tbl=new add_table_gpdr_request();
		$tbl->up();
		
		$tbl=new add_email_provider();
		$tbl->up();
		
		$up = new UpdateTables;
		$up->up();
	}
}
/*end class*/