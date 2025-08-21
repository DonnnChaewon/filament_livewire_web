<?php

namespace App\Livewire;

use App\Mail\ContactEmail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ContactUs extends Component {
    public $name = '';
    public $email = '';

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

        Mail::to('superadmin@admin.com')->send(new ContactEmail($mailData));

        session()->flash('success', 'Thank you for contacting us, we will send you a message sooner or later');

        $this->redirect('/contactus');
    }

    public function render() {
        return view('livewire.contact-us');
    }
}