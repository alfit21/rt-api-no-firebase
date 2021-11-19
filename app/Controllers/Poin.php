<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\PoinModel;

class Poin extends ResourceController
{
    use ResponseTrait;
    // get all Calon RT
    public function index()
    {
        $model = new PoinModel();
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
        $model = new PoinModel();
        $json = $this->request->getJSON();
        if ($json) {
            $data = [
                'totalpoin' => $json->totalpoin
            ];
        } else {
            $input = $this->request->getRawInput();
            $data = [
                'totalpoin' => $input['totalpoin']
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
}
