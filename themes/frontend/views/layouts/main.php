<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<meta property="og:title" content="Torqkd" />

<meta property="og:site_name" content="Torqkd.com"/>
<?php

$resdata=Gallery::model()->findAll('isactive=1 ORDER BY priority');

foreach($resdata as $d){
?>
<meta property="og:image" content="<?php echo yii::app()->getBaseUrl(true);?>/uploads/gallery/image/thumb/<?php echo $d['banner_img'] ?>" />

<?php
}

?>
<!--<meta property="og:image" content="http://torqkd.com/themes/frontend/images/fbshare/image-2.jpg" />
<meta property="og:image" content="http://torqkd.com/themes/frontend/images/fbshare/image-3.jpg" />
<meta property="og:image" content="http://torqkd.com/themes/frontend/images/fbshare/image-4.jpg" />
<meta property="og:image" content="http://torqkd.com/themes/frontend/images/fbshare/image-5.jpg" />-->

<meta property="og:description" content="Torqk'd brings the consciousness of outdoor sports to a new, progressive social media realm. Torqk'd is a collective of runners, jumpers, climbers, riders, hikers, surfers and all who dare to smack the terrain from land, sky, powder and H2O. Now go get it!! Time to connect, track and explore." />

<meta property="fb:app_id" content="434078603403320" />

	


    <title><?php echo $this->pageTitle." | ".Yii::app()->params['site_url']; ?></title>

    <script>



        base_url = "<?php echo Yii::app()->BaseUrl;?>";
        
		base_url2 = "<?php echo Yii::app()->getBaseUrl(true);?>";

        theme_url = "<?php echo Yii::app()->theme->BaseUrl;?>";

        asset_url = "<?php echo $this->module->getAssetsUrl();?>";
        
		hxrw = "<?php echo @$_SERVER['HTTP_X_REQUESTED_WITH'];?>";





    </script>



    <?php



        $themeUrl =  Yii::app()->theme->baseUrl;

        $base = Yii::app()->request->baseUrl;  







        $cs = Yii::app()->getClientScript();



        $cs->registerCSSFile($themeUrl.'/assets/css/style.css');

        $cs->registerCSSFile($themeUrl.'/assets/css/jquery.fancybox.css');

        $cs->registerCSSFile($themeUrl.'/assets/css/media.css');

        $cs->registerCSSFile($themeUrl.'/assets/css/responsiveslides.css');

        $cs->registerCSSFile($themeUrl.'/assets/css/elastislide.css');



        $cs->registerCSSFile($themeUrl.'/assets/css/facebox.css');
        $cs->registerCSSFile($themeUrl.'/assets/css/jquery.jcarousel.css');
        $cs->registerCSSFile($themeUrl.'/assets/css/jquery.openCarousel.css');
        $cs->registerCSSFile($themeUrl.'/assets/css/skin.css');
       // $cs->registerCSSFile($themeUrl.'/assets/css/modernizr.css');


        $cs->registerScriptFile($base.'/common/js/common.js',CClientScript::POS_HEAD);
        //$cs->registerScriptFile($base.'/user/assets/js/share.js',CClientScript::POS_HEAD);
        //$cs->registerScriptFile($themeUrl.'/js/jquery.mobile-1.4.5.js',CClientScript::POS_HEAD);
        $cs->registerScriptFile('//connect.facebook.net/en_UK/all.js',CClientScript::POS_HEAD);
		
	
    ?>






    <script type="text/javascript">
        var menul;

        $(document).ready(function(){

           $(".sub-menu").css('width','100px');

            var divh = $('.modal-contain').height();

            var winw = $(window).width();

            var menuw = parseInt(winw)+0;

            menuw = parseInt(menuw);

            $('.left-mobile-menu').css('left',"-"+menuw+"px");
            $('.left-mobile-menu').css('width',menuw+"px");

            $('.left-mobile-menu').css('position','absolute');
            $('.left-mobile-menu').css('top','65px');

            $('.footer-mobile').css('display','none');

            $('.mobile-menu').toggle(function(){
                //alert($(window).height());
                //alert($(window).width());
				$('.modal-contain').css('display','none');
               var menuhighet=$('#menu').find('li').last().offset().top;
               
                //$("body").css('height',menuhighet).css('overflow','hidden');
				 //alert($('body').height());
                //alert(menuhighet);

                $( ".left-mobile-menu" ).animate({ "left": "+="+menuw+"px" }, "slow" );
                $( ".modal-contain" ).animate({ "left": "+="+menuw+"px" }, "slow" );

                $('modal-contain').css('float','left');

                $('.modal-contain').css('position','absolute');

            },function(){

                $('.modal-contain').css('display','block');
                $("body").css('height','').css('overflow','');

                $( ".left-mobile-menu" ).animate({ "left": "-="+menuw+"px" }, "slow" );
                $( ".modal-contain" ).animate({ "left": "-="+menuw+"px" }, "slow" );

            });


            /*$( window ).bind( "orientationchange", function( event ) {

                setTimeout('menutoggle()',5000);

            });*/


        });

        function menutoggle(){

            var winw = $(window).width();

           // var menuw = parseInt(winw)*60/100;
			 var menuw = parseInt(winw)+0;

            menuw = parseInt(menuw);

            //alert(menuw);

            $('.left-mobile-menu').css('left',"-"+menuw+"px");
            $('.left-mobile-menu').css('width',menuw+"px");


            $('.left-mobile-menu').css('position','absolute');

            $('.modal-contain').css('position','absolute');


            $('.mobile-menu').toggle(function(){

                $( ".modal-contain" ).animate({ "left": menuw+"px" }, "slow" );
                $( ".left-mobile-menu" ).animate({ "left": 0 }, "slow" );

                $('.modal-contain').css('position','absolute');


            },function(){

                $( ".modal-contain" ).animate({ "left": 0 }, "slow" );
                $( ".left-mobile-menu" ).animate({ "left": "-"+menuw+"px" }, "slow" );

            });

        }



        jQuery(window).load(function(){
            jQuery('#loading').fadeOut(2000);
        });




    </script>

    <style>
        #loading {
            background:#000 url(<?php echo $themeUrl;?>/assets/images/loading_list.gif) no-repeat center center;
            height: 100%;
            width: 100%;
            position: fixed;
            left: 0;
            top: 0;
           /* margin: -25px 0 0 -25px;*/
            z-index: 1000;
            opacity: .5;
        }
    </style>


</head>



<body>
<div id="loading"></div>
<div id="fb-root"></div>
<?php $cs->registerScriptFile('//connect.facebook.net/en_UK/all.js',CClientScript::POS_HEAD); ?>
<script>
    FB.init({
        appId      : '<?php echo Yii::app()->params['fbappid'];?>',
        status     : true,
        xfbml      : true,
        version    : 'v2.0'
    });
	
	
$(function() {
	
    $(window).bind('touchmove',function(){
		
		
		if($('.left-mobile-menu').find('#menu').offset().left >0 && $(window).width() <= 1024){
           // alert($('.left-mobile-menu').find('#menu').offset().left);

			var dh = $('#mdiv').offset().top;
			
			var winh = $(window).height();
			
						
			if(winh < dh && window.pageYOffset > parseInt(dh-winh)){
				
				$("html, body").animate({ scrollTop: parseInt(dh-winh) }, 0);
		}
		
		}
        
    });


	
});
	
	function makeToast1(msg){
		alert(msg);
		Android.showToast(msg);
	}

	
</script>


<?php $arr= Yii::app()->session['sess_user'];

    if(count($arr['role']))

    {

        foreach($arr['role'] as $res)

        {

            if($res==1) 

            {   



            ?>





            <div class="admin-link-main"><div class="admin-link"><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/admin">ADMIN</a></div>



            <div class="clear"></div>

            </div>

            <?php } } }?>


<input type="button" value="click" onClick="makeToast1('this is android')" />


<?php require_once('top.php'); ?>


<input type="text" id="lat" style="display: none;">
<input type="text" id="long" style="display: none;">

<div class="mobile-body">
<div class="left-mobile-menu  mob-menu">
<ul id="menu">
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/profile">Profile</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/friend-list/id/<?php echo intval($sess['id']);?>">Friends</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/connection/id/<?php echo intval($sess['id']);?>">Community</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/photo">Album</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/default/video">TORQK'D TV</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/routes">View Routes</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/addevent">Add Events</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/addgroup">Add Groups</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/mobmaproute">Add Routes</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/forumpress">Forum</a></li>
      <li><a href="javascript:void(0);" onClick="showdailypoll()">Daily Poll</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/default/eventmap">Event Map</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/default/mysports">My Sports</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/editprofile">Update Profile</a></li>
      <li><a href="#">Sports &raquo;</a>
        <ul class="sub-menu" style="width:auto;">
            <?php $this->renderPartial('user.views.default.menu',array('model'=>new Sport())); ?>
        </ul>
         </li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/experience">The Experience</a></li>
          <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/default/logout">Logout</a></li>
     
    </ul>
	
	<div style="height:10px;" id="mdiv"></div>
    
    <div class="clear"></div>
</div>

<div class="modal-contain">
<?php
//echo $_SERVER['HTTP_REFERER'];

//exit;
echo $content; ?>

<?php require_once('footer.tpl.php'); ?>
</div>

<div class="clear"></div>





</div>






<?php $this->beginWidget(

    'bootstrap.widgets.TbModal',

    array('id' => 'results',

        'htmlOptions'=>array('style'=>'display:none'),

        //'htmlOptions'=>array('style'=>'width:80%;left:33%'),



    )

); ?>



<div class="modal-header">

    <a class="close" data-dismiss="modal">&times;</a>

    <h4>Results</h4>

</div>



<div class="modal-body">

    <?php

    $this->widget(

        'chartjs.widgets.ChPie',

        array(

            'width' => 560,

            'height' => 290,

            'htmlOptions' => array(),

            'drawLabels' => true,

            'datasets' => array(

                array(

                    "value" => 60,

                    "color" => "#5D72E0",

                    "label" => "Yep, good times this season for sure."

                ),

                array(

                    "value" => 30,

                    "color" => "#FAB363",

                    "label" => "Nope, get me a tissue."

                ),

                array(

                    "value" => 10,

                    "color" => "#111111",

                    "label" => "It straight up sucked."

                ),



            ),

            //'options' => array()

        )

    );

    ?>









</div>

<div class="clear"></div>

<div style="height: 20px; width: 100%;"></div>

<div class="modal-footer">



    <?php $this->widget('bootstrap.widgets.TbButton', array(

        'label' => 'Close',

        'url' => '#',

        'htmlOptions' => array('data-dismiss' => 'modal'),

    )); ?>

</div>



<?php $this->endWidget(); ?>





<?php $this->beginWidget(

    'bootstrap.widgets.TbModal',

    array('id' => 'results1',

        'htmlOptions'=>array('style'=>'display:none'),

        //'htmlOptions'=>array('style'=>'width:80%;left:33%'),



    )

); ?>



<div class="modal-header">

    <a class="close" data-dismiss="modal">&times;</a>

    <h4>Results</h4>

</div>



<div class="modal-body">

    <?php

    $this->widget(

        'chartjs.widgets.ChPie',

        array(

            'width' => 600,

            'height' => 300,

            'htmlOptions' => array(),

            'drawLabels' => true,

            'datasets' => array(

                array(

                    "value" => 60,

                    "color" => "#FAB363",

                    "label" => "Yep, good times this season for sure."

                ),

                array(

                    "value" => 30,

                    "color" => "#D1D3D4",

                    "label" => "Nope, get me a tissue."

                ),

                array(

                    "value" => 10,

                    "color" => "#58595B",

                    "label" => "It straight up sucked."

                ),



            ),

            //'options' => array()

        )

    );

    ?>









</div>



<div class="clear"></div>

<div style="height: 20px; width: 100%;"></div>

<div class="modal-footer">



    <?php $this->widget('bootstrap.widgets.TbButton', array(

        'label' => 'Close',

        'url' => '#',

        'htmlOptions' => array('data-dismiss' => 'modal'),

    )); ?>

</div>



<?php $this->endWidget(); ?>






<div class="clear"></div>












