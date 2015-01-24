#!/usr/sbin/dtrace -s 

/* 
 * Borrowed from the very useful blog post here:
 *   
 * http://dtrace.org/blogs/ahl/2014/08/31/openzfs-tuning/
 *
 * Works without modification on FreeBSD 10.1
 * 
 */


zfs::txg-syncing
{
	this->dp = (dsl_pool_t *)arg0;
}

zfs::txg-syncing
/this->dp->dp_spa->spa_name == $$1/
{
	printf("%4dMB of %4dMB used", this->dp->dp_dirty_total / 1024 / 1024,
					              `zfs_dirty_data_max / 1024 / 1024);
}
