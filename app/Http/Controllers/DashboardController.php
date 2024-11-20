<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        $statuses = ['open', 'in_progress', 'completed'];

        $users = User::all();

        $query = Task::query();

        if ($request->filled('status')) {
            $query->where('status', $request->input('status'));
        }

        if ($request->filled('assignee')) {
            $query->where('assigned_to', $request->input('assignee'));
        }

        if ($request->filled('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('title', 'like', '%' . $request->input('search') . '%')
                  ->orWhere('description', 'like', '%' . $request->input('search') . '%');
            });
        }

        $tasks = $query->paginate(10);

        $createdTasks = Task::where('created_by', auth()->id())->paginate(10);
        
        $assignedTasks = Task::where('assigned_to', auth()->id())->paginate(10);

        return view('dashboard', compact('tasks', 'statuses', 'users', 'createdTasks', 'assignedTasks'));
    }
}
