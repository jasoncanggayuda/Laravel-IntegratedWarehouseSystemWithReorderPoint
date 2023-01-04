<!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>Dashboard</title>
                    </head>
                    <body>
                    <h3>Stok Barang</h3>
 
                        <!-- <a href="/pegawai/tambah"> + Tambah Pegawai Baru</a> -->
                        
                        <br/>
                        <br/>

                        <table border="1">
                            <tr>
                                <th>No</th>
                                <th>Nama Barang</th>
                                <th>SKU</th>
                                <th>Stok</th>
                                <th>Keterangan</th>
                                <th>Pilihan</th>
                            </tr>
                            $i=1;
                            @foreach($stock as $ts)
                            <tr>
                                <td>{{ $i++ }} </td>
                                <td>{{ $ts->nama_barang }}</td>
                                <td>{{ $ts->SKU }}</td>
                                <td>{{ $ts->stok }}</td>
                                <td>{{ $ts->keterangan }}</td>
                                <td>
                             
                                </td>
                            </tr>
                            @endforeach
                        </table>
                    </body>
                    </html>