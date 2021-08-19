# Defined in /tmp/fish.sRf6GW/b.fish @ line 2
function b
	curl -s https://api.coindesk.com/v1/bpi/currentprice/EUR.json | jq .bpi.EUR.rate | sed s/\"//g
end
