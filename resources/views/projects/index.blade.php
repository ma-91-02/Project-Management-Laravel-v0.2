<x-header/>


    <header class="d-flex justify-content-between align-items-center my-5" dir="rtl">
        <div class="h6 text-dark float-right">
            <a href="/projects">المشاريع</a>
        </div>
        <div class="float-left">
            <a href="/projects/create" class="btn btn-primary px-4" role="button">مشروع جديد</a>
        </div>
    </header>

    <section class="row " dir="rtl">
            @forelse($projects as $project)
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card card-height" style="height: 230px">
                        <div class="card-body " >
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
                                    {{ Str::limit($project->description, 150) }}
                                </div>

                            </div>
                        </div>
                        @include('components.projects.footer')
                    </div>
                </div>
                @empty
                    <div class="m-auto align-content-center">
                        <p>لوحة العمل خالية من المشاريع</p>
                        <div class="text-center mt-5">
                            <a href="/projects/create" class="bt btn-primary btn-lg d-inline-flex align-items-center"
                                role="button">انشئ مشروعا جديدا الان </a>
                        </div>
                    </div>
                @endforelse
            </div>
        </section>

    <x-footer />
