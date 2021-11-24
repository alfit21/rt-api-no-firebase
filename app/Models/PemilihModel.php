<?php

namespace App\Models;

use CodeIgniter\Model;

class PemilihModel extends Model
{
    protected $table = 'pemilih';
    protected $primaryKey = 'id';
    protected $allowedFields = ['nama', 'pilih'];
}
