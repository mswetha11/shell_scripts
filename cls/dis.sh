ln=$1
fn=$2

echo "using sed"
echo "---------"

sed -n "${ln}p" $fn

echo "using awk"
echo "---------"

awk 'NR=='$ln'{print}' $fn
