#!/sbin/sh
sleep 5
vdc --wait cryptfs enablefilecrypto
vdc --wait cryptfs init_user0
vdc --wait cryptfs unlock_user_key 0 0 ! !
