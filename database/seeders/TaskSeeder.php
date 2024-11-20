<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;



namespace Database\Seeders;

use App\Models\Task;
use App\Models\User;
use Illuminate\Database\Seeder;

class TaskSeeder extends Seeder
{
    public function run()
    {
        $users = User::all();

        foreach ($users as $user) {
            Task::factory()->count(100)->create([
                'user_id' => $user->id,
                'assigned_to' => $user->id, // or assign to a random user
            ]);
        }
    }
}

