DATA_FILE="/tmp/azan.time"
function run() {
    url="https://www.e-solat.gov.my/index.php?r=esolatApi/takwimsolat&period=week&zone=SGR01"
    today=$(date +%Y-%m-%d)
    now=$(date +%H:%M)

    if [ ! -f "$DATA_FILE" ]; then
	http --ignore-stdin --follow $url | jq -r '.prayerTime[0]|to_entries[4,6,7,8,9]|[.key, .value]|@tsv' > $DATA_FILE
    fi

    nextPrayerTimeName=$(awk '$2>"'"$now"'" {print toupper(substr($1,1,1))tolower(substr($1,2))}' $DATA_FILE | head -n 1)
    nextPrayerTime=$(awk '$2>"'"$now"'" {print $2}' $DATA_FILE | head -n 1)

    #echo "🕌 $nextPrayerTimeName ⏰ $nextPrayerTime"
    array=$(awk '{echo $2}' $DATA_FILE)
    
    #for items in $array; do
    #    echo "$(echo "notify-send '🕌 $nextPrayerTimeName ⏰ $nextPrayerTime'"|at $items)"
    #done
}

run
