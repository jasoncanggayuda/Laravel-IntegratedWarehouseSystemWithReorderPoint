<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use app\Models\BarangModel;
use PDF;

class BarangController extends Controller
{
    public function index()
    {
        //mengambil data dari table stock
        $table_barang = DB::table('table_barang')->orderBy('tanggal', 'DESC')->get();
        
        
        //mengirimkan data ke view dashboard
        
        return view('dashboard',['table_barang' => $table_barang]);
    }

    public function tambahBarang()
     {
         
         $table = DB::table('table_barang')->get();
         
         return view('/tambahBarang',['table_barang' => $table]);
     
     }

    public function storeTambahBarang(Request $request)
     {
         
         DB::table('table_barang')->insert([
             'nama_barang' => $request->nama_barang,
             'SKU' => $request->SKU,
             'keterangan' => $request->keterangan,
             'qty'=>$request->qty,
             'safety_stock'=>$request->safety_stock,
             'lead_time'=>$request->lead_time,
             'jumlah_jual'=>$request->jumlah_jual,
             'indicator'=>$request->indicator,
             'nama_by'=>$request->nama_by,

         ]);
         
         return redirect('/dashboard');
     }


    public function viewBarangKeluar()
    {
        //mengambil data dari table stock
        $table_barang = DB::table('barang_keluar')->orderBy('tanggal', 'DESC')->get();
        //mengirimkan data ke view dashboard
        
        return view('BarangKeluar/index',['barang_keluar' => $table_barang]);
    }

    public function edit($id)
    {
         // mengambil data pegawai berdasarkan id yang dipilih
         $tableBarang = DB::table('table_barang')->where('id',$id)->get();
         // passing data pegawai yang didapat ke view edit.blade.php
         return view('BarangKeluar/edit',['table_barang' => $tableBarang]);
    }

    public function req_po($id)
    {
         // mengambil data pegawai berdasarkan id yang dipilih
         $tableBarang = DB::table('table_barang')->where('id',$id)->get();
         // passing data pegawai yang didapat ke view edit.blade.php
         return view('BarangKeluar/req_po',['table_barang' => $tableBarang]);
    }


    public function update(Request $request)
     {
         
         DB::table('table_barang')->where('id',$request->id)->update([
             'nama_barang' => $request->nama_barang,
             'SKU' => $request->SKU,
             'keterangan' => $request->keterangan,
             'qty'=>$request->qty,
             'harga_satuan'=>$request->harga_satuan,
             'jumlah' => $request->jumlah,
             'jumlah_jual' => $request->jumlah_jual,
             'safety_stock' => $request->safety_stock,
             'lead_time' => $request->lead_time,
             'indicator' => $request->indicator,
             
         ]);
         
         return redirect('/dashboard');
     }

     public function Barang($id)
     {
          // mengambil data pegawai berdasarkan id yang dipilih
          $tableBarang = DB::table('table_barang')->where('id',$id)->get();
          // passing data pegawai yang didapat ke view edit.blade.php
          return view('BarangKeluar/out',['table_barang' => $tableBarang]);
     }

    public function BarangKeluar(Request $request)
    {

        DB::unprepared("
        UPDATE `table_barang` SET `nama_barang`='$request->nama_barang',`SKU`='$request->SKU',
        `keterangan`='$request->keterangan',`qty`=`qty`-'$request->qty',`jumlah_jual`='$request->jumlah_jual',
        `harga_satuan`='$request->harga_satuan',
        `jumlah`=`jumlah`-'$request->jumlah',`safety_stock`='$request->safety_stock', `lead_time`='$request->lead_time', `indicator`='$request->indicator' WHERE `id`='$request->id';

        DELETE FROM `table_barang` WHERE `qty`<='0';

        INSERT INTO `barang_keluar`(`nama_barang`,`SKU`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `nama_by`) VALUES 
        ('$request->nama_barang', '$request->SKU', '$request->keterangan','$request->qty','$request->harga_satuan','$request->jumlah','$request->nama_by');
        ");

        return redirect('/dashboard');
    }

    public function printPDF($id)
     {
        set_time_limit(300);
        $print = DB::table('barang_keluar')->where('id',$id)->get();
 
    	$pdf = PDF::loadview('BarangKeluar/print_PDF',['barang_keluar'=>$print]);
    	return $pdf->download('rekap_barang_keluar.pdf');
        
     }
    
     public function printAll()
     {
        set_time_limit(300);
        $print = DB::table('barang_keluar')->orderBy('tanggal', 'DESC')->get();
 
    	$pdf = PDF::loadview('BarangKeluar/printAll',['barang_keluar'=>$print]);
    	return $pdf->download('Barang_keluar_all.pdf');
        
     }

    
}
