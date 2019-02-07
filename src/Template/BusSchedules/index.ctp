<h1>Horários de Ônibus</h1>
<table>
    <thead>
        <tr>
            <td>Linha</td>
            <td>Dia</td>
            <td>Hora de Pardida</td>
            <td>Ponto de Partida</td>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($busSchedules as $schedule): ?>
        <?= $this->Form->create($schedule) ?>
        <tr>
            <td><?= $this->Form->control('line', ['label' => '']) ?></td>
            <td><?= $this->Form->control('day', ['label' => '']) ?></td>
            <td><?= $this->Form->control('departure_time', ['label' => '']) ?></td>
            <td><?= $this->Form->control('departure_place', ['label' => '']) ?></td>
        </tr>
        <?= $this->Form->end() ?>
        <?php endforeach; ?>
    </tbody>
</table>
