<?php

namespace App\Controller;

class BusSchedulesController extends AppController
{
    public function index()
    {
        $this->loadComponent('Paginator');
        $busSchedules = $this->Paginator->paginate($this->BusSchedules->find());
        $this->set(compact('busSchedules'));
    }
}