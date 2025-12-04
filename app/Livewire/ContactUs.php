<?php

namespace App\Livewire;

use App\Mail\ContactFormMail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ContactUs extends Component {
    public $name = '';
    public $email = '';
    public $message = '';

    public $formId;

    protected $rules = [
        'name' => 'required',
        'email' => 'required|email',
        'message' => 'required',
    ];

    public function mount() {
        $this->formId = uniqid();
    }

    public function submit() {
        $this->validate();

        Mail::to('brandonlolz2003@gmail.com')->send(
            new ContactFormMail([
                'subject' => 'You have received a mail',
                'name' => $this->name,
                'email' => $this->email,
                'message' => $this->message,
            ])
        );

        session()->flash('success', 'Your message has been sent!');

        // Reset all input fields
        $this->reset(['name', 'email', 'message']);

        // Force UI to re-render form fields
        $this->formId = uniqid();
    }

    public function render() {
        return view('livewire.contact-us');
    }
}