<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactFormMail extends Mailable {
    use Queueable, SerializesModels;

    public $mailData;

    public function __construct($mailData) {
        $this->mailData = $mailData;
    }

    public function build() {
        return $this->subject($this->mailData['subject'])->view('emails.contact');
    }
}