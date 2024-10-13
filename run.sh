git clone https://github.com/dockersamples/node-bulletin-board.git nodesql
git clone   solucion
cd nodesql
git checkout v5
mv ../solucion/ .

docker-compose up --build -d

if [ $? -eq 0 ]; then
	echo "bien"
else
	echo "mal"
	exit 1
fi

