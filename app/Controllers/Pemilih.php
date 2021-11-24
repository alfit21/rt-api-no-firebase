<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\PemilihModel;

class Pemilih extends ResourceController
{
    use ResponseTrait;
    // get all Calon RT
    public function index()
    {
        $model = new PemilihModel();
        $data = $model->findAll();
        $response = [
            'status'   => 200,
            'data' => $data
        ];

        return $this->respond($response);
    }

    // update Calon RT
    public function update($id = null)
    {
        $model = new PemilihModel();
        $json = $this->request->getJSON();
        if ($json) {
            $data = [
                'pilih' => $json->pilih
            ];
        } else {
            $input = $this->request->getRawInput();
            $data = [
                'pilih' => $input['pilih']
            ];
        }
        // Insert to Database
        $model->update($id, $data);
        $response = [
            'status'   => 200,
            'error'    => null,
            'messages' => [
                'success' => 'Data Updated'
            ]
        ];
        return $this->respond($response);
    }

    public function tambah($nama)
    {
        $db = db_connect();
        $data =  $db->query("INSERT INTO pemilih (nama) VALUES  ('$nama')");
        $response = [
            'status'   => 200,
            'data' => $data
        ];

        return $this->respond($response);
    }

    public function doorprize()
    {
        $db = db_connect();
        $data =  $db->query("SELECT
                                nama
                            FROM
                                pemilih
                            ORDER BY
                                RAND()")->getResultArray();
        $response = [
            'status'   => 200,
            'data' => $data
        ];

        return $this->respond($response);
    }

    public function belomMemilih()
    {
        $db = db_connect();
        $data =  $db->query("SELECT * FROM pemilih WHERE pilih='0'")->getResultArray();
        $response = [
            'status'   => 200,
            'data' => $data
        ];

        return $this->respond($response);
    }


    // get single Calon RT
    public function show($id = null)
    {
        $model = new PemilihModel();
        $data = $model->getWhere(['id' => $id])->getResult();
        if ($data) {
            $response = [
                'status'   => 200,
                'data' => $data
            ];

            return $this->respond($response);
        } else {
            $response = [
                'status'   => 200,
                'data' => null
            ];

            return $this->respond($response);
        }
    }
}
