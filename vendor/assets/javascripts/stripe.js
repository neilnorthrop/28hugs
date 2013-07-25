Stripe.setPublishableKey("pk_test_qFS2xLyeDfVXPC8Rs9CAWVUg");


function stripeResponseHandler(status, response) {
    if (response.error) {
        console.log(response.error.message);
    } else {
      var token = response['id'];
      var data = {
        paid_status: "qwerty",
        stripe_token: token,
        last_4: "4242",
        subscriber_id: "1"
      };
      $.post("/charges",data,function(result){
        console.log(result);
      });
    }
}



function stripeResponseHandler(status, response) {
    if (response.error) {
        console.log(response.error.message);
    } else {
      var token = response['id'];
      var data = {
        "stripe_token": token
      };
      $.post("/charges.json", data ,function(result){
        console.log(result);
      });
    }
}

for (var i = 0, max = 100; i < max; i++ ) {
  Stripe.card.createToken({
      number: "4242424242424242",
      exp_month: "12",
      exp_year: "2016"
  }, stripeResponseHandler);
}

