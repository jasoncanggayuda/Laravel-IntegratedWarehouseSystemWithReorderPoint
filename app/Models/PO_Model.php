<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class PO_Model extends Model
{
    use HasApiTokens, HasFactory, Notifiable;
    use HasRoles; 
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = "valid_po";
 
    protected $fillable = ['nama_barang','keterangan','qty','harga_satuan', 'jumlah', 'tanggal_PO'];
    
}

