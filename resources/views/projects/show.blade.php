<x-header/>

    <header class="d-flex justify-content-between align-items-center my-5" dir="rtl">
        <div class="h6 text-dark">
            <a href="/projects">المشاريع/{{ $project->title }}</a>
        </div>
        <div>
            <a href="/projects/{{ $project->id }}/edit" class="btn btn-primary px-4 float-left" role="button">تعديل
                المشروع</a>
        </div>
    </header>

    <section class="row text-right" dir="rtl">
        <div class="col-lg-4">
            {{-- Project Details --}}
            <div class="card text-right">
                <div class="card-body">
                    <div class="status">
                        @switch($project->status)
                            @case(1)
                                <span class="text-success">مكتمل</span>
                            @break

                            @case(2)
                                <span class="text-danger">ملغي</span>
                            @break

                            @default
                                <span class="text-warning">قيد الانجاز</span>
                        @endswitch
                        <h5 class="font-weight-bold card-title">
                            <a href="/projects/{{ $project->id }}"> {{ $project->title }}</a>
                        </h5>

                        <div class="card-text mt-4">
                            {{ $project->description }}
                        </div>
                        @include('components.projects.footer')
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <form action="/projects/{{ $project->id }}" method="post">
                        @csrf
                        @method('PATCH')
                        <select name="status" class="custom-select" onchange="this.form.submit()">
                            <option value="0" {{ $project->status === 0 ? 'selected' : '' }}>قيد الانجاز</option>
                            <option value="1" {{ $project->status === 1 ? 'selected' : '' }}>مكتمل</option>
                            <option value="2" {{ $project->status === 2 ? 'selected' : '' }}>ملغي</option>
                        </select>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            {{-- Tasks --}}
            @foreach ($project->tasks as $task)
                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <div class="{{ $task->done ? 'checked muted' : '' }}">
                            {{ $task->body }}
                        </div>
                        <span class="badge badge-primary badge-pill">
                            <div class="mr-auto">
                                <form action="/projects/{{ $project->id }}/tasks/{{ $task->id }}" method="post"
                                    class="form-check">
                                    @csrf
                                    @method("PATCH")
                                    <input type="checkbox" name="done" class="form-check-input ml-4"
                                        {{ $task->done ? 'checked' : '' }} onchange="this.form.submit()">
                                </form>
                            </div>
                            <div class="d-flex align-items-center" >
                                <form action="/projects/{{$task->project_id}}/tasks/{{$task->id}}" method="POST" >
                                @method('DELETE')
                                @csrf
                                <input type="submit" class="btn btn-delete" value="" >
                                </form>
                            </div>
                        </span>
                    </li>
                </ul>
            @endforeach
            <ul class="list-group">
                <div class="card">
                    <form action="/projects/{{ $project->id }}/tasks" method="post" class="d-flex">
                        @csrf
                        <input type="text" name="body" placeholder="اضف مهمة جديدة" class="form-control p-2 ml-2">
                        <button type="submit" class="btn btn-primary">اضافة</button>
                    </form>
                </div>
            </ul>

        </div>
    </section>
<x-footer/>
