const bcrypt = require('bcrypt');
const crypto = require('crypto');
const mongoose = require('mongoose');

const membersSchema = new mongoose.Schema({
  name: String,
  source: String,
  amount: String,
  date: Date,
  group: String,
  witness: String,
  comment: String
 }, { timestamps: true });

const Members = mongoose.model('Members', membersSchema);

module.exports = Members;

