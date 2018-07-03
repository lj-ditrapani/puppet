version=2.12.6
scala_name=scala-${version}
scala_tar=${scala_name}.tgz
dir=~/local
scala_tar_path=${dir}/${scala_tar}

curl http://downloads.lightbend.com/scala/${version}/${scala_tar} > ${scala_tar_path}
tar -xvf $scala_tar_path -C $dir
mv ${dir}/${scala_name} ${dir}/scala