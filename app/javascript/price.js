document.addEventListener('DOMContentLoaded', function(e) {
    const price = document.getElementById('item-price');
    // console.log(price)
    const tax_price = document.getElementById('add-tax-price');
    const profit_price = document.getElementById('profit');

    price.addEventListener('keyup', function() {
        let input_price = price.value;
        let fee = input_price / 10;
        let fee2 = input_price * 0.9;
        tax_price.textContent = fee;
        profit_price.textContent = fee2;
    })


    // const sold_btn = document.getElementsByClassName("item-red-btn")
    // const sold_out = document.getElementsByClassName("sold-out")

    // sold_btn.addEventListener('click', function() {
    //     sold_out.setAttribute("style", "display:block;")
    // })
})