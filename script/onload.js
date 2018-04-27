window.loaded = new Promise(resolve => window.jQueryLoaded = resolve)
    .then(() => new Promise(resolve => $(resolve)));