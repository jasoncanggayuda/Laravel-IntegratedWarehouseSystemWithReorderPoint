<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNoValidSpb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('no_valid_spb', function (Blueprint $table) {
            $table->increments('id_SPB');
            $table->string('nama_barang');
            $table->text('keterangan');
            $table->integer('qty');
            $table->decimal('harga_satuan',13, 2);
            $table->decimal('jumlah',13, 2);
            $table->timestamp('tanggal_SPB');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('no_valid_spb');
    }
}
