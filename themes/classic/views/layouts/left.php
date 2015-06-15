<?php $themeUrl = Yii::app()->theme->baseUrl; ?>

<?php $base = Yii::app()->request->baseUrl; ?>
<!--top-contain-->
<div class="wrapper">
<div id="sidebar">
    <!-- <div class="Collapse">
        <a href="javascript:collapse_sidebar();" target="_self" title="Collapse Left Menu" id="Collapse" rel='tip'>
            <img src="icons/collapse-right.png" alt="" border="0"/>
        </a>
        </div>    -->                       
            <ul class="nav">
                <li><a class="headitem item1" href="#">Dashboard</a>
                    <ul>
                        <li><a href="index.php">Dashboard</a></li>
                    </ul>
                </li>
                <li><a class="headitem item2" href="#">Product Manager</a>
                     <ul>
                        <li><a href="<?php echo $base ?>/product/admin/category/add">Add / Edit Category</a></li>
                        <li><a href="<?php echo $base ?>/product/admin/category/listing">Category Listing</a></li>
                        <li><a href="<?php echo $base ?>/product/admin/product/add">Add / Edit Product</a></li>
                        <li><a href="<?php echo $base ?>/product/admin/product/listing">Product Listing</a></li>
                    </ul>                         
                </li>
                <li><a class="headitem item4" href="#">User Manager</a>
                    <ul>
                        <li><a href="<?php echo $base ?>/user/admin/user/add">Add / Edit User</a></li>
                        <li><a href="<?php echo $base ?>/user/admin/user">User Listing</a></li>
                       <li><a href="<?php echo $base ?>/user/admin/role/add">Add / Edit User Role</a></li>
                        <li><a href="<?php echo $base ?>/user/admin/role">User Role Listing</a></li>
                    </ul>     
                </li>
                <li><a class="headitem item8" href="#">Image Manager</a>
                    <ul>
                        <li><a href="add-edit-image.php"> Add / Edit Images</a></li>
                        <li><a href="#">Images Approval</a></li>
                        <li><a href="#">Image Listing</a></li>
                    </ul>   
                </li>
                <li><a class="headitem item9" href="#">Video Manager</a>
                    <ul>
                        <li><a href="add-edit-video.php">Add / Edit Video</a></li>
                        <li><a href="#">Video Approval</a></li>
                        <li><a href="video-listing.php">Video Listing</a></li>
                    </ul>   
                </li>
                <li><a class="headitem item11" href="#">Album Manager</a>
                    <ul>
                        <li><a href="add-edit-album.php">Add / Edit Album</a></li>
                        <li><a href="new-album.php">Album Approval</a></li>
                        <li><a href="album-listing.php">Album Listing</a></li>
                    </ul>   
                </li>
                <li><a class="headitem item10" href="#">Blog Manager</a>
                    <ul>
                        <li><a href="add-blog.php">Add / Edit Blog</a></li>
                        
                    </ul>   
                </li>
                <li><a class="headitem item5" href="#">Refferal Manager</a>
                    <ul>
                        <li><a href="refferal-list.php">Refferal List</a></li>
                    </ul>   
                </li>
                <li><a class="headitem item6" href="#">Account Manager</a>
                    <ul>
                        <li><a href="account-info.php">Account Information</a></li>
                        <li><a href="change-password.php">Change Password</a></li>
                    </ul>   
                </li>
                <li><a class="headitem item7" href="#">Social Media Manager</a>
                    <ul>
                        <li><a href="admin-social-media.php">Admin Social Media</a></li>
                        
                    </ul>   
                </li>
                <li><a class="headitem item12" href="#">Admin Manager</a>
                    <ul>
                        <li><a href="add-edit-admin.php">Add / Edit Admin</a></li>
                        <li><a href="admin-listing.php">Admin Listing</a></li>
                    </ul>   
                </li>
                
            </ul><!--end subnav-->
    
            
            <div class="clear"></div>
            <!--<div class="flexy_datepicker"></div> -->
                    </div>