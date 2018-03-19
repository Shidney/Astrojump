switch(argument0)
{
    case "coin":
    {
        switch(argument1)
        {
        case 0:
             global.coins+=1;
             audio_sound_pitch(snd_coin,1);
             audio_play_sound(snd_coin,0,0);
        break;
        case 1:
             global.coins+=10;
             audio_sound_pitch(snd_coin,1.5);
              audio_play_sound(snd_coin,0,0);
        break;
        case 2:
             global.coins+=100;
             audio_sound_pitch(snd_coin,1.7);
             audio_play_sound(snd_coin,0,0);
        break;
        case 3:
             global.coins+=200;
             audio_sound_pitch(snd_coin,2);
             audio_play_sound(snd_coin,0,0);
        break; 
    }
    break;
    }
    case "step":
         audio_sound_pitch(snd_step,1.2)
         audio_play_sound(snd_step,0,0);
    break;
    case "pause":
        audio_play_sound(snd_pause,0,0)
    break;
    case "attack":
         audio_play_sound(snd_shield,0,0)
    break;
    case "electric":
        audio_play_sound(snd_electricity,0,0)
    break;
    case "beep":
        audio_play_sound(snd_beep,0,0);
    break;
    case "stop":
        audio_stop_all();
    break;
}
