<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fast Food Checkout</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; } /* Grey background */
        .receipt-card { max-width: 400px; margin: 50px auto; border: none; border-radius: 15px; }
    </style>
</head>
<body>

    <div class="container">
        <div class="card receipt-card shadow-lg">
            <div class="card-body p-4">
                <h3 class="text-center mb-4">🍔 Food Receipt</h3>
                
                <div class="mb-3">
                    <label class="form-label">How many Zinger Burgers? (Rs. 500)</label>
                    <input type="number" id="zingerInput" class="form-control" placeholder="0">
                </div>

                <div class="mb-3">
                    <label class="form-label">How many Fries? (Rs. 200)</label>
                    <input type="number" id="friesInput" class="form-control" placeholder="0">
                </div>

                <button onclick="calculateTotal()" class="btn btn-dark w-100 mb-3">Calculate Total</button>

                <div id="displayArea" class="p-3 border rounded text-center fw-bold" style="min-height: 60px; background: #fff;">
                    Waiting for order...
                </div>
            </div>
        </div>
    </div>

    <script src="zingerburger.js"></script>
</body>
</html>