<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\MailMessage;

class UserVerificationNotification extends Notification
{
    use Queueable;

    public function __construct()
    {
    }

    public function via($notifiable)
    {
        return ['mail'];
    }

    public function toMail($notifiable)
    {
        $notifiable->verification_code = rand(100000, 999999);
        $notifiable->save();

        $array['subject'] = localize('Email Verification');
        $array['content'] = localize('You verification code is') . ' ' . $notifiable->verification_code;

        return (new MailMessage)
            ->view('emails.verification', ['array' => $array])
            ->subject(localize('Email Verification') . ' - ' . env('APP_NAME'));
    }

    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
