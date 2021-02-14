<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GuruModel extends Model
{
    public function allData(){
        return [
            [
                'nip'=> '1111',
                'nama'=> 'Azam',
                'mapel'=> 'Biologi'
            ],
            [
                'nip'=> '2222',
                'nama'=> 'Azam',
                'mapel'=> 'Fisika'
            ],
            [
                'nip'=> '3333',
                'nama'=> 'Azam',
                'mapel'=> 'Bahasa'
            ],
        ];
    }
    
}
