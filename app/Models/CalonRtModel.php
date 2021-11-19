<?php

namespace App\Models;

use CodeIgniter\Model;

class CalonrtModel extends Model
{
    protected $table = 'calonrt';
    protected $primaryKey = 'id';
    protected $allowedFields = ['nama', 'poin', 'urlgambar'];
}
