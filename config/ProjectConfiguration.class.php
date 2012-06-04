<?php

#require_once '/Users/jrmy/Sites/clients/envision_building_company/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/core/dm.php';
require_once dirname(__FILE__).'/../lib/vendor/diem/dmCorePlugin/lib/core/dm.php';

dm::start();

class ProjectConfiguration extends dmProjectConfiguration
{

  public function setup()
  {
    parent::setup();
    
    $this->enablePlugins(array(
      // add plugins you want to enable here
    	'dmSqlBackupPlugin',
    	'dmMediaUploadifyerPlugin'
    ));

    $this->setWebDir(sfConfig::get('sf_root_dir').'/web');
  }
  
}