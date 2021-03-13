<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Siap Untuk Keluar?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Apakah Kamu Yakin Ingin Keluar??</div>
      <div class="modal-footer">
        <form action="{{ route('logout') }}" method="post">
          @csrf
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Kembali</button>
          <button type="submit" class="btn btn-primary">Keluar</button>
        </form>
      </div>
    </div>
  </div>
</div>