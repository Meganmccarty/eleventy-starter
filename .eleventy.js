module.exports = function(eleventyConfig) {
    // Reload page when changes made to .scss, .css, and .js files
    eleventyConfig.addWatchTarget('./src/scss/');
    eleventyConfig.addWatchTarget('./src/css/');
    eleventyConfig.addWatchTarget('./src/js/');
    eleventyConfig.setBrowserSyncConfig({
        files: './dist/css/**/*.css'
    });

    return {
        dir: {
            input: 'src/pages',
            output: 'dist',
            includes: '../partials'
        }
    }
}