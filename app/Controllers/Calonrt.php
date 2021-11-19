<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\CalonrtModel;

class Calonrt extends ResourceController
{
    use ResponseTrait;
    // get all Calon RT
    public function index()
    {
        $model = new CalonrtModel();
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
        $model = new CalonrtModel();
        $json = $this->request->getJSON();
        if ($json) {
            $data = [
                'poin' => $json->poin
            ];
        } else {
            $input = $this->request->getRawInput();
            $data = [
                'poin' => $input['poin']
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



    // get single Calon RT
    public function show($id = null)
    {
        $model = new CalonrtModel();
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
