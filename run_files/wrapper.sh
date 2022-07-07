datapath=/opt/MORE_Project/Data
datapath=$1

cd $datapath

for i in $(ls *.edf); do
edf2asc $i
done
