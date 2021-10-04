# Kafka Terraform Generation

A simple form for people to fill out which will help them design topics.

## Setup

Following <https://www.blog.duomly.com/vue-js-tutorial-how-to-create-vue-js-app-in-5-minutes/#1-install-vue-cli>

If you don't have node installed, you can pop into a docker container with it
by running `./run.sh` before running through these steps.

Initial project setup (You shouldn't need to do this):

```bash
npm install yarn
yarn global add @vue/cli

# Initial project setup - Only need to do this once.

vue create kafkini
# Vue3 default
```

Development setup:

```bash
cd kafkini
# Start development server on 8080
yarn serve
```

Production setup:

```bash
yarn build
# Now we are ready to serve via any webserver
# For example
cd dist && python3 -m http.server 8000
```

## Random Notes

<https://stackoverflow.com/questions/47638650/how-to-bind-vue-data-to-a-dropdown>

- v-if
- v-show
- v-hide
