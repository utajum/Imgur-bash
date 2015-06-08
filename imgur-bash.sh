#	Dependencies curl, jq, wget
#	Skriptata vrti celo vreme posho cron ne mozhe vo sekudni
#	Skriptata e za da stava dinamicni sliki na imgur.com, kako na primer http://thecatapi.com/api/images/get?format=src&type=jpg
#	Se pravi akaunt na imgur i se registrira aplikacija
#	https://api.imgur.com/oauth2/addclient
#	Se stava client_id od registracijata vo linkov https://api.imgur.com/oauth2/authorize?client_id=PISHI_ID&response_type=token
#	Se kopira refresh_token od urlto na responsot i se stava vo varijabla
# 	Se menuvaat PISHI_ID, PISHI_SECRET i PISHI_REFRESH_TOKEN na linija 14 vo varijabla
#	

while true; do
	sleep 30
	#refresh_token dava nov access_token
	varijabla=$(curl -X POST -F "client_id=PISHI_ID" -F "client_secret=PISHI_SECRET" -F "grant_type=refresh_token" -F "refresh_token=PISHI_REFRESH_TOKEN" https://api.imgur.com/oauth2/token)

	#go snima tokenot vo kurle.json
	echo "$varijabla" > kurle.json 

	#se parsa samo access_token, apt-get install jq
	noviotToken=( $(jq -r '.access_token' kurle.json) )
	
	#go brishe kurle
	rm kurle.json
	
	echo "$noviotToken"
	
	sleep 5
	
	#mora wget -t 1 (retry count) -T (time delay 25 sekudni) i sleep posho na 1 saat se dekativira access_token
	#ako nema pristap do kamerata timeout za 25 sekundi i prodolzuva nadole
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "01 od 28 za kraj na accesstoken"
	
	#sleep po 80 sekudni pomegju download i upload, imgur rate limit 1250 uploads per day ili (24*60)/1250=1,152 t.e na 70 sekundi po edna slika
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "02 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "03 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "04 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "05 od 28 za kraj na accesstoken"

	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "06 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "07 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "08 od 28 za kraj na accesstoken"
	

	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "09 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "10 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "11 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "12 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "13 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "14 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "15 od 28 za kraj na accesstoken"

	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "16 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "17 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "18 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "19 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "20 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "21 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "22 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "23 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "24 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "25 od 28 za kraj na accesstoken"
	

	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "26 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "27 od 28 za kraj na accesstoken"
	
	sleep 71
	
	wget=/usr/bin/wget
	wget -t 1 -T 25 http://url.do.mojata.dinamicna.slika/slika.jpg -O slika.jpg
	curl -X POST -H "Authorization: Bearer ${noviotToken}" -F "image=@slika.jpg" https://api.imgur.com/3/upload
	rm slika.jpg
	echo "28 od 28 za kraj na accesstoken"

	
done