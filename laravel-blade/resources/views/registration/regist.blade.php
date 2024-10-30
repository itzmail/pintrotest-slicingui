@extends('layouts.app')

@section("nav-title", "Pendaftaran")

@section('content')
<div class="container">
    <div class="mt-4 d-flex flex-row align-items-center">
        <h2 class="fw-bold">Hallo, firdaus</h2>
        <img src="{{ asset('image/waving-hand.png') }}" alt="Waving Hand" class="ic-wavehand ms-2">
    </div>
    <div class="mt-4">
        <p>
            Kamu telah menyelesaikan pembayaran Uang Formulir, silahkan Lengkapi data dan ikuti Test/Observasi sesuai jadwal.
        </p>
        <a href="#" class="box-jadwal-seleksi text-decoration-none">
            <img src="{{ asset('image/mission.png') }}" alt="Step 1" class="ic-icon">
            <div class="d-flex flex-column flex-grow-1 ms-3 text-white">
                <i class="fs-4 fw-bold">Jadwal ujian seleksi</i>
                <i class="">Klik di sini untuk melihat jadwal</i>
            </div>
            <i class="fa-solid fa-circle-arrow-right fa-2x text-white ms-3 text-decoration-none"></i>
        </a>
    </div>
    <h3 class="fw-bolder mt-5">Lengkapi administrasi</h3>
    <div class="d-flex justify-content-between">
        <a href="{{ url('/registration/document') }}" class="flex-grow-1 shadow-sm me-3 card-outline text-decoration-none text-dark">
            <img src="{{ asset('image/documents.png')}}" alt="icon regist" class="ic-icon" />
            <h4 class="card-title mt-3 fw-bold">Berkas dokumen</h4>
            <p class="card-text">Yuk, jangan lupa isi berkas pendaftaran</p>
        </a>
        <a href="#" class="card-outline flex-grow-1 shadow-sm text-decoration-none text-dark">
            <img src="{{ asset('image/profile.png')}}" alt="icon regist" class="ic-icon" />
            <h4 class="card-title mt-3 fw-bold">Biodata Peserta</h4>
            <p class="card-text">Biodata lengkap, proses daftar jadi lebih tanggap</p>
        </a>
    </div>
    <div class="mt-5 d-flex justify-content-between">
        <h3 class="fw-bolder">Proses pendaftaran</h3>
        <a href="#" class="d-flex justify-content-center align-items-center shadow-sm p-2 rounded-2 text-dark">
            <i class="fa-solid fa-print fs-4"></i>
        </a>
    </div>
    
    <div class="d-flex stepper-container mt-4">
        <div class="stepper-wrapper">
            <!-- Step 1 -->
            <div class="stepper-item completed">
                <div class="stepper-circle-wrapper">
                    <div class="stepper-circle completed">
                    </div>
                </div>
                <div class="stepper-content">
                    <h4 class="stepper-title">Pelaksanaan Observasi / Test Masuk</h4>
                </div>
            </div>
            
            <!-- Step 2 -->
            <div class="stepper-item active">
                <div class="stepper-circle-wrapper active">
                    <div class="stepper-circle active">
                    </div>
                </div>
                <div class="stepper-content">
                    <h4 class="stepper-title">Proses Pembayaran Formulir dan Biaya Observasi</h4>
                </div>
            </div>
            
            <!-- Step 3 -->
            <div class="stepper-item disabled">
                <div class="stepper-circle-wrapper">
                    <div class="stepper-circle">
                        <span style="width: auto; height: auto; background: #a9b3bc; border-radius: 50%;"></span>
                    </div>
                </div>
                <div class="stepper-content">
                    <h4 class="stepper-title">Pengumuman Hasil Observasi / Test Masuk</h4>
                </div>
            </div>
            
            <!-- Step 4 -->
            <div class="stepper-item disabled">
                <div class="stepper-circle-wrapper">
                    <div class="stepper-circle">
                        <span style="width: auto; height: auto; background: #a9b3bc; border-radius: 50%;"></span>
                    </div>
                </div>
                <div class="stepper-content">
                    <h4 class="stepper-title">Proses Daftar Ulang</h4>
                </div>
            </div>
            
            <!-- Step 5 -->
            <div class="stepper-item disabled">
                <div class="stepper-circle-wrapper">
                    <div class="stepper-circle">
                        <span style="width: auto; height: auto; background: #a9b3bc; border-radius: 50%;"></span>
                    </div>
                </div>
                <div class="stepper-content last">
                    <h4 class="stepper-title">Proses Pembayaran Uang Pangkal</h4>
                </div>
            </div>
        </div>
</div>
@endsection