# create an eprime model file from an essence model

model=$1 # problem/generator/repair

if [ -f "$model.essence" ]; then
    tempDir="./temp"
    rm -rf $tempDir
    mkdir $tempDir 
    conjure modelling -ac $model.essence -o $tempDir
    mv $tempDir/model000001.eprime $model.eprime
    rm -rf $tempDir
else
    echo "Error: essence model $model.essence doesn't exist"
    exit 1
fi
