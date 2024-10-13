git clone https://github.com/dockersamples/node-bulletin-board.git nodesql
git clone https://github.com/chupino/solucionfinaIIab10.git solucion
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

