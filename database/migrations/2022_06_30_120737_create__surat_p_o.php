<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuratPO extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('_surat_p_o', function (Blueprint $table) {
            $table->bigIncrements('id_PO');
            $table->string('nama_barang');
            $table->text('keterangan');
            $table->integer('qty');
            $table->decimal('harga_satuan',13, 2);
            $table->decimal('jumlah');
            $table->timestamp('tanggal_PO');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_surat_p_o');
    }
}
