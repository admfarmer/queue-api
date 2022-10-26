/// <reference path="../../../typings.d.ts" />

import * as Knex from 'knex';
import * as fastify from 'fastify';
import * as moment from 'moment'
import { HiModel } from '../../models/his/hi'

import * as HttpStatus from 'http-status-codes';
const hiOvstModel = new HiModel();

const router = (fastify, { }, next) => {

    var dbHIS: Knex = fastify.dbHIS;
    var db: Knex = fastify.db;

    fastify.get('/', async (req: fastify.Request, reply: fastify.Reply) => {
        reply.code(200).send({ message: 'Fastify, RESTful API services!' })
    });

    fastify.post('/register', async (req: fastify.Request, reply: fastify.Reply) => {

        const info = req.body;
        console.log(info);

        const hn = info.hn;
        const dateServ = info.dateServ;
        const timeServ = moment(info.timeServ).format('HH:mm');
        const cln = info.clinicCode;
        const pname = info.title;
        const fname = info.firstName;
        const lname = info.lastName;
        const sex = info.sex;
        const birthdate = info.birthDate;

        const vstdttm = dateServ + ' ' + timeServ + ':00';

        const thDate = `${(moment(vstdttm).get('year') + 543) - 2500}`;
        let year: any = moment(vstdttm).format('Y');
        let birthY: any = moment(birthdate).format('Y');

        let pt = await hiOvstModel.getPttypeInfo(dbHIS, hn);
        // console.log(pt);

        let pttype = pt[0].pttype;

        let vn: any = null;
        let vsttime: any;
        let age: any;

        let ovst: any;
        let ovstInfo: any;
        let ovstOne: any;
        let table: any;


        let _vn = await hiOvstModel.showOvst(dbHIS, hn, dateServ, cln);
        // console.log(_vn[0]);
        try {
            if (!_vn[0]) {
                let datas = {
                    hn: hn,
                    vstdttm: moment(Date()).format('YYYY-MM-DD HH:mm:ss'),
                    cln: cln,
                    pttype: pttype,
                    ovstist: '0',
                    ovstost: '0',
                    nrxtime: '0',
                    drxtime: '0',
                    overtime: '0',
                    bw: '0',
                    height: '0',
                    bmi: '0',
                    tt: '0',
                    pr: '0',
                    rr: '0',
                    sbp: '0',
                    dbp: '0',
                    preg: '0',
                    tb: '0',
                    toq: '0',
                    drink: '0',
                    mr: '0',
                    smoke: '0',
                    an: '0',
                    rcptno: '0',
                    register: '99',
                    waist_cm: '0'
                }

                ovst = await hiOvstModel.saveOvst(dbHIS, datas);
                let update_pt = await hiOvstModel.update_pt(dbHIS, hn);

                console.log(update_pt);
                // ovstInfo = await hiOvstModel.getOvstInfo(dbHIS, hn, dateServ);

                vn = ovst[0];
                vsttime = moment(vstdttm).format('HHss');
                age = year - birthY;
                table = 'o' + moment(vstdttm).format('DDMM') + thDate;

                if (vn) {
                    let datas = {
                        hn: hn,
                        vn: vn,
                        vsttime: info.timeServ,
                        fname: fname,
                        lname: lname,
                        age: age,
                        male: sex,
                        pttype: pttype,
                        bw: '0',
                        tt: '0',
                        pr: '0',
                        rr: '0',
                        sbp: '0',
                        dbp: '0',
                        nrs: '0',
                        dtr: '0',
                        dtt: '0',
                        lab: '0',
                        xry: '0',
                        er: '0',
                        ors: '0',
                        rec: '0',
                        phm: '0',
                        hpt: '0',
                        phy: '0',
                        drxtime: '0',
                        ldrug: '0'
                    }
                    let show: any;

                    // ----------- แฟ้มรายวัน -------- //

                    let getShow = await hiOvstModel.getShow(dbHIS, table);
                    // console.log(getShow[0]);
                    let item = getShow[0]
                    // console.log(item[0]);

                    if (item[0]) {
                        // console.log('N');
                        show = 'N'
                    } else {
                        show = 'Y'
                    }

                    if (show != 'N') {
                        let getCreate = await hiOvstModel.getCreate(dbHIS, table);
                    }
                    ovstOne = await hiOvstModel.saveOvstOn(dbHIS, datas, table);
                    // console.log(table, datas)

                    // ----------- แฟ้มนัด ---------  //

                    let getOapp = await hiOvstModel.getOapp(dbHIS, hn, dateServ);
                    console.log(getOapp[0]);
                    let insertIdLab: any = null;
                    let insertIdXray: any = null;
                    getOapp[0].forEach(async (v: any) => {
                        console.log(v.clinic);
                        if (v.clinic == '70100') {
                            let getInserLab = await hiOvstModel.getInsertLab(dbHIS, hn, dateServ);
                            console.log(getInserLab);
                            insertIdLab = getInserLab.insertId;
                            if (!insertIdLab) {
                                let getUpdateOapp = await hiOvstModel.getUpdateOapp(dbHIS, hn, dateServ);
                            }
                        }
                        if (v.clinic == '80100') {
                            let getInserXray = await hiOvstModel.getInsertXray(dbHIS, hn, dateServ);
                            insertIdXray = getInserXray.insertId;
                            if (!insertIdXray) {
                                let getUpdateOapp = await hiOvstModel.getUpdateOapp(dbHIS, hn, dateServ);
                            }
                        }
                    });
                }

                reply.code(HttpStatus.OK).send({ ovst: ovst, ovstOne: ovstOne })
            } else {
                reply.code(HttpStatus.OK).send({ info: 'NO' })
            }
        } catch (error) {
            console.log(error);
            reply.code(HttpStatus.INTERNAL_SERVER_ERROR).send({ message: HttpStatus.getStatusText(HttpStatus.INTERNAL_SERVER_ERROR) })
        }

    });

    next();
}

module.exports = router;