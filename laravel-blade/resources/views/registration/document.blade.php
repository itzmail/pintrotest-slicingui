@extends('layouts.app')

@section("nav-title", "Berkas dokumen")
@section("icon-nav", "fas fa-arrow-left fa-lg")

@section('can-go-back', true)
@section('back-url', url()->previous())

@section('content')
<div class="container py-5">
    <x-document-card 
        title="Salinan NISN" 
        description1="Upload dengan format PDF, PNG, atau JPG" 
        description2="Maks ukuran file 2MB." 
        uploadText="Unggah" 
    />
    <x-document-card 
        title="Salinan Rapot" 
        description1="Upload dengan format PDF, PNG, atau JPG" 
        description2="Maks ukuran file 2MB." 
        uploadText="Unggah" 
    />
    <x-document-card 
        title="Akta Kelahiran" 
        description1="Upload dengan format PDF, PNG, atau JPG" 
        description2="Maks ukuran file 2MB." 
        uploadText="Unggah" 
    />
    <x-document-card 
        title="Kartu Keluarga" 
        description1="Upload dengan format PDF, PNG, atau JPG" 
        description2="Maks ukuran file 2MB." 
        uploadText="Unggah" 
    />
</div>
@endsection