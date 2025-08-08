FROM ghcr.io/actions/actions-runner:latest

RUN sudo apt-get update 
RUN sudo apt-get install git-crypt curl -y
RUN sudo curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install -g pnpm
RUN sudo npx playwright install --with-deps
RUN sudo npx playwright install --with-deps chrome
RUN sudo npx playwright install --with-deps msedge
RUN sudo mkdir -p /home/runner/.cache/ms-playwright/ && sudo cp -p /root/.cache/ms-playwright/ffmpeg-* /home/runner/.cache/ms-playwright/
