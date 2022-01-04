sudo apt-get update
echo 'export PATH=/usr/local/cuda-10.2/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64' >> ~/.bashrc
echo 'export PATH=/usr/src/tensorrt/bin${PATH:+:${PATH}}' >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y python3-pip
sudo -H pip3 install -U -y jetson-stats
sudo apt install deepstream-5.0
sudo chmod 777 -R /opt/nvidia/deepstream/deepstream-5.0/ 
cd /opt/nvidia/deepstream/deepstream-5.0/sources/
git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git
cd
docker run --rm -it --network=host aler9/rtsp-simple-server
sudo apt install ffmpeg