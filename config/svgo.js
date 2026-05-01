export default {
  multipass: true, // boolean
  plugins: [
    'preset-default', // built-in plugins enabled by default
    'cleanupListOfValues',
    'convertColors',
    'removeDimensions',
    'removeOffCanvasPaths',
    'removeRasterImages',
    'removeScripts',
  ],
};
