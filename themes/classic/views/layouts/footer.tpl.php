<div class="footer-menu1"> <span>&copy;TORQK'D</span><span>|</span> <span><a href="javascript:void(0);" onclick="condition('terms')">TERMS   </a></span><span>|</span> <span><a href="javascript:void(0);"  onclick="condition('policy')" data-original-title="">PRIVACY</a></span></div>

<div id="chat-wrapper" style="display: block;">


    <div class="clear"></div>


</div>
<?php
$smiley_arr =  array(
    '>:)'   =>  '19.gif',
    ':))'   =>  '21.gif',
    ':)'    =>  '1.gif',
    ':(('   =>  '20.gif',
    ':('    =>  '2.gif',
    ';;)'   =>  '5.gif',
    ';)'    =>  '3.gif',
    ':D'    =>  '4.gif',
    ':x'    =>  '8.gif',
    ':>'   =>  '9.gif',
    ':P'    =>  '10.gif',
    ':*'    =>  '11.gif',
    '=(('   =>  '12.gif',
    ':o'    =>  '13.gif',
    'X('    =>  '14.gif',
    ':-j'   =>  '78.gif',
);
?>
<div id="smiley_div" style="display: none;">
    <?php foreach($smiley_arr as $key=>$img) { ?>

        <img onclick="send_smiley(this)" smiley_val="<?php echo $key;?>" src="<?php echo Yii::app()->theme->baseUrl; ?>/smily/<?php echo $img; ?>" width="18" style="cursor:pointer;" />
    <?php } ?>



</div>




</body>



