@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h3 class="section-title">Tasks Created by You</h3>
            <hr>
            @if($createdTasks->isEmpty())
                <p class="empty-message">You have not created any tasks yet.</p>
            @else
                <table class="table task-table">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Assignee</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($createdTasks as $task)
                            <tr>
                                <td><strong>{{ $task->title }}</strong></td>
                                <td>{{ $task->description }}</td>
                                <td>{{ $task->due_date }}</td>
                                <td>{{ ucfirst(str_replace('_', ' ', $task->status)) }}</td>
                                <td>{{ $task->assignee ? $task->assignee->name : 'Unassigned' }}</td>
                                <td>
                                    <a href="{{ route('tasks.comments', $task->id) }}" class="btn btn-primary btn-sm">
                                        Comments
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div class="pagination">
                    {{ $createdTasks->links('pagination::simple-default') }}
                </div>
            @endif
        </div>

        <div class="col-md-6">
            <h3 class="section-title">Tasks Assigned to You</h3>
            <hr>
            @if($assignedTasks->isEmpty())
                <p class="empty-message">No tasks have been assigned to you yet.</p>
            @else
                <table class="table task-table">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Assignee</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($assignedTasks as $task)
                            <tr>
                                <td><strong>{{ $task->title }}</strong></td>
                                <td>{{ $task->description }}</td>
                                <td>{{ $task->due_date }}</td>
                                <td>{{ ucfirst(str_replace('_', ' ', $task->status)) }}</td>
                                <td>{{ $task->assignee ? $task->assignee->name : 'Unassigned' }}</td>
                                <td>
                                    <a href="{{ route('tasks.comments', $task->id) }}" class="btn btn-primary btn-sm">
                                        Comments
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div class="pagination">
                    {{ $assignedTasks->links('pagination::simple-default') }}
                </div>
            @endif
        </div>
    </div>
</div>
@endsection
