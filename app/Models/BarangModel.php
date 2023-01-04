<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangModel extends Model
{
    use HasFactory;

    public function dariBawah($query)
    {
        return $query->orderBy('tanggal','DESC');
    } 
}
