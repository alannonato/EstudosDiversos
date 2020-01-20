module.exports = function parseStringAsArray(arrayString){
    return arrayAsString.split(',').map(tech=> tech.trim());
}