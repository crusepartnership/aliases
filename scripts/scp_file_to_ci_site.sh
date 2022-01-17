if [ "$#" -ne 2 ]
then
  echo Usage:
  echo Arg1: Path to file for SCPing as first argument. Best to cd to the directory you want and run script from there.
  echo "Arg2: Version folder being used by ci site (example, 17.9)"
  echo "Ensure you have set up the config/staging_server_names file (use the example file to get started)"
  exit
fi


PATHTOCONFIGFILE=$(dirname $0)
PATHTOCONFIGFILE="$PATHTOCONFIGFILE/config/staging_server_names"
if [[ ! -f "$PATHTOCONFIGFILE" ]];then
  echo "Please clone the config/example_staging_server_names file to staging_server_names and verify it matches your staging ssh aliases"
  exit 1
fi

if [[ "$1" == "/Users/"* ]]; then
  LOCALFILE=$1
elif [[ "$1" == "~/"* ]]; then
  LOCALFILE=$1
else
  # get a full filepath. Important for constructing the full serverside path
  LOCALFILE="$(pwd)/$1"
fi

VERSION=$2
REMOTEVERSIONPATH="/home/deploy/versions/$VERSION"

echo ""
if [[ "$LOCALFILE" == *"/lucidity-config/"* ]]; then
  RELATIVEPATH="$(echo $LOCALFILE | sed -e 's/\/.*\/lucidity-config\///' )"
  REMOTEPATH="$REMOTEVERSIONPATH/lucidity-config//$RELATIVEPATH"

elif [[ "$LOCALFILE" == *"/lucidity/"* ]]; then
  RELATIVEPATH="$(echo $LOCALFILE | sed -e 's/\/.*\/lucidity\///' )"
  REMOTEPATH="$REMOTEVERSIONPATH/vendor/crusepartnership/lucidity/$RELATIVEPATH"

elif [[ "$LOCALFILE" == *"/cruse-library/"* ]]; then
  RELATIVEPATH="$(echo $LOCALFILE | sed -e 's/\/.*\/cruse-library\///' )"
  REMOTEPATH="$REMOTEVERSIONPATH/vendor/crusepartnership/cruse-library/$RELATIVEPATH"

elif [[ "$LOCALFILE" == *"/lucidity-library/"* ]]; then
  RELATIVEPATH="$(echo $LOCALFILE | sed -e 's/\/.*\/lucidity-library\///' )"
  REMOTEPATH="$REMOTEVERSIONPATH/vendor/crusepartnership/lucidity-library/$RELATIVEPATH"

elif [[ "$LOCALFILE" == *"/integral/"* ]]; then
  RELATIVEPATH="$(echo $LOCALFILE | sed -e 's/\/.*\/integral\///' )"
  REMOTEPATH="$REMOTEVERSIONPATH/$RELATIVEPATH"

else
	echo "Couldn't match $LOCALFILE to a valid lucidity repository"
	exit 1
fi

SERVERS=`cat $PATHTOCONFIGFILE`
for i in $SERVERS; do
        scp $LOCALFILE "$i:$REMOTEPATH"
done
