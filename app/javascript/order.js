const pay = () => {
    Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
    Payjp.setPublicKey("pk_test_e2788a8c3273b967c169c80d");
    const form = document.getElementById("charge-form");
    form.addEventListener("submit", (e) => {
        e.preventDefault();

        const formResult = document.getElementById("charge-form");
        const formData = new FormData(formResult);

        const card = {
            number: formData.get("order_address[number]"),
            cvc: formData.get("order_address[cvc]"),
            exp_month: formData.get("order_address[exp_month]"),
            exp_year: `20${formData.get("order_address[exp_year]")}`
                // number: document.getElementById("card-number").value,
                // cvc: document.getElementById("card-cvc").value,
                // exp_month: document.getElementById("card-exp-month").value,
                // exp_year: document.getElementById("card-exp-year").value
        };

        Payjp.createToken(card, (status, response) => {
            // console.log(status)
            if (status === 200) {
                const token = response.id;
                const renderDom = document.getElementById("charge-form")
                const tokenObj = `<input value=${token} type="hidden" name='token'>`;
                renderDom.insertAdjacentHTML("beforeend", tokenObj);

                document.getElementById("card-number").removeAttribute("name");
                document.getElementById("card-cvc").removeAttribute("name");
                document.getElementById("card-exp-month").removeAttribute("name");
                document.getElementById("card-exp-year").removeAttribute("name");

                document.getElementById("charge-form").submit();
                document.getElementById("charge-form").reset();
            } else {}
        });
    });
};

window.addEventListener("load", pay);