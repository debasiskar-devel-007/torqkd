<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
Yii::setPathOfAlias('chartjs', dirname(__FILE__).'/../extensions/chartjs');
return array(
    'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
    'name'=>'My Web Application',
    'defaultController' => 'user',

    // preloading 'log' component
    'preload'=>array('log','bootstrap','chartjs'),

    // autoloading model and component classes
    'import'=>array(
        'application.models.*',
        'ext.x-editable.*',
        'ext.yii-mail.YiiMailMessage',
        'application.extensions.image.*',
        'application.components.*',
        'application.extensions.phpass.PasswordHash',
        'application.modules.sportsmanager.models.Sport',
        'application.modules.video.models.*', 
     'application.modules.dailypoll.models.*',    
        'application.extensions.helpers.*',
    ),

    'modules'=>array(
        // uncomment the following to enable the Gii tool

        'gii'=>array(
            'generatorPaths' => array(
                'bootstrap.gii'
            ),
            'class'=>'system.gii.GiiModule',
            'password'=>'P@ssword1',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters'=>array('127.0.0.1',$_SERVER['REMOTE_ADDR'],'::1'),
        ),

        'user','cms','sportsmanager','video','status','dailypoll','gallery'

    ),

    // application components
    'components'=>array(

        'phpThumb'=>array(
            'class'=>'ext.EPhpThumb.EPhpThumb',
        ),
        'user'=>array(
            // enable cookie-based authentication
            'allowAutoLogin'=>true,
        ),
        'chartjs' => array('class' => 'chartjs.components.ChartJs'),

        'mail' => array(
            'class' => 'ext.yii-mail.YiiMail',
            'transportType'=>'smtp',
            'transportOptions'=>array(
                'host'=>'smtp.gmail.com',
                'username'=>'itplcc40@gmail.com',
                'password'=>'itplcc123456',
                'port'=>465,
                'encryption'=>'ssl',
            ),
            'viewPath' => 'application.views.mail',
            'logging' => true,
            'dryRun' => false
        ),

        //'assetManager'=>array(
        //   'class'=>'application.components.SafeModeAssetManager',
        //),

        'bootstrap' => array(
            'class' => 'ext.bootstrap.components.Bootstrap',
            'responsiveCss' => true,
        ),
        // uncomment the following to enable URLs in path-format

        'urlManager'=>array(
            'urlFormat'=>'path',
            'showScriptName'=>false,
            'rules'=>array(

                '<controller:\w+>/<id:\d+>'=>'<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
                '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                'register' => 'user/default/register/role/user',
                'login' => 'user/default/login',
                'profile'=>'user/profile/profile',
                'select-activities' => 'user/default/activities',
                'experience' => 'user/default/experience',
                'group/<d>/<w>'=>'user/default/group_details/id/<d>/name/<w>',
                'group-member/<d>/<w>'=>'user/default/group_member/id/<d>/name/<w>',
                'group-not-member/<d>/<w>'=>'user/default/group_user/id/<d>/name/<w>',



                array(
                    'class' => 'application.components.OurUrlRule',
                    'connectionID' => 'db',
                ),
                ''

            ),
        ),

        'db'=>array(
            'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
        ),
        // uncomment the following to use a MySQL database

        'db'=>array(
            'connectionString' => 'mysql:host=localhost;dbname=torqkdtv_datatorqkd',
            'emulatePrepare' => true,
            'username' => 'torqkdtv_torqkd',
            'password' => 'torqkd',
            'charset' => 'utf8',
        ),

        'editable' => array(
            'class'     => 'ext.editable.EditableConfig',
            'form'      => 'bootstrap',        //form style: 'bootstrap', 'jqueryui', 'plain' 
            'mode'      => 'popup',            //mode: 'popup' or 'inline'  
            'defaults'  => array(              //default settings for all editable elements
                'emptytext' => 'Click to edit'
            )
        ),

        'errorHandler'=>array(
            // use 'site/error' action to display errors
            'errorAction'=>'site/error',
        ),
        'log'=>array(
            'class'=>'CLogRouter',
            'routes'=>array(
                array(
                    'class'=>'CFileLogRoute',
                    'levels'=>'error, warning',
                ),
                // uncomment the following to show log messages on web pages
                /*
                array(
                    'class'=>'CWebLogRoute',
                ),
                */
            ),
        ),
    ),

    // application-level parameters that can be accessed
    // using Yii::app()->params['paramName']
    'params'=>array(
        // this is used in contact page
        'adminEmail'=>'webmaster@example.com',
        'site_url'=>'Torqkd',
        'phpass'=>array(
            'iteration_count_log2'=>8,
            'portable_hashes'=>false,
        ),
    ),


);
