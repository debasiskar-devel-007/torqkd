<div class="mobile-top-con">
    <?php $sess = Yii::app()->session['sess_user']; ?>
 <div class="logo"> <a href="<?php echo yii::app()->getBaseUrl(true) ?>"><img src="<?php echo $themeUrl;?>/images/logo.png"  alt="#" /></a></div>
  <div class="mobile-menu">
    <ul id="menu">
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/profile">Profile</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/friend-list/id/<?php echo intval($sess['id']);?>">Friends</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/connection/id/<?php echo intval($sess['id']);?>">Community</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/photo">Album</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/default/video">TORQK'D TV</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/routes">View Routes</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/addevent">Add Events</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/addgroup">Add Groups</a></li>
        <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/maproute">Add Routes</a></li>
      <li><a href="<?php echo yii::app()->getBaseUrl(true) ?>/forumpress">Forum</a></li>
      <li><a href="javascript:void(0);" onclick="showdailypoll()">Daily Poll</a></li>
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
  </div>
 <div class="logout"> <a href="<?php echo yii::app()->getBaseUrl(true) ?>/user/profile/editprofile"><img src="<?php echo $themeUrl;?>/images/gear2.png"  alt="#" /></a></div>
  
  <div class="clear"></div>
  
</div>
