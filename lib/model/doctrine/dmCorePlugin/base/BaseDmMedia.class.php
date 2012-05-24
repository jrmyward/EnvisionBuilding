<?php

/**
 * BaseDmMedia
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $dm_media_folder_id
 * @property string $file
 * @property string $legend
 * @property string $author
 * @property string $license
 * @property string $mime
 * @property integer $size
 * @property string $dimensions
 * @property DmMediaFolder $Folder
 * 
 * @method integer       getDmMediaFolderId()    Returns the current record's "dm_media_folder_id" value
 * @method string        getFile()               Returns the current record's "file" value
 * @method string        getLegend()             Returns the current record's "legend" value
 * @method string        getAuthor()             Returns the current record's "author" value
 * @method string        getLicense()            Returns the current record's "license" value
 * @method string        getMime()               Returns the current record's "mime" value
 * @method integer       getSize()               Returns the current record's "size" value
 * @method string        getDimensions()         Returns the current record's "dimensions" value
 * @method DmMediaFolder getFolder()             Returns the current record's "Folder" value
 * @method DmMedia       setDmMediaFolderId()    Sets the current record's "dm_media_folder_id" value
 * @method DmMedia       setFile()               Sets the current record's "file" value
 * @method DmMedia       setLegend()             Sets the current record's "legend" value
 * @method DmMedia       setAuthor()             Sets the current record's "author" value
 * @method DmMedia       setLicense()            Sets the current record's "license" value
 * @method DmMedia       setMime()               Sets the current record's "mime" value
 * @method DmMedia       setSize()               Sets the current record's "size" value
 * @method DmMedia       setDimensions()         Sets the current record's "dimensions" value
 * @method DmMedia       setFolder()             Sets the current record's "Folder" value
 * 
 * @package    ebc_dm
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseDmMedia extends myDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('dm_media');
        $this->hasColumn('dm_media_folder_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => true,
             ));
        $this->hasColumn('file', 'string', 255, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 255,
             ));
        $this->hasColumn('legend', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('author', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('license', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('mime', 'string', 63, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 63,
             ));
        $this->hasColumn('size', 'integer', 4, array(
             'type' => 'integer',
             'unsigned' => true,
             'length' => 4,
             ));
        $this->hasColumn('dimensions', 'string', 15, array(
             'type' => 'string',
             'length' => 15,
             ));


        $this->index('folderFile', array(
             'fields' => 
             array(
              0 => 'dm_media_folder_id',
              1 => 'file',
             ),
             'type' => 'unique',
             ));
        $this->option('symfony', array(
             'filter' => false,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('DmMediaFolder as Folder', array(
             'local' => 'dm_media_folder_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE'));

        $timestampable0 = new Doctrine_Template_Timestampable(array(
             ));
        $this->actAs($timestampable0);
    }
}