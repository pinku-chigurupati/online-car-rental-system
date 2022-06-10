<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: #eeeeee
}

.green {
    color: rgb(15, 207, 143);
    font-weight: 680
}

@media(max-width:567px) {
    .mobile {
        padding-top: 40px
    }
}
</style>
<link rel="stylesheet" href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>

<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<meta charset="ISO-8859-1">
<title>PAYMENT</title>

</head>
<body>
<form>

<div class="container rounded bg-white">
    <div class="row d-flex justify-content-center pb-5">
        <div class="col-sm-5 col-md-5 ml-1">
            <div class="py-4 d-flex flex-row">
                <h5><span class="fa fa-check-square-o"></span><b>NOTRON</b> | </h5><span class="pl-2">Pay</span>
            </div>
            <h4 class="green">₹1300.00</h4>
            <h4><%out.println((String)session.getAttribute("carname")); %></h4>
           
            <div class="pt-2">
                <div class="d-flex">

                    <div>
                        <p><b>CARDS</b><span class="green"></span></p>
                    </div>
                    
                                    <div class="py-4 d-flex justify-content-end">
                <h6><a class="fa fa-plus-circle text-primary text-primary" href="adminaddcard.jsp">Add Card</a></h6>
            </div>
                </div>
                <p> This is an estimate for the portion of your order (not covered by insurance) due today . once insurance finalizes their review refunds and/or balances will reconcile automatically. </p>
                <form class="pb-3">
                    <div class="d-flex flex-row align-content-center">
                        <div class="pt-2 pr-2"><input type="radio" name="radio1" id="r1" checked></div>
                        <div class="rounded border d-flex w-100 px-2">
                            <div class="pt-2">
                                <p><i class="fa fa-cc-visa text-primary pr-2"></i>Visa Debit Card</p>
                            </div>
                            <div class="ml-auto pt-2">************3456</div>
                        </div>
                    </div>
                </form>
                <form class="pb-3">
                    <div class="d-flex flex-row w-100">
                        <div class="pt-2 pr-2"><input type="radio" name="radio2" id="r2"></div>
                        <div class="rounded d-flex w-100 px-2">
                            <div class="pt-2">
                                <p><i class="fa fa-cc-mastercard pr-2"></i>Mastercard Office</p>
                            </div>
                            <div class="ml-auto pt-2">************1038</div>
                        </div>
                    </div>
                </form>
                <div> <input formaction="adminsuccess2.jsp" type="submit" value="Proceed to payment" class="btn btn-primary btn-block"> </div>
            </div>
        </div>
        <div class="col-sm-3 col-md-4 offset-md-1 mobile">
            <div class="py-4 d-flex justify-content-end">
                <h6><a href="cars.jsp">Cancel and return to website</a></h6>
            </div>
            <div class="bg-light rounded d-flex flex-column">
                <div class="p-2 ml-3">
                    <h4>Fare Estimation</h4>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Base Fare</div>
                    <div class="ml-auto">₹50</div>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Price Per KM</div>
                    <div class="ml-auto">₹10.00</div>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Price Per Min</div>
                    <div class="ml-auto"> ₹0.99</div>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Min Fare</div>
                    <div class="ml-auto">₹15</div>
                </div>
                <div class="border-top px-4 mx-3"> </div>
                <div class="p-2 d-flex pt-3">
                    <div class="col-8">Car guru Discount</div>
                    <div class="ml-auto">- ₹0.00</div>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Coupon Discount</div>
                    <div class="ml-auto">- ₹0.00</div>
                </div>
                <div class="border-top px-4 mx-3"></div>
                <div class="p-2 d-flex pt-3">
                    <div class="col-8">Subtotal</div>
                    <div class="ml-auto"><b>₹1200.0</b></div>
                </div>
                <div class="p-2 d-flex">
                    <div class="col-8">Tax <span class="fa fa-question-circle text-secondary"></span></div>
                    <div class="ml-auto"><b>₹100.44</b></div>
                </div>
                <div class="border-top px-4 mx-3"></div>
                <div class="p-2 d-flex pt-3">
                    <div class="col-8"><b>Total</b></div>
                    <div class="ml-auto"><b class="green">₹1300.00</b></div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>