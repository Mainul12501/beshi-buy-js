<!DOCTYPE html>
<html lang="en">
<head>
    <title>Invoice</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background:lightsteelblue;
            color: white;
            text-align: center;
            font-family:'Bell MT';
        }
        .header_top{
            font-family: "Bell MT";
            text-align: right;
            font-size: 30px;
            text-transform: uppercase;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
       <div class="col-md-12">
           <table style="width: 100%;margin-bottom: 30px">
               <thead>
               <tr>
                   <td>
                       <img src="{{asset('/')}}admin/assets/images/logo.jpg"  style="height: 70px"/>
                   </td>
                   <td style="text-align: right">
                       <h2 class="header_top text-primary">Invoice</h2>
                   </td>
               </tr>
               </thead>
           </table>
       </div>
    </div>
    <div class="row">
        <div class="col-md-12" style="margin-bottom: 20px">
            <hr/>
            <table style="width: 100%;font-size: 14px;font-family: 'Bell MT';" >
                <thead>
                <tr>
                    <td style="text-align: left"> <strong>Issue Date : </strong> {{$order->created_at->format('d/m/Y')}}</td>
{{--                    <td style="text-align: right"> <strong>Invoice No : </strong> {{'000'.$order->id}}</td>--}}
                    <td style="text-align: right"> <strong>Invoice No : </strong> {{$order->order_code}}</td>
                </tr>
                </thead>
            </table>
            <hr/>
        </div>
    </div>
    <div class="row">
      <div class="col-md-12" style="margin-bottom: 20px">
          <table style="width: 100%;font-size: 14px;font-family: 'Bell MT';">
              <thead>
              <tr>
                  <td style="text-align: left">
                      <strong>Invoiced To:</strong>
                      <address>
                          <span>Name</span>    :   {{$customer->name}}<br />
                          <span>Email</span>   :   {{$customer->email}}<br />
                          <span>Phone</span>   :   {{$customer->phone}}<br />
                          <span>Address</span> :   {{$customer->address}}

                      </address>
                  </td>
                  <td style="text-align: right">
                      <strong >Pay To : </strong>
                      <address>
                          <span> BeshiBuy </span><br/>
                          <span>Cash,Bkash, Roket,</span><br/>
                          <span> Nagod ,Master,Visa</span><br/>
                          <span> DBBL A/C : 171.101.99624</span>
                      </address>
                  </td>
              </tr>
              </thead>
          </table>
      </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered" style="width: 100%;font-size: 13px;font-family: 'Bell MT';">
                <thead class="bg-dark text-white">
                <tr>
                    <th style="text-align: justify">#</th>
                    <th style="text-align: justify">Item Description</th>
                    <th style="text-align: justify">Unit Price (Tk.)</th>
                    <th style="text-align: justify">Qty.</th>
                    <th style="text-align: justify">SubTotal (Tk.)</th>
                </tr>
                </thead>
                <tbody>
                @php($sum = 0)
                @foreach($orderDetails as $key=>$orderDetail)
                    <tr>
                        <td style="text-align: justify">{{$key++}}</td>
                        <td style="text-align: justify">
                            <span>{{$orderDetail->product_name}}</span><br/>
                            <span>size :  {{$orderDetail->product_size}}</span>
                        </td>
                        <td style="text-align: justify">{{number_format($orderDetail->total_amount,2)}}</td>
                        <td style="text-align: justify">{{$orderDetail->product_quantity}}</td>
                        <td style="text-align: justify">{{number_format($total= $orderDetail->total_amount*$orderDetail->product_quantity,2)}}</td>
                    </tr>
                    <?php
                    $sum = $sum+$total;
                    ?>
                @endforeach
                <tr class="bg-info text-white" >
                    <td colspan="4"  style="text-align: right"><strong>SubTotal :</strong></td>
                    <td style="text-align: justify"><strong style="font-size: 16px;">{{$grandTotal = number_format( $sum,2)}}</strong></td>
                </tr>
                <tr class="bg-dark text-warning">
                    <td colspan="4"  style="text-align: right"><strong>GrandTotal :</strong></td>
                    <td style="text-align: justify"><strong style="font-size: 16px;">{{$grandTotal = number_format( $sum,2)}}</strong></td>
                </tr>
                </tbody>
            </table>
            <table class="table table-bordered" style="width: 100%;font-size: 13px;font-family: 'Bell MT';">
                <thead>
                <tr>
                    <th>
                        <strong>In words :</strong>
                    </th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    <div class="row" >
        <div class="col-md-12" style="margin-top: 50px;margin-bottom: 50px">
            <table style="width: 100%;font-family: 'Bell MT';font-size: 13px">
                <thead>
                <tr>
                    <td>
                        <strong><u>Received By :</u></strong>
                    </td>
                    <td style="text-align: right"><strong><u>Authorised By :</u></strong></td>

                </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12" >
            <footer class="footer">
                <address style="font-size: 10px;">
                      <storng style="color:#000B1A"> Address</storng> :   Cha-65/A (2nd Fl),  North Badda, Dhaka-1212 ,
                    <strong style="color:#000B1A"> contact</strong> :   01815395295 , 01556339088 ,
                    <strong style="color:#000B1A">email</strong>   :   info@beshibuy.com,
                    <strong style="color:#000B1A"> website : <a href="https://beshibuy.com/" target="_blank">www.beshibuy.com</a></strong>
                </address>
            </footer>
        </div>
    </div>


</div>

</body>
</html>


