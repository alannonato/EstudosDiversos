const mongoose = require('mongoose');

const PointSchema = new mongoose.Schema({
    type:{
        type: String,
        enum: ['Point'],
        requireed: true,
    },
    coordinates: {
        type: [Number],
        required: true,
    },

});

module.exports = PointSchema;