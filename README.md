# Git Pages for davehadley.github.io / davehadley.co.uk

This repository contains the personal web pages of David Hadley hosted at (https://davehadley.co.uk).

## Build CSS

Ensure SASS is installed globally:
```
npm install -g sass
```

Ensure package dependencies are installed:
```
npm install
```

Run SCSS:
```
sass --watch .\scss\custom.scss .\public\css\custom.css --style compressed
```
or with npm:
```
npm run sass
```