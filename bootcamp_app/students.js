const { Pool } = require('pg');

const cohortInput = process.argv[2];
const outputLimit = process.argv[3];

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = ${cohortInput}
LIMIT ${outputLimit};
`)
.then(res => {
  console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
})
.catch(err => console.error('query error', err.stack));