# Avatar Card

Demo: [https://codepen.io/Zeukkari/pen/QWWJRqZ](https://codepen.io/Zeukkari/pen/QWWJRqZ)


# Setup

Prequisites: nodejs and yarn

Install dependencies:
```
yarn install
```

Run dev:
```
yarn start
```

Build:
```
yarn build
```


# Docker Setup


```
docker build . -t svelte-avatar-card
docker run -e PORT=5000 -it -p 5000:5000 svelte-avatar-card
```

Open browser at http://localhost:5000
