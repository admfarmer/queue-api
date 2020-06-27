/// <reference path="../../../typings.d.ts" />

import * as Knex from 'knex';
import * as fastify from 'fastify';
import * as HttpStatus from 'http-status-codes';
import * as moment from 'moment';
const request = require('request')

const router = (fastify, { }, next) => {

  var db: Knex = fastify.db;

  fastify.get('/', async (req: fastify.Request, reply: fastify.Reply) => {
    reply.code(200).send({ message: 'Fastify, RESTful API services!' })
  });

  fastify.post('/', async (req: fastify.Request, reply: fastify.Reply) => {
    let info = req.body.datas;
    let token = req.body.token;
    console.log(req.body);

    const topic = 'alertLab' + '/' + token;
    const payload = { data: info };

    fastify.mqttClient.publish(topic, JSON.stringify(payload), { qos: 0, retain: false });
    reply.code(HttpStatus.OK).send({ info: "ok" })

  });

  next();

}

module.exports = router;