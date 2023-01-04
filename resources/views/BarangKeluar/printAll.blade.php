
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
                        <title>Barang Keluar</title>
                    </head>
                    <body>
                    
                    <h3>List Barang Keluar</h3>
                    
                
                    <table id="myTable" class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Barang</th>
                                <th scope="col">SKU</th>
                                <th scope="col">Keterangan</th>
                                <th scope="col">Stok</th>
                                @role('Admin-Purchasing|Manager-Purchasing')
                                <th scope="col">Harga Satuan</th>
                                <th scope="col">Jumlah</th>
                                @endrole
                                <th scope="col">Moderator</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1; ?>
                            @foreach($barang_keluar as $ts)
                            <tr>
                                <td>{{ $i++ }}</td>
                                <td>{{ $ts->nama_barang }}</td>
                                <td>{{ $ts->SKU }}</td>
                                <td>{{ $ts->keterangan }}</td>
                                <td>{{ $ts->qty }}</td>
                                @role('Admin-Purchasing|Manager-Purchasing')
                                <td>{{ $ts->harga_satuan }}</td>
                                <td>{{ $ts->jumlah }}</td>
                                @endrole
                                <td>{{ $ts->nama_by }}</td>
                                <!-- <td>
                                <a href="/BarangKeluar/edit/{{ $ts->id }}">Edit</a>
				                    |
				                <a href="/BarangKeluar/out/{{ $ts->id }}">Barang Keluar</a>
                                </td> -->
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
