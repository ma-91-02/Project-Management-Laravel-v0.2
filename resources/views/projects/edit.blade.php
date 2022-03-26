<x-header/>
@section('title', 'تعديل المشروع')

    <div class="row justify-content-center text-right">
        <div class="col-8">
            <div class="card p-5">
            <h3 class="text-center pb-5 font-weight-bold">
               تعديل المشروع
            </h3>
            <form action="/projects/{{$project->id}}" method="post" dir="rtl">
                @method('PATCH')
                @include('components.projects.form')
                <div class="form-group d-flex flex-row-reverse">
                    <button type="submit" class="btn btn-primary">تعديل</button>
                    <a href="/projects" class="btn btn-light">الغاء</a>
                </div>
            </form>
        </div>
        </div>
    </div>
<x-footer/>
