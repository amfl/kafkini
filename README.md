# Kafkini

_The Great Kafkini knows what the users want!_

Kafkini is a single-page Vue app which lets people fill out a form to produce
configs for [Mongey's Kafka Terraform provider][tf_mongey].

It's designed to help non-experts choose the relevant configuration options and
to enforce topic naming standards.

## Setup

Following <https://www.blog.duomly.com/vue-js-tutorial-how-to-create-vue-js-app-in-5-minutes/#1-install-vue-cli>

**Initial project setup (You shouldn't need to do this):**

```bash
# get into an environment with node, yarn, etc
./run-development-container.sh

npm install yarn
yarn global add @vue/cli

vue create kafkini
# Choose Vue3 defaults
```

See also: [Vue Configuration Reference](https://cli.vuejs.org/config/).

**Development setup:**

```bash
# get into an environment with node, yarn, etc
./run-development-container.sh
# Install deps (populates `node_modules` dir on host)
yarn install
# Run the linter if desired
yarn lint
# Start development server with live reload on 8080
yarn serve
```

**Production setup:**

```bash
yarn build
# Now we are ready to serve via any webserver
# For example
cd dist && python3 -m http.server 8000
```

**Production docker:**

```bash
docker build . -t kafkini:latest
# Running will look something like this
docker run --rm -it -p 8080:8080 kafkini:latest
```

## Random Notes

<https://stackoverflow.com/questions/47638650/how-to-bind-vue-data-to-a-dropdown>

- v-if
- v-show
- v-hide

[tf_mongey]: <https://registry.terraform.io/providers/Mongey/kafka/latest>
