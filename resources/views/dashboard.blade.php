<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Table Barang') }}
        </h2>
    </x-slot>
    

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">

                <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
                        <title>Dashboard</title>
                        <style>
                            .circle-aman {
                            height: 25px;
                            width: 25px;
                            background-color: green;
                            border-radius: 50%;
                            }
                            .circle-gaaman {
                            height: 25px;
                            width: 25px;
                            background-color: red;
                            border-radius: 50%;
                            }
                        </style>
                        
                    </head>
                    <body>
                    
                    <h3>Table Barang</h3>
                    @role('Admin-Warehouse|Manager-Warehouse')
                    <a class="btn btn-dark" href="/tambahBarang">Tambahkan Barang</a>
                    @endrole
                    <!-- search -->
                    <input type="text" class="form-control" style="width:400px;margin-left: auto;" id="myInput" onkeyup="myFunction()" placeholder="Search" title="Type in a name">
                    <table id="myTable" class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Barang</th>
                                @role('Admin-Warehouse|Manager-Warehouse')
                                <th scope="col">#</th>
                                <th scope="col">ROP</th>
                                @endrole
                                <th scope="col">SKU</th>
                                <th scope="col">Supplier</th>
                                <th scope="col">Stok</th>
                                <!-- <th scope="col">Jumlah Jual</th> -->
                                <th scope="col">Safety Stock %</th>
                                <th scope="col">Lead Time</th>
                                <th scope="col">Moderator</th>
                                @role('Admin-Purchasing|Manager-Purchasing')
                                <th scope="col">Harga Satuan</th>
                                <th scope="col">Jumlah</th>
                                @endrole
                                @role('Admin-Warehouse|Manager-Warehouse')
                                <th scope="col">Pilihan</th>
                                @endrole
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1; ?>
                            
                            @foreach($table_barang as $ts)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $ts->nama_barang }}</td>
                                @role('Admin-Warehouse|Manager-Warehouse')
                                @if($ts->indicator<$ts->qty)
                                <td><div class="circle-aman"></div></td>
                                @else
                                <td><div class="circle-gaaman"></div></td>
                                @endif
                                <td>{{ $ts->indicator }}</td>
                                @endrole
                                <td>{{ $ts->SKU }}</td>
                                <td>{{ $ts->keterangan }}</td>
                                <td>{{ $ts->qty }}</td>
                                <!-- <td id="1">{{ $ts->jumlah_jual }}</td> -->
                                <td id="2">{{ $ts->safety_stock }} %</td>
                                <td id="3">{{ $ts->lead_time }} days</td>
                                <td>{{ $ts->nama_by }} @ {{ $ts->tanggal }}</td>
                                @role('Admin-Purchasing|Manager-Purchasing')
                                <td>{{ $ts->harga_satuan }}</td>
                                <td>{{ $ts->jumlah }}</td>
                                @endrole
                                <td>
                                @role('Admin-Warehouse|Manager-Warehouse')
                                @if($ts->indicator>$ts->qty)
                                <a href="/BarangKeluar/req_po/{{ $ts->id }}">Req PO</a>
				                    |
                                @endif
                                <a href="/BarangKeluar/edit/{{ $ts->id }}">Edit</a>
				                    |
				                <a href="/BarangKeluar/out/{{ $ts->id }}">Barang Keluar</a>
                                </td>
                                @endrole
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <script>
                            function myFunction() {
                            var input, filter, table, tr, td, i, txtValue;
                            input = document.getElementById("myInput");
                            filter = input.value.toUpperCase();
                            table = document.getElementById("myTable");
                            tr = table.getElementsByTagName("tr");

                            for (i = 0; i < tr.length; i++) {
                                td = tr[i].getElementsByTagName("td")[1];
                                    if (td) {
                                        txtValue = td.textContent || td.innerText;
                                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = "";
                                        } else {
                                            tr[i].style.display = "none";
                                        }
                                    }       
                                }
                            }
                        </script>
                    </body>

                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
                    </html>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
