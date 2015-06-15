<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta property="og:url"
      content="http://TORQKD.COM" />


<meta property="og:site_name"
      content="TORQKD.COM" />

    <?php //echo $this->pageTitle." || ".Yii::app()->params['site_url']." - Admin Console"; ?>

    <title><?php echo Yii::app()->params['site_url']; ?></title> 



<script type="text/javascript">



        base_url = "<?php echo Yii::app()->getBaseUrl(true);?>";



        theme_url = "<?php echo Yii::app()->theme->BaseUrl;?>";



        asset_url = "<?php echo $this->module->getAssetsUrl();?>";

        hxrw = "<?php echo @$_SERVER['HTTP_X_REQUESTED_WITH'];?>";

     

    </script>
<?php $themeUrl = Yii::app()->theme->baseUrl;

$cs = Yii::app()->getClientScript();

?>
    <style>
	
	body{ background:#ebebeb;}
	  .left-mobile-menu{ display:none;}
.footer-menu1{
background:#ebebeb;
padding:20px 0;

    color: #999999 !important;
   
    text-align: center;
    width: 100%;
    z-index: 0;
	font-size:11px;
}
.footer-menu1 span{color: #999999 !important;
 display:inline-block; padding:0 5px;}
.footer-menu1 a {
    color: #999999 !important;
  
}
        @media screen and (max-width:1024px) {

    
            body{overflow-x:hidden; margin:0; padding:0;}
.mobile-body{ width:98%;}
.left-mobile-menu{ display:block; width:100%; left:-106%; float:left; height:auto;  top:90px;}

.experience-wrapper{ width:96%!important; margin:0 auto;}

.modal-contain{  width:100%;   left:0;}
.footer-menu1{ display:block; overflow:hidden; clear:both;   width:80%; margin:0 auto;   }

            .modal-contain{  width:100%;   left:0;}
            .footer-menu1{ display:block; overflow:hidden; clear:both;  }
				.mobile-top-con{ width:90%; margin:0 auto; display:block; padding-top:20px;}
	.mobile-top-con .mobile-menu {
    background: url("<?php echo $themeUrl; ?>/images/menu.png") no-repeat scroll left top / 60px auto rgba(0, 0, 0, 0);
    float: left;
    height: 0;
    margin-top: -53px;
    overflow: hidden;
    padding-top: 39px;
    width: 58px !important;
	-webkit-transition: width 2s; /* For Safari 3.1 to 6.0 */
    transition: width 2s;
}

.mobile-top-con .mobile-menu:hover {
    overflow: inherit;
    width: 100% !important;
	

}
.left-mobile-menu ul {
  
    border-radius: 0px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 98% !important;
    z-index: 99;
}
.left-mobile-menu ul li {
    width:99% !important;
	
	display:block; margin:0 auto; padding:10px 0;
		position:relative;
	 background: url("<?php echo $themeUrl; ?>/images/menubg.png") repeat-x  left top;
}
.left-mobile-menu ul li a {
    color: #222 !important;
	text-align:center;
	padding:11px 0 2px 0;
	font-size:24px!important;
	

	
}
.left-mobile-menu ul li a:hover {
    color: #000 !important;
}
.left-mobile-menu ul li ul {
    margin: -30px 0 0 60% !important;
    padding: 0 !important;
    text-align: left !important;
      width:144px !important;
	background:#f7931d!important;

}
.left-mobile-menu ul li ul li {
    padding: 0 !important;
    width: 100% !important;
	bborder-bottom:solid 1px #fec077!important;
		background:#f7931d!important;	
}


.left-mobile-menu ul#menu li ul.sub-menu a {
    color: #fff !important;
    display: inline-block;
    float: none;
    margin: 0 auto;
    padding: 9px 0 5px 0;
    text-align: center;
    width: 100%;
}

.left-mobile-menu ul li  ul li a:hover {
    color: #f7931d !important;
	background:#5d5d5e!important;
}



	.mobile-top-con .logo{ width:214px; margin:0 auto; }

       	.mobile-top-con  .logout{ width:54px; float:right; margin-top:-50px; }
		.left-mobile-menu ul {
  
    border-radius: 0px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 98% !important;
    z-index: 99;
}
.left-mobile-menu ul li {
    width:99% !important;
	
	display:block; margin:0 auto; padding:10px 0;
		position:relative;
	 background: url("<?php echo $themeUrl; ?>/images/menubg.png") repeat-x  left top;
}
.left-mobile-menu ul li a {
    color: #222 !important;
	text-align:center;
	padding:12px 0 2px 0;
	

	
}
.left-mobile-menu ul li a:hover {
    color: #000 !important;
}
.left-mobile-menu ul li ul {
    margin: -30px 0 0 60% !important;
    padding: 0 !important;
    text-align: left !important;
      width:144px !important;
	background:#f7931d!important;

}
.left-mobile-menu ul li ul li {
    padding: 0 !important;
    width: 100% !important;
	bborder-bottom:solid 1px #fec077!important;
		background:#f7931d!important;	
}


.left-mobile-menu ul#menu li ul.sub-menu a {
    color: #fff !important;
    display: inline-block;
    float: none;
    margin: 0 auto;
    padding: 9px 0 5px 0;
    text-align: center;
    width: 100%;
}

.left-mobile-menu ul li  ul li a:hover {
    color: #f7931d !important;
	background:#5d5d5e!important;
}
.left-mobile-menu ul li:last-child{border-bottom:solid 2px #acacac;}

        }
		
		 @media screen and (max-width:760px) {
	
.left-mobile-menu ul {
  
    border-radius: 2px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 92% !important;
    z-index: 99;
}
		 }
		 
		 	 @media screen and (max-width:645px) {
		 .left-mobile-menu{ display:block; width:45%; left:-45%; float:left; height:auto;  top:90px;}
.left-mobile-menu ul {
  
    border-radius: 2px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 100% !important;
    z-index: 99;
}
		 }
		 
		  	 @media screen and (max-width:500px) {
		 .left-mobile-menu{ display:block; width:80%; left:-45%; float:left; height:auto;  top:90px;}
.left-mobile-menu ul {
  
    border-radius: 2px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 100% !important;
    z-index: 99;
}
		 }
		
		 @media screen and (max-width:480px) {


.left-mobile-menu ul {
  
    border-radius: 2px !important;
    padding: 0px 0 0px 0 !important;
    position: relative;
    width: 96% !important;
    z-index: 99;
}
}

.mobile_appL{background: url(<?php echo $themeUrl; ?>/images/mobile4.png) no-repeat left center; background-size:16px; padding:4px 0 4px 20px;}

    </style>

<script type='text/javascript'>

$(function(){

	
	
	if($(window).width() <= 1024){
		 
		   var divh = $('.modal-contain').height();
		  
		   
		    $('.footer-menu1').css('position','absolute');
		   
	    
		 
		    $('.footer-menu1').css('padding-bottom','20px');
		     
		   
		      
			
	}

})



</script>

    <script type="text/javascript">
        $(document).ready(function(){


            var divh = $('.modal-contain').height();

            var winw = $(window).width();

            var menuw = parseInt(winw)+10;

            menuw = parseInt(menuw);
			
			//alert(menuw);

            $('.left-mobile-menu').css('left',"-"+menuw+"px");
            $('.left-mobile-menu').css('width',menuw+"px");
			
		 $('.left-mobile-menu').css('position','absolute'); 
		 $('.left-mobile-menu').css('top','95px');
		   
		 //  $('.footer-menu1').css('top',divh);
		 
		 $('.footer-mobile').css('display','none'); 
					  
			
			$('.mobile-menu').toggle(function(){
			
				$('.modal-contain').css('display','none');
				$( ".left-mobile-menu" ).animate({ "left": "+="+menuw+"px" }, "slow" );
				$( ".modal-contain" ).animate({ "left": "+="+menuw+"px" }, "slow" );
				
		
				  
				  $('modal-contain').css('float','left');
				  
				   $('.modal-contain').css('position','absolute');
				  
						
	
			
			},function(){
			$('.modal-contain').css('display','block');
				$( ".left-mobile-menu" ).animate({ "left": "-="+menuw+"px" }, "slow" );
				$( ".modal-contain" ).animate({ "left": "-="+menuw+"px" }, "slow" );
				
				
					 //$('.footer-menu1').css('top',parseInt(divh)-250);	
					  
			
			});
			
			


        });


        jQuery(window).load(function(){
            jQuery('#loading').fadeOut(3000);
        });




    </script>

<style>
    #loading {
        background:#000 url(<?php echo $themeUrl;?>/images/loading_list.gif) no-repeat center center;
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
		
		
		if($('.left-mobile-menu').find('#menu').offset().left >=0 && $(window).width() <= 1024){

			var dh = $('#mdiv').offset().top;
			
			var winh = $(window).height();
			
						
			if(winh < dh && window.pageYOffset > parseInt(dh-winh)){
				
				$("html, body").animate({ scrollTop: parseInt(dh-winh) }, 0);
		}
		
		}
        
    });
});
	

	
</script>


<?php

    $baseUrl = Yii::app()->theme->baseUrl;

    $base=yii::app()->baseurl;



    $cs = Yii::app()->getClientScript();



    $cs->registerScriptFile($base.'/common/js/common.js',CClientScript::POS_HEAD);




$sess = Yii::app()->session['sess_user'];


?>

 

<?php require_once('top.tpl.php'); ?>
<input type="text" id="lat" style="display: none;">
<input type="text" id="long" style="display: none;">
<div class="mobile-body">
    <div class="left-mobile-menu">
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

        <div class="clear"></div>
    </div>

    <div class="modal-contain">
        <?php echo $content; ?>
        
        <?php require_once('footer.tpl.php'); ?>
    </div>

    <div class="clear"></div>

</div>
<div class="clear"></div>




    