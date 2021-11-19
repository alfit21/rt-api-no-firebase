<?php

namespace App\Models;

use CodeIgniter\Model;

class PoinModel extends Model
{
    protected $table = 'poin';
    protected $primaryKey = 'id';
    protected $allowedFields = ['totalpoin'];
}
