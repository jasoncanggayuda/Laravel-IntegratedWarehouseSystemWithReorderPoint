<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
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
                        <script>
                            function recalc() {
                                var i1 = parseFloat(document.getElementById("1").value);
                                var i2 = parseFloat(document.getElementById("2").value);
                                i1 = isNaN(i1) ? 0 : i1;
                                i2 = isNaN(i2) ? 0 : i2;
                                document.getElementById("3").value = i1 * i2;
                            }

                            function indicators() {
                                var i4 = parseFloat(document.getElementById("4").value);
                                var i5 = parseFloat(document.getElementById("5").value);
                                var i6 = parseFloat(document.getElementById("6").value);
                                i4 = isNaN(i4) ? 0 : i4; //safety stock
                                i5 = isNaN(i5) ? 0 : i5; //lead time
                                i6 = isNaN(i6) ? 0 : i6; //jumlah_jual
                                document.getElementById("7").value = (i6 * i5)+ i4 * (i6 * i5)/100;
                            }
                        </script>
                        <title>Dashboard</title>
                    </head>
                    <body>
                        
						<a href="/PO/ValidasiPO"> Kembali</a>
						
						<br/>
						<br/>
                        
                        @foreach($valid_po as $s)
						<form action="/PO/ProsesPO/BarangDatang" method="post">
							{{ csrf_field() }}
							<div class="form-group">
                            <input type="hidden" name="id_PO" value="{{ $s->id_PO }}">
							<label for="nama_barang">Nama Barang</label> 
							<input type="text" class="form-control" name="nama_barang" placeholder="Nama Barang" value="{{ $s->nama_barang }}" required="required" readonly> <br/>

                            <label for="SKU">SKU</label> 
							<input type="text" class="form-control" name="SKU" placeholder="SKU" required="required"> <br/>
                            
							<label for="keterangan">Supplier</label>
							<textarea class="form-control" name="keterangan" placeholder="Keterangan" required="required" readonly>{{ $s->keterangan }}</textarea> <br/>

                            <label for="jumlah">Qty</label> 
							<input id="1" type="number" class="form-control" name="qty" placeholder="Total Harga"  value="{{ $s->qty }}" required="required" onblur="recalc()"> <br/>
                            <!-- <label for="jumlah">Harga Satuan</label>  -->
							<input id="2" type="hidden" class="form-control" name="harga_satuan" placeholder="Harga Satuan"  value="{{ $s->harga_satuan }}" required="required" onblur="recalc()" readonly>

                            <!-- <label for="jumlah">Jumlah</label>  -->
							<input id="3" type="hidden" class="form-control" name="jumlah" placeholder="Total Harga" value="{{ $s->jumlah }}" required="required" readonly>

                            <!-- <label for="jumlah">Safety Stock %</label>  -->
							<input id="4" type="hidden" class="form-control" name="safety_stock" placeholder="Safety Stock" required="required" onblur="indicators()">

                            <!-- <label for="jumlah">Lead Time</label>  -->
							<input id="5" type="hidden" class="form-control" name="lead_time" placeholder="Berapa Lama Barang Datang" required="required" onblur="indicators()">
                            <input id="6" type="hidden" class="form-control" name="jumlah_jual" placeholder="Penjualan" onblur="indicators()">
                            <input id="7" type="hidden" class="form-control" name="indicator" placeholder="Indicator" required="required" readonly>

                            <input type="hidden" class="form-control" name="nama_by" value="{{ Auth::user()->name }}" placeholder="nama by" required="required">

                            

							<input type="submit" class="btn btn-dark" value="Simpan Data">
						</form>
                        @endforeach
					</body>
				</html>
				</div>
            </div>
        </div>
    </div>
</x-app-layout>