<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->

<title>With</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/with/css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/with/js/bootstrap.js"></script>

<script>
function member_search_form() {
	var a = document.getElementById("member_search").value;
	location.href='/with/member/search/'+a;
}

var chat_condition=0;
function chat_call(name) {
 	window.open("http://203.233.196.193:52273?name="+name+"&room=102","Chat","all=no, width=230,height=420");

// 	}
}
</script>
</head>

<body>

	<!-- 헤더 네비게이션 -->
	
<jsp:include page="/include/header_navi.jsp" />

<!-- head -->
<div id = "head">
	<h1> FAQ</h1>
</div>
<!--// head -->

<!-- all div -->
<div  id = "all">
	<!-- left menu -->
	<div id="menu">
		<ul class="leftmenu">
			<li><a href="/with/FAQ/index">about With</a></li>
			<li><a href ="/with/FAQ/faq">FAQ</a></li>
		</ul>
	</div>
	<!--// left menu -->

	<!-- contents -->
	<div id="content">
		<div id = "contentHead" >
			<h2>Something's not working</h2>
		</div>	
	<hr color=navy width =100%>

<div class="accordion" id="accordionTopIssues">

<!--top 이슈 시작  -->

	<h3>Top Issues</h3>	
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Issues_photo">
      I Can't Upload My Profile Photo
      </a>
    </div>        
    <div id="Issues_photo" class="accordion-body collapse">
      <div class="accordion-inner">
      	<ul><h3>If your photo won't upload, try these things:</h3>
		 <li> <b> Check your file type.</b> With supports JPEG, GIF, and PNG file formats. We do not support animated GIFs. All existing animated GIF images will be left as they are, but no new ones can be uploaded. Profile photos with nudity will be removed.    		</li>
		 <li> <b> Make sure your file is the correct size.</b> Your photo must be no more than 700k.</li>
		 <li> <b> Make sure your browser is up to date.</b> Try upgrading your browser or using another browser. Your upload problem may be related to the browser or computer you're using.</li>
		 <li> <b> Make sure you click Save changes at the bottom of your Profile settings page.</b> Your image won't save until you click that. </li>     
      	</ul>
      	<ul><h3>Is the upload chopping off parts of your image?</h3>
		<li>This is expected behavior, not a bug. Profile photos on With are all displayed as small squares. If you upload a photo that is a rectangle, With cuts some of the image off so it's a square. To avoid this, upload a square photo or customize image dimensions by using an online image editor. </li>      	
      	</ul>       
      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Issues_following">
        I'm Having Trouble with Following
      </a>
    </div>    
    
    <div id="Issues_following" class="accordion-body collapse">
      <div class="accordion-inner">
      Below are solutions to common problems with following:

	<ul><h3>I can't follow anyone:</h3>
	<li>You may have hit a following limit.</li> 
	<li>We only allow you to follow a certain number of users per day and per account in order to limit spam. Click here to read more about follow limits.</li>
	</ul> 

	<ul><h3>I can't unfollow someone:</h3>

	<li>Log in to With on the web and visit your following list.</li>
	<li>Hover over the Following button next to the user you don't want to follow anymore. It will turn red and say Unfollow. Click Unfollow and the user will be removed from your following list.</li>
	<li>If it doesn't turn red or click, refresh the page and try again, or click the user's name to visit their profile page and unfollow them there.</li>
	</ul>
	<ul><h3></h3>My follower count is wrong:

	<li>If you received a message from With alerting you to a new follower, but don't see that person later in your followers list, it's likely that user was removed for spam activity, unfollowed you, or deactivated their account.</li>
	</ul>

	<ul><h3>I'm having trouble removing a follower (blocking):</h3>
	<li>The only way to remove someone who's following you is to block them. Click here to learn how to block a user.</li> 
	</ul>

	<ul><h3>It looks like I'm not following someone I know I followed:</h3>
	<li>Log in and confirm that the user is in your following list.</li>
	<li>Confirm that a blue Following box shows when you visit their profile (get there by clicking their name or entering their username in your browser like this: http://With.com/username).</li>
	</ul>
	<ul>
	<li>If it shows Following (see below), yay! You're following that user. Their contents should appear in your Home timeline.</li>
	<li>If it doesn't show, they may have blocked you. Click Follow on their profile. An error message means the user has blocked you from following them. Read more about blocking here.</li>
    </ul>
</ul>
        
      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Issues_settings">
          I'm Having Trouble Updating My Account Settings
      </a>
    </div>    
    
    <div id="Issues_settings" class="accordion-body collapse">
      <div class="accordion-inner">
       
<h3>Changes to my account settings aren't saving</h3>

<ul>If you get an error message when trying to save changes to your account settings, it could be due to one of the following:

<li>A fake verification mark (check mark symbol) in the name or bio field.</li>
	<ul>
	<li>Remove the check mark in order to save changes.</li>
	</ul>
<li>A URL that is being detected as malware in the URL or bio field.</li>
	<ul>
	<li>Remove all URLs from your bio or website field and save changes. Learn more.</li>
	</ul>
	
<li>A bio that is over 160 characters long.</li>
	<ul>
	<li>Shorten your bio and save changes. Learn more.</li>
	</ul>
<li>You forgot your password, which is needed to confirm some account settings updates.</li>
</ul>
      </div>
    </div>
 </div>
 </div>
 <!--top 이슈 끝  -->

<!--Can't login 시작  -->
<div class="accordion" id="accordionCantlogin">

	<h3>Can't login</h3>	
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Cantlogin">
      I Can't Upload My Profile Photo
      </a>
    </div>        
    <div id="Cantlogin" class="accordion-body collapse">
      <div class="accordion-inner">

<h3>I cannot remember the username I used.</h3>
<ul>
<li>Use your <b>account email address and password </b>to log in here.</li>
	<ul>
	<li>If your password is not working, request a new password by entering your email address in our reset form.</li>
	<li>If our system cannot find your email address, you may be entering the wrong one. Keep reading.</li>
	</ul>
</ul>

<h3>I cannot remember the email address I used on my account.</h3>
<ul>
<li>Use your account's <b>username and password </b>to log in here.</li>
	<ul> 
	<li>If that does not work, visit our password request form and enter the username or email addresses or mobile phone number you think you used. Then, check all your email inboxes – we will send password reset instructions to the account's email address.</li>
	</ul>
</ul>

<h3>I cannot remember the phone number I used on my account.</h3> 
<ul>
<li>If you are prompted to enter a mobile phone number when requesting a password reset, and cannot remember what phone number you used, <b>enter your username or account email address.</b></li>
</ul>

<h3>I think my account has been hacked!</h3>
<ul>
<li><b>See our 'hacked' help page for next steps,</b> including a quick way to contact us for assistance.</li>
</ul>

<h3>I have lost access to the email address I used when I signed up.</h3>
<ul>
<li>Try to <b>log in to your With account using just your username and password.</b> As soon as you are logged in, be sure to update your email address in your account settings.</li>
<li>If you have added your mobile number to your account, <b>you can receive an SMS (text message) password reset code.</b> Read more about this here.</li>
<li>If you have forgotten your password and have lost access to your account email, and you do not have a mobile number associated with your account, <b>we are unable to help you regain access to that With account.</b> Contact your email provider for help. Read more here.</li>
</ul>

<h3>I requested a new password reset, but it has not arrived in my email inbox.</h3>
<ul>
<li>Be sure to check your junk or spam filters on your email inbox. Many small domains filter our emails. <b>Search for any emails from With.</b></li>
<li>Enter your email address when requesting a password reset. This will ensure you know which email we are sending to, and are checking the right inbox.</li> 
<li>If you are requesting a password reset to the correct email address but it is not arriving, file a support ticket here.</li>
</ul>

<h3>I am receiving the password reset emails but I still cannot log in</h3>
<ul>
<li><b>Try again</b> – the links in those emails are time-sensitive. Be sure you have not copied and pasted any extra spaces if you copy the link into your browser's URL bar.</li>
<li><b>Try logging in from a different browser </b>(we suggest Firefox, which can be downloaded for free) or another computer.</li>
<li><b>Make sure your browser accepts cookies. </b>Before saving your new password, you should also try clearing your browser's cache.</li>
</ul> 

<h3>I try to log in and I get a "Locked out!" error message.</h3>
<ul>
<li><b>Those locks will clear on their own </b>after an hour or so. Do not request more password resets while you wait.</li>
</ul>

<h3>I just made a new account, but have not been able to log in yet.</h3>
<ul>
<li><b>Make sure your signup was successful.</b> Check your email inbox for the confirmation we send you when you successfully signed up for an account.</li> 
	<ul>
	<li>If it looks like you did not create an account, you can sign up again here.</li>
	<li>If you did create a new account but cannot log in, request a new password here. Be sure to check your spam and junk folders for our password email.</li> 
    </ul>
</ul>
   
      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Cantlogin_account">
        My Account is Compromised/Hacked and I Can't Log In!
      </a>
    </div>    
    
    <div id="Cantlogin_account" class="accordion-body collapse">
      <div class="accordion-inner">
If you think you've been hacked and you're unable to log in with your username and password, please take the following two steps:
<br />
<h3>1. Request a password reset.</h3>
<ul>
<li>Reset your password by requesting an email from the password reset form. Try entering both your username and email address, and be sure to check for the reset email at the address associated with your With account.</li>
<br />
<li>If you're able to log in after the password reset, please re-secure your account by following the steps listed here.</li>
</ul>


<h3>2. Contact Support if you still require assistance.</h3>
<ul>

<li>If you still can't log in, contact us by submitting a Support request. Please choose "Hacked account" from the list of options. Be sure to use the email address you associated with the hacked With account; we'll then send additional information and instructions to that email address. Include both your username and the date you last had access to your account.</li>
<br />
<li>If you've lost access to the actual email account associated with your With account, please see this help page.</li>
</ul>

      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Cantlogin_attempts">
        I'm Locked Out After Too Many Sign In Attempts
      </a>
    </div>    
    
    <div id="Cantlogin_attempts" class="accordion-body collapse">
      <div class="accordion-inner">
<h3>What does it mean to be locked out?</h3>
<ul>
<li>After a limited number of failed attempts to sign in to With, you will be temporarily locked out from trying to sign in. When your account is locked, you will not be able to sign in — even with the correct password.</li>
<li><b>This lock lasts about an hour and will then clear on its own.</b></li>
</ul>

<h3>If the lock does not clear after an hour:</h3>
<ul>
<li>Disable your third-party applications, like Tweetdeck, Hootsuite, widgets, etc. (Only re-enable the applications you've disabled after you've confirmed you can sign in at With.com.)</li>
<li>Wait an hour.</li>
<li>After an hour has passed, check to confirm that you can sign in successfully at https://With.com/login. If you can't remember your password, you can request a new password here.</li>
<li>If you don't receive a password reset email and still cannot remember your password, please read this help article for troubleshooting tips.</li>
</ul>

<h3>Why does With lock accounts?</h3>
<ul>
<li>With limits the number of times that someone can try signing in to an account for security reasons. We don't want to give hackers unlimited attempts at guessing your password. So, we block them from trying after a while.
</li></ul>
<h3>I didn't trigger the lock. Was my account compromised?</h3>
<ul>
<li>If user's account appears to be hacked or phished, we may proactively reset the passwords for the affected accounts to revoke access to the hacker. In these cases, we send an email to the account's real owner (you) with additional information on how to reset the password. If you got one of these emails, please follow the instructions in the email.</li>
<li>If you think your account has been hacked or phished, you'll find some additional information on this help page for compromised accounts.</li>
</ul>

<h3>What if I keep getting locked out and I use TweetDeck?</h3>
<ul>
<li>If you're using TweetDeck and are locked out of your account, please sign out of and close <b>TweetDeck entirely.</b> You will not be able to verify or change your new password in TweetDeck while you are locked out, and keeping TweetDeck open may be causing your ongoing locks. Wait an hour and then confirm that you can sign in on With.com.</li>
<li>Once you've logged in successfully at With.com, open TweetDeck and go immediately to <b>Preferences</b> and then <b>Accounts.</b> Select your account, then verify and save your correct password.</li>
</ul>

      </div>
    </div>
 </div>
  
 
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Cantlogin_Reactivate">
        I Can't Reactivate My Account
      </a>
    </div>    
    
    <div id="Cantlogin_Reactivate" class="accordion-body collapse">
      <div class="accordion-inner">
Deactivated accounts can be reactivated <b>within 30 days of deactivation</b> by logging in with the account username (or email address) and password on With.com. For detailed instructions on how to reactivate your account, please read this article.
<br /><br />
If you're having trouble with reactivation, there are a few reasons why you may not be able to reactivate your account this way:
<br /><br />
<h3>You forgot your login details.</h3>

If you don't remember or don't have access to your account username, email address and/or password, please review this article to learn how to recover your lost password. You can request a password reset email here.

<h3>You reactivated your account, but your following/followers or Tweet counts are wrong.</h3>

Some users' following/followers or Tweet counts do not immediately display their previous numbers upon reactivation. Don't worry! These will be fully restored within 24 hours of reactivation. If it has been greater than 48 hours and your counts have still not been restored, contact support for assistance.

<h3>When logging in, it says your account is still deactivated.</h3>

Try resetting your password by requesting a password reset email here. Then, log in again.

<h3>You are trying to reactivate your account from a mobile device.</h3>

Reactivation is not supported on mobile devices. Please log in to With.com from a computer to reactivate your account.

<h3>You deactivated your account more than 30 days ago.</h3>

Users have 30 days to log in to reactivate a previously deactivated account. If it has been more than 30 days since you deactivated, your account has been permanently deleted and we will not be able to reactivate it. You can sign up for a new account here.

<h3>You think your With account was hacked and deactivated.</h3>

If you think your account was hacked and maliciously deactivated, please see our 'hacked' help page for next steps, including a quick way to contact us for assistance.

<h3>You tried to reactivate, but it says account reactivation is disabled.</h3>

Don't worry! This is temporary, and you can try again later. If it is near 30 days from the date of deactivation, you can ask a support agent to help you restore your account – just use the contact support link below!
<br /><br />

      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Cantlogin_Taken">
          My Account Information Is Already Taken
      </a>
    </div>    
    
    <div id="Cantlogin_Taken" class="accordion-body collapse">
      <div class="accordion-inner">
      <br /><br />
If you're trying to create an account but are told your email address, username, or phone number are already in use on With, here are a few explanations why:
<ul>
<li>Your information is associated with a deactivated account</li>
<li>Your username or email address is associated with a suspended account</li>
<li>There is another active account on With using your email address, username, or phone number</li>
<li>You've created an account via your mobile phone</li>
</ul>

<h3>If your information is associated with a deactivated account:</h3>
<ul>
<li>When you deactivate an account, the username and email addresses will be unavailable to use on another account for 30 days after the date of deactivation.</li> 
<li>If it has been more than 30 days since you deactivated the account, please contact our support team. They will not be able to restore your account, but can make sure your information gets cleared from our system.</li>
</ul>


<h3>If your username or email address is associated with a suspended account:</h3>
<ul>
<li>Usernames and email addresses attached to suspended accounts are not available for use under any circumstances.</li>
</ul>


<h3>If there is another active account on With using your email address, username, or phone number:</h3>
<ul>
<li>An email address can only be associated with one With account at a time. You may own another account on With if your information is not available.</li> 
<li>To check if your email address is already in use, try sending yourself a password reminder email.</li> 
<li>To check if your username in already in use, try plugging the username into this URL: With.com/[enter username here]. If there is no account at that URL, the username is most likely attached to a deactivated or suspended account.</li>
<li>If your phone number is listed as being in use already on With, see the next section for completing mobile sign up.</li>
</ul>
<h3>If you've created an account via your mobile phone:</h3>
<ul>
<li>You may have created an account via text message if you texted the word "Start" or "Follow username" to your With shortcode. This process creates an account for you that is attached to your phone number.</li>
<li>To see if this is the case with your phone number, enter your phone number here to access the account attached to it. If an account is found, complete web sign up by clicking Continue. You can then remove the number/address from the device settings page, and deactivate the account if you want to start over.</li>
</ul>
      </div>
    </div>
 </div>
 </div>


<!-- Can't login 끝 -->

<!--Error 시작  -->
<div class="accordion" id="accordionError">

	<h3>Error</h3>	
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Error_page">
      I Keep Getting an Error or Over Capacity Page!
      </a>
    </div>        
    <div id="Error_page" class="accordion-body collapse">
      <div class="accordion-inner">
      <br /><br />
Do you see an error message when you log in to With? This page will help you determine what these messages may mean.

<h3>With is over capacity</h3>

This message likely means that our servers are being bogged down by a high volume of contents. Wait a little while, then refresh your browser to try loading the page again. If you continue to see the whale error page (below) repeatedly during a short period of time, please check out our Status Blog, where we keep you updated about site outages and issues. Thanks for your patience!

<h3>Something is technically wrong</h3>

Our bad! If you see this error message, there's likely an issue on our end. Rest assured, we're working on it! If you continue to see the robot error page (below) for an extended period of time, please use the<b> Contact Support </b>link at the bottom of this page so we can investigate. Remember to be detailed about what you were doing before the robot appeared (e.g. "I was uploading a background image.").       
      </div>
    </div>
 </div>
  
 <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#Error_spam">
       My Website is Being Flagged as Malware or Spam!
      </a>
    </div>    
    
    <div id="Error_spam" class="accordion-body collapse">
      <div class="accordion-inner">
      <br /><br />
If you see a warning about malware or spam when you try to take the actions listed below, this means that the link/URL matches a database of potentially harmful URLs:
<ul>
<li>When you tweet a particular link</li>
<li>When you add a particular link to your profile</li>
<li>When you visit a particular link through With's link service, http://t.co</li>
</ul>

<h3>What's a potentially harmful site?</h3>

Harmful sites include web forgeries ("phishing" sites), sites that download malicious software onto your computer, or spam sites that request personal information. This could also mean the website was compromised by a hacker at some point, and the hacker embedded malware onto the website.

<h3>How to clean a website or get it un-flagged:</h3>

If you manage the website of the reported URL, please take the following actions:
<ul>
<li>Check to see if the URL is a suspected malware or phishing site. If you manage the website of the blocked URL, you can view Google's diagnostic report on the URL by visiting this link: http://www.google.com/safebrowsing/diagnostic?site=http://example.com (You'll need to replace "http://example.com" with the URL that is blocked.)</li>
	<ul> 
	<li>If your website is showing up as a malware threat because it's been hacked or compromised, you can find out more information on how to clean your site of malware threats at Google's Resources for Websites and Site Owners. You'll need to clean up any outstanding malware threats before your URL will be un-flagged.</li>
	</ul>
<li>Contact With Trust & Safety. If the URL of the site you manage is being blocked, and Google is not showing any problems, you should contact our Trust & Safety team by filing a ticket here.</li>
</ul>

<h3>Why does With flag URLs?</h3>

With Flags URLs for Account Security and User Safety. With blocks the posting of suspected malware URLs, and flags suspected harmful shortened URLs, in order to make With more secure and to prevent phishing and scams. Our Safe Tweeting help page has more general information on keeping your account secure.

<h3>If you encounter spam or malware links:</h3>

Please send the t.co URLs to zeta00@with.com and one of our agents will investigate.

To find out more about http://t.co, please see this help page on With's Link Service.
      </div>
    </div>
 </div>
  
  </div>


<!-- Error 끝 -->
		
	<p class="faqmail">* If you got a problem, Please send an email to 
	zeta00@hanmail.net</p>
		 
        </div>
	<!--// contents -->
	
  
</div> <!-- /row -->
<!--// all div -->	
<jsp:include page="/include/footer.jsp" />
</body>
</html>