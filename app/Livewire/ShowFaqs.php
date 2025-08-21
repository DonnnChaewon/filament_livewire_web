<?php

namespace App\Livewire;

use App\Models\Faq;
use Livewire\Component;

class ShowFaqs extends Component {
    public function render() {
        $faqs = Faq::where('status', 1)->orderBy('question', 'ASC')->get();

        return view('livewire.show-faqs', [
            'faqs' => $faqs
        ]);
    }
}