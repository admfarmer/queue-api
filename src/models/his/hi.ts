import * as knex from 'knex';

export class HiModel {

  testConnection(db: knex) {
    return db.raw(`select 'Q4U Work'`);
  }

  getPatientInfo(db: knex, cid: any) {
    return db('pt as p')
      .select('p.hn', 'p.pttype', 't.namepttype', 'p.fname as first_name', 'p.pname as title', 'p.male as sex', 'p.lname as last_name', 'p.brthdate as birthdate', 'p.hometel as hometel')
      .innerJoin('pttype as t', 'p.pttype', 't.pttype')
      .where('pop_id', cid).limit(1);
  }

  getCurrentVisit(db: knex, hn) {
    return [];
  }

  getPatientInfoWithHN(db: knex, hn: any) {
    return db('pt as p')
      .select('p.hn', 'p.pttype', 't.namepttype', 'p.fname as first_name', 'p.pname as title', 'p.male as sex', 'p.lname as last_name', 'p.brthdate as birthdate', 'cid')
      .innerJoin('pttype as t', 'p.pttype', 't.pttype')
      .where('hn', hn).limit(1);
  }

  //Ubonket10 
  getPatientInfoPttype(db: knex, hn: any) {
    return db('ovst as i')
      .select('i.hn', 'i.pttype', 't.namepttype')
      .innerJoin('pttype as t', 'i.pttype', 't.pttype')
      .where('i.hn', hn).orderBy('vstdttm', 'DESC').limit(1);
  }


  getVisitList(db: knex, dateServ: any, localCode: any[], vn: any[], servicePointCode: any, query: any, limit: number = 20, offset: number = 0) {
    var sql = db('ovst as o')
      .select('o.vn', 'o.hn', db.raw('date(vstdttm) as date_serv'), db.raw('time(vstdttm) as time_serv'),
        'o.cln as clinic_code', 'c.namecln as clinic_name', 'pt.pname as title', 'pt.fname as first_name', 'pt.lname as last_name',
        'pt.brthdate as birthdate', 'pt.male as sex', db.raw('"" as his_queue'))
      .innerJoin('cln as c', 'c.cln', 'o.cln')
      .innerJoin('pt', 'pt.hn', 'o.hn')
      .whereRaw('date(vstdttm)=?', [dateServ])
      .whereIn('o.cln', localCode)
      .whereNotIn('o.vn', vn);

    if (query) {
      var _arrQuery = query.split(' ');
      var firstName = null;
      var lastName = null;

      if (_arrQuery.length === 2) {
        firstName = `${_arrQuery[0]}%`;
        lastName = `${_arrQuery[1]}%`;
      }

      sql.where(w => {
        var _where = w.where('o.hn', query);
        if (firstName && lastName) {
          _where.orWhere(x => x.where('pt.fname', 'like', firstName).where('pt.lname', 'like', lastName))
        }
        return _where;
      });

    } else {
      if (servicePointCode) {
        sql.where('o.cln', servicePointCode);
      }
    }

    return sql.limit(limit)
      .offset(offset)
      .orderBy('o.vstdttm', 'asc');

  }

  getVisitTotal(db: knex, dateServ: any, localCode: any[], vn: any[], servicePointCode: any, query: any) {
    var sql = db('ovst as o')
      .select(db.raw('count(*) as total'))
      .innerJoin('pt', 'pt.hn', 'o.hn')
      .innerJoin('cln as c', 'c.cln', 'o.cln')
      .whereRaw('date(o.vstdttm)=?', [dateServ])
      .whereIn('o.cln', localCode)
      .whereNotIn('o.vn', vn);


    if (query) {
      var _arrQuery = query.split(' ');
      var firstName = null;
      var lastName = null;

      if (_arrQuery.length === 2) {
        firstName = `${_arrQuery[0]}%`;
        lastName = `${_arrQuery[1]}%`;
      }

      sql.where(w => {
        var _where = w.where('o.hn', query);
        if (firstName && lastName) {
          _where.orWhere(x => x.where('pt.fname', 'like', firstName).where('pt.lname', 'like', lastName))
        }
        return _where;
      });

    } else {
      if (servicePointCode) {
        sql.where('o.cln', servicePointCode);
      }
    }

    return sql;
  }

  //Ubonket10 
  getVisitOne(db: knex, hn: any) {
    var sql = db('ovst as o')
      .select('o.vn', 'o.hn', db.raw('date(vstdttm) as date_serv'), db.raw('time(vstdttm) as time_serv'),
        'o.cln as clinic_code', 'c.namecln as clinic_name', 'pt.pname as title', 'pt.fname as first_name', 'pt.lname as last_name',
        'pt.brthdate as birthdate', 'pt.male as sex', db.raw('"" as his_queue'))
      .innerJoin('cln as c', 'c.cln', 'o.cln')
      .innerJoin('pt', 'pt.hn', 'o.hn')
      .whereRaw('date(vstdttm)=CURDATE()')
      .andWhere('o.hn', hn);

    return sql;
  }

  getVisitHistoryList(db: knex, dateServ: any, localCode: any[], vn: any[], servicePointCode: any, query: any, limit: number = 20, offset: number = 0) {
    var sql = db('ovst as o')
      .select('o.vn', 'o.hn', db.raw('date(vstdttm) as date_serv'), db.raw('time(vstdttm) as time_serv'),
        'o.cln as clinic_code', 'c.namecln as clinic_name', 'pt.pname as title', 'pt.fname as first_name', 'pt.lname as last_name',
        'pt.brthdate as birthdate', 'pt.male as sex', db.raw('"" as his_queue'))
      .innerJoin('cln as c', 'c.cln', 'o.cln')
      .innerJoin('pt', 'pt.hn', 'o.hn')
      .whereRaw('date(vstdttm)=?', [dateServ])
      .whereIn('o.cln', localCode)
      .whereIn('o.vn', vn);

    if (query) {
      var _arrQuery = query.split(' ');
      var firstName = null;
      var lastName = null;

      if (_arrQuery.length === 2) {
        firstName = `${_arrQuery[0]}%`;
        lastName = `${_arrQuery[1]}%`;
      }

      sql.where(w => {
        var _where = w.where('o.hn', query);
        if (firstName && lastName) {
          _where.orWhere(x => x.where('pt.fname', 'like', firstName).where('pt.lname', 'like', lastName))
        }
        return _where;
      });

    } else {
      if (servicePointCode) {
        sql.where('o.cln', servicePointCode);
      }
    }

    return sql.limit(limit)
      .offset(offset)
      .orderBy('o.vstdttm', 'asc');

  }

  getVisitHistoryTotal(db: knex, dateServ: any, localCode: any[], vn: any[], servicePointCode: any, query: any) {
    var sql = db('ovst as o')
      .select(db.raw('count(*) as total'))
      .innerJoin('pt', 'pt.hn', 'o.hn')
      .innerJoin('cln as c', 'c.cln', 'o.cln')
      .whereRaw('date(o.vstdttm)=?', [dateServ])
      .whereIn('o.cln', localCode)
      .whereIn('o.vn', vn);


    if (query) {
      var _arrQuery = query.split(' ');
      var firstName = null;
      var lastName = null;

      if (_arrQuery.length === 2) {
        firstName = `${_arrQuery[0]}%`;
        lastName = `${_arrQuery[1]}%`;
      }

      sql.where(w => {
        var _where = w.where('o.hn', query);
        if (firstName && lastName) {
          _where.orWhere(x => x.where('pt.fname', 'like', firstName).where('pt.lname', 'like', lastName))
        }
        return _where;
      });

    } else {
      if (servicePointCode) {
        sql.where('o.cln', servicePointCode);
      }
    }

    return sql;
  }

  getOvstInfo(db: knex, hn: any, vstdttm: any) {
    return db('ovst')
      .select('hn', 'vn', 'pttype', 'vstdttm', 'cln', db.raw('time(vstdttm) as vsttime'))
      .where('hn', hn).andWhere('vstdttm', vstdttm)
      .orderBy('vn', 'DESC')
      .limit(1);
  }

  async showOvst(db: knex, hn: any, dateServ: any, cln: any) {
    let data = await db.raw(`select hn, vn, pttype, vstdttm, cln, ovstost FROM ovst where hn = '${hn}' and date(vstdttm) = '${dateServ}' and cln = '${cln}' and ovstost = '0'`);
    return data[0];
  }

  saveOvst(db: knex, datas: any) {
    return db('ovst').insert(datas);
  }

  saveOvstOn(db: knex, datas: any, table: any) {
    return db(table).insert(datas);
  }

  getPttypeInfo(db: knex, hn: any) {
    return db('insure as i')
      .select('p.pttype', 'p.namepttype', db.raw('date(i.datein) as datein'), db.raw('date(i.dateexp) as dateexp'), 'i.card_id')
      .innerJoin('pttype as p', 'p.pttype', 'i.pttype')
      .innerJoin('pt',function() {
        this.on('pt.hn', '=', 'i.hn').andOn('pt.pttype', '=', 'i.pttype')
      })
      .where('i.hn', hn)
      .orderBy('i.id', 'DESC')
      .limit(1);
  }

  async getShow(db: knex, table: any) {
    let data = await db.raw(`SHOW TABLES FROM hi LIKE '${table}'`);
    return data;
  }

  async getCreate(db: knex, table: any) {
    let data = await db.raw(`
    CREATE TABLE ${table} (
    vn int(11) NOT NULL,
    hn int(8) DEFAULT NULL,
    fname char(25) DEFAULT NULL,
    lname char(25) DEFAULT NULL,
    male char(1) DEFAULT NULL,
    age char(4) DEFAULT NULL,
    allergy char(60) DEFAULT NULL,
    pttype char(2) DEFAULT NULL,
    vsttime int(4) NOT NULL,
    dct char(5) DEFAULT NULL,
    bw decimal(5,1) NOT NULL,
    tt decimal(4,1) NOT NULL,
    pr int(3) NOT NULL,
    rr int(3) NOT NULL,
    sbp int(3) NOT NULL,
    dbp int(3) NOT NULL,
    nrs int(1) NOT NULL,
    dtr int(1) NOT NULL,
    dtt int(1) NOT NULL,
    lab int(1) NOT NULL,
    xry int(1) NOT NULL,
    er int(1) NOT NULL,
    ors int(1) NOT NULL,
    rec int(1) NOT NULL,
    phm int(1) NOT NULL,
    hpt int(1) NOT NULL,
    phy int(1) NOT NULL,
    drxtime int(4) NOT NULL,
    fudate date DEFAULT '0000-00-00',
    fus1 char(5) DEFAULT NULL,
    fus2 char(5) DEFAULT NULL,
    fus3 char(5) DEFAULT NULL,
    fus4 char(5) DEFAULT NULL,
    fus5 char(5) DEFAULT NULL,
    ldrug tinyint(1) NOT NULL,
    PRIMARY KEY (vn),
    KEY vn (vn) USING BTREE,
    KEY hn (hn) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=tis620;`);
    return data;
  }

  async getOapp(db: knex, hn: any, dateServ: any) {
    let data = await db.raw(`
    select hn,
    if(substr(cln,1,1) in (1,2,4,7,8),concat(substr(cln,1,1),'0100'),cln) as clinic
    from oapp as a 
    where a.hn = ${hn} and a.fudate = '${dateServ}'
    GROUP BY clinic
    `);
    return data;
  }
  async getUpdateOapp(db: knex, hn: any, dateServ: any) {
    let data = await db.raw(`
    update oapp as a set fuok=1 where a.hn = ${hn} and a.fudate = '${dateServ}'
    `);
    return data;
  }

  async getInsertLab(db: knex, hn: any, dateServ: any) {
    let data = await db.raw(`
    insert into lbbk (labcode,vn,requestby,vstdttm,senddate,sendtime,hn,an,pttype) 
    select 
    substr(a.cln,2,3) as labcode,
    o.vn as vn,
    'Q4U' as request_by,
    o.vstdttm,
    date_format(o.vstdttm,'%Y-%m-%d') as senddate,
    date_format(o.vstdttm,'%h%i') as sendtime,
    o.hn,
    0 as an,
    o.pttype 
    from 
    oapp as a 
    inner join ovst as o on o.hn=a.hn and date(o.vstdttm)=a.fudate
    where 
    a.hn = ${hn}
    and a.fudate = '${dateServ}'
    and substr(a.cln,1,1) = 7
    and a.fuok=0
    `);
    return data;
  }
  async getInsertXray(db: knex, hn: any, dateServ: any) {
    let data = await db.raw(`
    insert into xryrqt (vn,hn,vstdate,vsttime,rqttime,xrycode)
    select 
    o.vn,
    o.hn,
    date(o.vstdttm) as vstdate,
    date_format(o.vstdttm,'%h%i') as vsttime,
    date_format(now(),'%h%i') as rqttime,
    substr(a.cln,2,4) as xrycode
    from 
    oapp as a 
    inner join ovst as o on o.hn=a.hn and date(o.vstdttm)=a.fudate
    where 
    a.hn = ${hn}
    and a.fudate = '${dateServ}'
    and substr(a.cln,1,1) = 8
    and a.fuok=0
    `);
    return data;
  }

  async update_pt(db: knex, hn: any) {
    let data = await db.raw(`UPDATE pt SET pt.ldate = DATE(NOW()) WHERE pt.hn = '${hn}'
    `);
    return data;
  }

  async saveKios_pttype(db: knex, datas: any) {
    // console.log(datas);
    return await db('kios_pttype').insert(datas);
  }
  async selectVisitQueueID(db: knex, datas: any) {
    // console.log(datas.queue_id);
    return await db('visitqueueid').where('queue_id',datas.queue_id);
  }

  async saveVisitQueueID(db: knex, datas: any) {
    // console.log(datas);
    return await db('visitqueueid').insert(datas);
  }

}