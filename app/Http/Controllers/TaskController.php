<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dashboard()
    {
        $user = Auth::user();

        $createdTasks = $user->tasksCreated()->paginate(10); 
        $assignedTasks = $user->tasksAssigned()->paginate(10); 

        return view('dashboard', compact('createdTasks', 'assignedTasks'));
    }

    public function create()
    {
        $statuses = ['open', 'in_progress', 'completed'];
    
        $users = User::query()->get();
    
        return view('tasks.create', compact('users', 'statuses'));
    }
    
    
    

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'due_date' => 'nullable|date',
            'status' => 'required|string|in:open,in_progress,completed',
            'assigned_to' => 'nullable|exists:users,id', 
        ]);
    
        $task = new Task([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'due_date' => $request->input('due_date'),
            'status' => $request->input('status'),
            'user_id' => Auth::id(), 
            'assigned_to' => $request->input('assigned_to'), 
        ]);
    
        $task->save();
    
        return redirect()->route('dashboard')->with('success', 'Task created successfully.');
    }
    
    public function edit(Task $task)
{
    $statuses = ['open', 'in_progress', 'completed'];
    return view('tasks.edit', compact('task', 'statuses'));
}

public function update(Request $request, Task $task)
{
    $request->validate([
        'title' => 'required|string|max:255',
        'description' => 'nullable|string',
        'due_date' => 'nullable|date',
        'status' => 'required|string|in:open,in_progress,completed',
    ]);

    $task->update($request->only('title', 'description', 'due_date', 'status'));

    return redirect()->route('dashboard')->with('success', 'Task updated successfully.');
}
public function show(Task $task)
{
    $task->load('comments.user');
    return view('tasks.show', compact('task'));
}

public function comments(Task $task)
{
    $task->load('comments.user'); 
    return view('tasks.comments', compact('task'));
}




}
