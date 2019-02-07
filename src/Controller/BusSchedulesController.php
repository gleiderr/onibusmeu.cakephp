<?php

namespace App\Controller;

class BusSchedulesController extends AppController
{
    public function index()
    {   
        //Gravação de horário previamente informado pelo usuário
        if ($this->request->is('post')) {
            $schedule = $this->BusSchedules->newEntity();
            $schedule = $this->BusSchedules->patchEntity($schedule, 
                $this->request->getData());

            if ($this->BusSchedules->save($schedule)) {
                $this->Flash->success(__('Horário salvo com sucesso. Obrigado pela contribuição!'));
            } else {
                $this->Flash->error(__('Não foi possível salvar. Tente mais tarde!'));
            }
        }

        //Recuperação de horários
        $this->loadComponent('Paginator');
        $busSchedules = $this->Paginator->paginate($this->BusSchedules->find());

        //Novo horário a ser definido
        $newSchedule = $this->BusSchedules->newEntity();

        $this->set(compact('busSchedules', 'newSchedule'));
    }
}