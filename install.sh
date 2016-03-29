# Add PyPy PPA
sudo apt-add-repository ppa:pypy/ubuntu/ppa
sudo apt-get update

# Install PyPy, pip, and build requirements
sudo apt-get install build-essential libssl-dev python-pip pypy pypy-dev

# Install virtualenv through pip
sudo pip install virtualenv

# Create a PyPy virtualenv in the directory pypy-venv:
virtualenv --python=pypy ~/pypy-venv

# Start working in the virtual environment:
cd ~/pypy-venv/
. bin/activate

# Install redis server
sudo apt-get install redis-server

# Start redis
sudo service redis-server start

# Move to workspace
cd ~/workspace

# Insert data in redis
cat product_data_redis.txt | redis-cli --pipe

# Install Redis
sudo pip install redis


# Install Flask
sudo pip install flask

