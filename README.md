# chrome-overrider
Simple bash script to make chrome overrides slightly easier to work with


## Usage
```bash
./chrome-overrider.sh override_directory override_file
```

### Example
```bash
./chrome-overrider.sh ~/Documents/chrome-overrides/cool-js main.js
```


## Limitations

Currently naively assumes that your build step is a simple `npm run build`. Ideally this should be parameterised or allow an override if required.
