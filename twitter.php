<?php
require_once 'fbshare/twitteroauth.php';
			
				
				$CONSUMER_KEY = "xbDC7Z3S0EiCDmFH45h45YKVK";
				$CONSUMER_SECRET = "FeoAcJGk0fgbO3oWf8f110YVxkNkSeCSySEGTNjbj9IAkQuDy7";
				$OAUTH_TOKEN = $_GET['oauth_token'];
				$OAUTH_SECRET = $_GET['oauth_token_secret'];


				$connection = new TwitterOAuth($CONSUMER_KEY, $CONSUMER_SECRET, $OAUTH_TOKEN, $OAUTH_SECRET);

				$content = $connection->get('account/verify_credentials');
				$status = $connection->upload('statuses/update_with_media', array('status' =>@$_GET['com'].'    '.@$_GET['url'], 'media[]' => file_get_contents(urldecode($_GET['image']))));

                //session_start();
                $page=$_GET['page'];

                //$userid=$_GET['userid'];

                //$sess = Yii::app()->session['sess_user'];


               // echo $page;
               // exit;

                if($page=='com')
                {
                    header('Location:http://torqkd.com/user/default/photo/page/'.$page);
                    //header('Location:http://torqkd.com/user/profile/profile/id/'.$userid);
                }

                else if($page=='routes'){

                    header('Location:http://torqkd.com/user/profile/routes/page/'.$page);
                    //header('Location:http://torqkd.com/user/profile/profile/id/'.$userid);
                }
                else
                {

                    header('Location:http://torqkd.com/user/profile/photo/page/'.$page);
                    //header('Location:http://torqkd.com/user/profile/profile/id/'.$userid);
                }
?>