<!-- resources/views/components/document-card.blade.php -->
<div class="border card-outline-document pt-3 mt-3">
    <div class="d-flex flex-row align-items-center px-3">
        <i class="fas fa-cloud"></i>
        <span class="ms-3 flex-grow-1">{{ $title }}</span>
        <i class="fas fa-chevron-up"></i>
    </div>
    <div class="d-flex flex-column my-2 mb-4 px-3">
        <span class="text-description">{{ $description1 }}</span>
        <span class="text-description">{{ $description2 }}</span>
    </div>
    <a class="d-flex flex-row align-items-center border-top p-3 card-upload text-decoration-none" style="cursor: pointer;">
        <i class="fas fa-upload"></i>
        <span class="ms-3 flex-grow-1">{{ $uploadText }}</span>
    </a>
</div>