<?php

namespace App\Livewire;

use App\Mail\ContactEmail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ContactUs extends Component {
    public $name = '';
    public $email = '';
    public $message = '';

    protected $rules = [
        'name' => 'required',
        'email' => 'required|email',
        'message' => 'required'
    ];

    public function submit() {
        $this->validate();

        $mailData = [
            'subject' => 'You have received a mail',
            'name' => $this->name,
            'email' => $this->email,
            'message' => $this->message
        ];

        $this->redirect('/contactus');
    }

    public function render() {
        return view('livewire.contact-us');
    }
}