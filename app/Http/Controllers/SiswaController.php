<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SiswaModel;
use Dompdf\Dompdf;

class SiswaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->SiswaModel = new SiswaModel();
    }

    public function index(){
        $data = [
            'siswa' => $this->SiswaModel->allData(),
        ];
        return view('v_siswa', $data);
    }
    
    public function print(){
        $data = [
            'siswa' => $this->SiswaModel->allData(),
        ];
        return view('v_print', $data);
    }
    
    public function printpdf(){
        $data = [
            'siswa' => $this->SiswaModel->allData(),
        ];
        $html = view('v_printpdf', $data);

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'Landscape');
        $dompdf->render();
        $dompdf->stream();
    }
}
