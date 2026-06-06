#make sure /data/user/nsala/nvenc-base project exists.
if [ ! -d "/data/user/nsala/nvenc-base" ]; then
    echo "Error: /data/user/nsala/nvenc-base project does not exist."
    exit 1
fi

#link ~bash_profile to home dir
ln -s `realpath bash_profile` ~/.bash_profile

sudo mkdir -p /home_prod/scratch.nsala_gpu/
sudo chown nsala:dip /home_prod/scratch.nsala_gpu/

cd /home_prod/scratch.nsala_gpu/
git clone ssh://git@gitlab-master.nvidia.com:12051/vidcomp_arch/algorithms/nvenc-devs/nvenc-base.git

cp /data/user/nsala/nvenc-base/nvencode-sdk.code-workspace /home_prod/scratch.nsala_gpu/nvenc-base/
cp /data/user/nsala/nvenc-base/launch.json /home_prod/scratch.nsala_gpu/nvenc-base/

