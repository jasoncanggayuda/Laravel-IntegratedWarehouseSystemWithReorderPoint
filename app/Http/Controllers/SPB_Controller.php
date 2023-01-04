<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SPB_Controller extends Controller
{

    public function SuratSPB()
    {
        //mengambil data dari table PO
        $table_spb = DB::table('spb')->orderBy('tanggal_SPB', 'DESC')->get();

        //mengirimkan data ke view BuatSurat
        return view('SPB/BuatSurat',['spb' => $table_spb]);    
    }

    public function tambah_SPB()
    {
            //mengambil data dari table PO
            $table_spb = DB::table('spb')->get();
            //mengirimkan data ke view tambah_SPB
            return view('SPB/tambah_SPB',['spb' => $table_spb]); 
    
    }

    public function ValidasiSPB()
    {
        //mengambil data dari table PO
        $table_spb = DB::table('spb')->orderBy('tanggal_SPB', 'DESC')->get();
        //mengirimkan data ke view ValidasiSPB
        return view('SPB/ValidasiSPB',['spb' => $table_spb]);    
    }

    public function ProsesSPB()
    {
        //mengambil data dari table spb
        $table_spb = DB::table('valid_spb')->orderBy('tanggal_SPB', 'DESC')->get();
        //mengirimkan data ke view ProsesSPB
        return view('SPB/ProsesSPB',['valid_spb' => $table_spb]);
    }

    public function ProsesNoValid()
    {
        //mengambil data dari table spb
        $table_spb = DB::table('no_valid_spb')->orderBy('tanggal_SPB', 'DESC')->get();
        //mengirimkan data ke view ProsesSPB
        return view('SPB/ProsesNoValid',['no_valid_spb' => $table_spb]);
    }

    // method untuk insert data ke table spb
    public function store(Request $request)
    {
        // insert data ke table spb
        DB::table('spb')->insert([
            'nama_barang' => $request->nama_barang,
            'keterangan' => $request->keterangan,
            'qty'=>$request->qty,
            'nama_by'=>$request->nama_by,
        ]);
        // alihkan halaman ke halaman pegawai
        return redirect('/SPB/BuatSurat');
    
    }

    // method untuk edit data pegawai
    public function edit($id_SPB)
    {
        // mengambil data pegawai berdasarkan id yang dipilih
        $tableSPB = DB::table('spb')->where('id_SPB',$id_SPB)->get();
        // passing data pegawai yang didapat ke view edit.blade.php
        return view('SPB/editSPB',['spb' => $tableSPB]);
    
    }
    
    public function update(Request $request)
    {
        
        DB::table('spb')->where('id_SPB',$request->id_SPB)->update([
            'nama_barang' => $request->nama_barang,
            'keterangan' => $request->keterangan,
            'qty'=>$request->qty,
            'nama_by'=>$request->nama_by,
        ]);
        
        return redirect('/SPB/BuatSurat');
    }

        
        public function ValidSPB($id_SPB)
        {
            
            $tableSPB = DB::table('spb')->where('id_SPB',$id_SPB)->get();
            
            return view('SPB/ValidSPB',['spb' => $tableSPB]);
        
        }
        public function NoValidSPB($id_SPB)
        {
            
            $tableSPB = DB::table('spb')->where('id_SPB',$id_SPB)->get();
            
            return view('SPB/NoValidSPB',['spb' => $tableSPB]);
        
        }
    
    public function storeValidSPB(Request $request)
    {

        DB::unprepared("
        INSERT INTO `valid_spb`(`nama_barang`, `keterangan`, `qty`, `nama_by`) VALUES 
        ('$request->nama_barang','$request->keterangan','$request->qty', '$request->nama_by');
        
        DELETE FROM `spb` WHERE `id_SPB`='$request->id_SPB';
        ");

        return redirect('/SPB/ValidasiSPB');
    }

    public function storeNoValidSPB(Request $request)
    {

        DB::unprepared("
        INSERT INTO `no_valid_spb`(`nama_barang`, `keterangan`, `qty`, `nama_by`) VALUES 
        ('$request->nama_barang','$request->keterangan','$request->qty', '$request->nama_by');
        
        DELETE FROM `spb` WHERE `id_SPB`='$request->id_SPB';
        ");

        return redirect('/SPB/ValidasiSPB');
    }

    public function delete($id_SPB)
    {
        // menghapus data pegawai berdasarkan id yang dipilih
        DB::table('spb')->where('id_SPB',$id_SPB)->delete();
            
        // alihkan halaman ke halaman pegawai
        return redirect('/SPB/BuatSurat');
    }

    public function deleteNoValid($id_SPB)
    {
        // menghapus data pegawai berdasarkan id yang dipilih
        DB::table('no_valid_spb')->where('id_SPB',$id_SPB)->delete();
            
        // alihkan halaman ke halaman pegawai
        return redirect('/SPB/ProsesNoValid');
    }



}
