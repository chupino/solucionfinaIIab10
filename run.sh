git clone https://github.com/dockersamples/node-bulletin-board.git nodesql
if [ $? -ne 0 ]; then
    echo "Error al clonar nodesql"
    exit 1
fi

sleep 3

git clone https://github.com/chupino/solucionfinaIIab10.git solucion
if [ $? -ne 0 ]; then
    echo "Error al clonar solucion"
    exit 1
fi

sleep 3

cd nodesql
git checkout v5

cp -rf ../solucion/. .

docker-compose up --build -d

if [ $? -eq 0 ]; then
	echo "bien"
else
	echo "mal"
	exit 1
fi

