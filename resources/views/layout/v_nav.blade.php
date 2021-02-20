<li class="{{ request()->is('/') ? 'active' : ''}} "><a href="/"><i class="fa fa-book"></i> <span>Home</span></a></li>
@if( auth()->user()->level==1)
    <li class="{{ request()->is('guru') ? 'active' : ''}} "><a href="/guru"><i class="fa fa-book"></i> <span>Guru</span></a></li>
@elseif( auth()->user()->level==2)
    <li class="{{ request()->is('user') ? 'active' : ''}} "><a href="/user"><i class="fa fa-book"></i> <span>User</span></a></li>
@elseif( auth()->user()->level==3)
    <li class="{{ request()->is('siswa') ? 'active' : ''}} "><a href="/siswa"><i class="fa fa-book"></i> <span>Siswa</span></a></li>
@endif



