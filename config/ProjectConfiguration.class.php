<?php

require_once '/Users/jrmy_mbp/Sites/clients/ebc/ebc_dm/lib/vendor/diem/dmCorePlugin/lib/core/dm.php';
dm::start();

class ProjectConfiguration extends dmProjectConfiguration
{

  public function setup()
  {
    parent::setup();
    
    $this->enablePlugins(array(
      // add plugins you want to enable here
    ));

    $this->setWebDir(sfConfig::get('sf_root_dir').'/web');
  }
  
}