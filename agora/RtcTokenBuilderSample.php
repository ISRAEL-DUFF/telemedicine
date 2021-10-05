<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include("tokenBuilder/RtcTokenBuilder.php");

function generate_token($channelName, $uid) {
    $appID = "7d0e17b354854bf18e63ae6204e0f395";
    $appCertificate = "c5c9f6e2d87d4ac0ac970304a4d80f19";
    // $channelName = "7d72365eb983485397e3e3f9d460bdda";
    // $uid = 2882341273;
    $uidStr = "2882341273";
    // $role = RtcTokenBuilder::RoleAttendee;
    $role = 0;
    $expireTimeInSeconds = 86400;
    $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
    $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;

    // note: uid has been set to zero in order to allow any user connect
    $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, 0, $role, $privilegeExpiredTs);
    return $token;
} 

// $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);
// echo 'Token with int uid: ' . $token . PHP_EOL;

// $token = RtcTokenBuilder::buildTokenWithUserAccount($appID, $appCertificate, $channelName, $uidStr, $role, $privilegeExpiredTs);
// echo 'Token with user account: ' . $token . PHP_EOL;
?>
