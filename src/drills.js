require('dotenv').config();
const knex = require('knex')
const knexInstance = knex({
  client: 'pg',
  connection: process.env.DB_URL,
})

function drill1(searchTerm) {
    knexInstance
        .select('*')
        .from('shopping_list')
        .where('name', 'ILIKE', `%${searchTerm}%`)
        .then(stuff => {
            console.log(stuff)
        })
}

drill1('urger')

function drill2(num) {
    const prodPerPage = 6;
    const offset = prodPerPage * (num - 1);
    knexInstance 
        .select('*')
        .from('shopping_list')
        .limit(prodPerPage)
        .offset(offset)
        .then(result => {
            console.log(result)
        })
}

drill2(2)

function drill3(daysAgo) {
    knexInstance
        .select('id', 'name', 'price', 'date_added', 'checked', 'category')
        .from('shopping_list')
        .where('date_added', '>', knexInstance.raw(`now() - '?? days':: INTERVAL`, daysAgo))
        .then(result => {
            console.log(result)
        })
}

drill3(5)

function drill4() {
    knexInstance
        .select('category')
        .from('shopping_list')
        .sum('price as total')
        .groupBy('category')
        .then(result => {
            console.log(result)
        })
}
drill4()
