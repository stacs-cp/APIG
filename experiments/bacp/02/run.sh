rm -rf detailed-output

source ~/APIG/scripts/set-path.sh
pushd /home/nttd/APIG/bin/irace-source; ./install.sh; popd

mkdir -p detailed-output/
cp problem.eprime generator.eprime repair.eprime detailed-output/

irace --seed 123 --scenario /home/nttd/APIG/scripts/tuning-files/scenario.R --parameter-file params.irace --train-instances-file instances --exec-dir ./ --max-experiments 504 --target-runner /home/nttd/APIG/scripts/tuning-files/target-runner --parallel 2

