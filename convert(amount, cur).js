function convert(amount, cur) {
    function price() {
        fetch(`https://api.cryptonator.com/api/ticker/${cur.toLowerCase()}-usd`).then((FieldOperation) => {
            return FieldOperation.json();
        }).then((data) => {
            console.log(amount + ' ' + cur + ' = ' + (amount * data.ticker.price).toFixed(2) + ' $');
            console.log(data.ticker.price + " $ / " + cur);
        });
    }price();
}
convert(1.23456789, 'ltc');
