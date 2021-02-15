<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GuruModel;

class GuruController extends Controller
{
    public function __construct(){
        $this->GuruModel = new GuruModel();
    }

    public function index(){
        $data = [
        'guru' => $this->GuruModel->allData(),
        ];
        return view('v_guru', $data );
    }

    public function detail($id_guru){
        if (!$this->GuruModel->detailData($id_guru)) {
            abort(404);
        }

        $data = [
            'guru' => $this->GuruModel->detailData($id_guru),
            ];
            return view('v_detailguru', $data );
    }

    public function add(){
        return view('v_addguru');
    }

    public function insert(){
        Request()->validate([
            'nip' => 'required|unique:tbl_guru,nip|min:4|max:5',
            'nama_guru' => 'required',
            'mapel' => 'required',
            'foto_guru' => 'required',
        ],[
            'nip.required' => 'wajib di isi !!',
            'nip.unique' => 'nip ini sudah di isi !!',
            'nip.min' => 'min 4 karakter',
            'nip.max' => 'max 5 karakter',
            'nama_guru.required' => 'wajib di isi !!',
            'mapel.required' => 'wajib di isi !!',
            'foto_guru.required' => 'wajib di isi !!',
        ]);

        $file = Request()->foto_guru;
        $fileName = Request()->nip . '.' . $file->extension();
        $file->move(public_path('foto_guru'), $fileName);

        $data = [
            'nip' => Request()->nip,
            'nama_guru' => Request()->nama_guru,
            'mapel' => Request()->mapel,
            'foto_guru' => $fileName,
        ];

        $this->GuruModel->addData($data);
        return redirect()->route('guru')->with('pesan','Data Berhasil di Tambahkan !!!');
    }

    public function edit($id_guru){
        if (!$this->GuruModel->detailData($id_guru)) {
            abort(404);
        }
        $data = [
            'guru' => $this->GuruModel->detailData($id_guru),
            ];
        return view('v_editguru', $data);
    }

    public function update($id_guru){
        Request()->validate([
            'nip' => 'required|min:4|max:5',
            'nama_guru' => 'required',
            'mapel' => 'required',
            'foto_guru' => 'max:100',
        ],[
            'nip.required' => 'wajib di isi !!',
            'nip.min' => 'min 4 karakter',
            'nip.max' => 'max 5 karakter',
            'nama_guru.required' => 'wajib di isi !!',
            'mapel.required' => 'wajib di isi !!',
        ]);

        if ($file = Request()->foto_guru <> "") {
            $file = Request()->foto_guru;
            $fileName = Request()->nip . '.' . $file->extension();
            $file->move(public_path('foto_guru'), $fileName);

            $data = [
                'nip' => Request()->nip,
                'nama_guru' => Request()->nama_guru,
                'mapel' => Request()->mapel,
                'foto_guru' => $fileName,
            ];

            $this->GuruModel->editData($id_guru, $data);
        } else {
            $data = [
                'nip' => Request()->nip,
                'nama_guru' => Request()->nama_guru,
                'mapel' => Request()->mapel,
            ];
            $this->GuruModel->editData($id_guru, $data);
        }
        return redirect()->route('guru')->with('pesan','Data Berhasil di Update !!!');
    }

    public function delete($id_guru){
        $this->GuruModel->deleteData($id_guru);
        return redirect()->route('guru')->with('pesan','Data Berhasil di Hapus !!!');
    }
}
