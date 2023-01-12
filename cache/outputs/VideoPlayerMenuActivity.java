// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.androvid.AndrovidApplication;
import com.androvid.exp.AndrovidFailException;
import com.media.common.a.l;
import com.media.common.av.AVInfo;
import com.media.common.e.f;
import com.media.common.g.a;
import com.media.common.o.m;
import com.media.video.c.b;
import com.media.video.data.VideoInfo;
import com.media.video.data.g;
import com.media.video.player.SimpleMediaController;
import com.media.video.player.ZeoVideoView;
import com.util.e;
import com.util.i;
import com.util.j;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.androvid.videokit:
//            AndrovidNoStatusBarActivity, f, h, i, 
//            b, o, m, v, 
//            GridMenuItem

public class VideoPlayerMenuActivity extends AndrovidNoStatusBarActivity
    implements android.media.MediaPlayer.OnCompletionListener, com.androvid.videokit.f, h, com.androvid.videokit.i, com.gui.i.b, com.media.common.av.b.a, a, com.media.video.c.a
{

    public VideoPlayerMenuActivity()
    {
        d = 5;
        e = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = true;
        m = null;
        r = false;
        b = null;
        c = null;
        s = false;
        t = null;
        u = 0;
    }

    private void a(Bundle bundle)
    {
        Object obj = JVM INSTR new #94  <Class f>;
        ((f) (obj)).f();
        android.net.Uri uri = getIntent().getData();
        Object obj2 = null;
        if(uri != null)
        {
            bundle = getApplication();
            int i1 = com.androvid.videokit.b.b(this);
            com.util.e.a(bundle, i1);
            boolean flag2 = true;
            r = flag2;
            bundle = getIntent().getData();
            ((f) (obj)).a(bundle);
            i1 = com.util.j.b(this, bundle);
            if(i1 > 0)
                ((f) (obj)).a(i1);
            Object obj1 = com.util.j.a(this, bundle);
            boolean flag3 = com.media.common.h.a.e(((String) (obj1)));
            if(flag3)
                ((f) (obj)).a(((String) (obj1)));
            VideoInfo videoinfo1 = com.media.video.c.b.a().a(((f) (obj)), false, false);
            if(videoinfo1 != null)
            {
                com.media.common.e.f.a(((f) (obj)), videoinfo1);
                obj1 = com.media.video.c.b.a();
                ((b) (obj1)).b(videoinfo1);
                int j1 = ((f) (obj)).d();
                if(j1 < 0)
                {
                    obj1 = com.media.video.c.b.a();
                    j1 = ((b) (obj1)).a(((f) (obj)));
                    if(j1 >= 0)
                        ((f) (obj)).b(j1);
                }
                e = videoinfo1;
                obj1 = com.media.video.c.b.a();
                VideoInfo videoinfo2 = e;
                ((b) (obj1)).b(videoinfo2);
                obj1 = e;
                j1 = ((VideoInfo) (obj1)).g;
                if(j1 < 0)
                {
                    int k1 = ((f) (obj)).d();
                    if(k1 >= 0)
                    {
                        obj1 = e;
                        int l2 = ((f) (obj)).d();
                        obj1.g = l2;
                    }
                }
            } else
            {
                boolean flag = com.media.common.h.a.e(((String) (obj1)));
                if(flag)
                {
                    obj1 = "VideoPlayerMenuActivity, called outside, video not in Media DB but exits on file system";
                    com.util.i.c(((String) (obj1)));
                }
            }
            if(videoinfo1 == null)
            {
                obj1 = com.media.common.h.a.a(bundle);
                videoinfo1 = com.media.video.c.b.a().e(((String) (obj1)));
                if(videoinfo1 != null)
                    e = videoinfo1;
            }
            if(videoinfo1 == null)
            {
                bundle = com.media.video.d.a.a(this, bundle);
                boolean flag1 = com.media.common.h.a.e(bundle);
                if(flag1)
                {
                    obj1 = JVM INSTR new #186 <Class StringBuilder>;
                    ((StringBuilder) (obj1)).StringBuilder();
                    String s5 = "VideoPlayerMenuActivity.getSelectedVideo, temp input file: ";
                    ((StringBuilder) (obj1)).append(s5);
                    ((StringBuilder) (obj1)).append(bundle);
                    com.util.i.b(((StringBuilder) (obj1)).toString());
                    obj1 = JVM INSTR new #165 <Class VideoInfo>;
                    ((VideoInfo) (obj1)).VideoInfo();
                    e = ((VideoInfo) (obj1));
                    obj1 = e;
                    double d1 = Math.random();
                    double d2 = -1000000D;
                    d1 *= d2;
                    int k2 = (int)d1;
                    obj1.a = k2;
                    obj1 = e;
                    obj1.c = bundle;
                    obj1.g = 0;
                    bundle = JVM INSTR new #217 <Class com.media.common.av.b>;
                    bundle.com.media.common.av.b();
                    obj1 = e;
                    String s3 = "readVideoFromExternalProvider";
                    bundle.a(this, ((VideoInfo) (obj1)), this, s3);
                }
            }
            bundle = i.a;
            obj1 = JVM INSTR new #186 <Class StringBuilder>;
            ((StringBuilder) (obj1)).StringBuilder();
            ((StringBuilder) (obj1)).append("VideoPlayerMenuActivity, called outside: ");
            String s4 = ((f) (obj)).toString();
            ((StringBuilder) (obj1)).append(s4);
            obj1 = ((StringBuilder) (obj1)).toString();
            Log.i(bundle, ((String) (obj1)));
        } else
        {
            if(bundle != null)
            {
                ((f) (obj)).b(bundle);
            } else
            {
                bundle = getIntent().getExtras();
                String s1 = "com.media.common.data.MediaAccessData";
                bundle = bundle.getBundle(s1);
                ((f) (obj)).b(bundle);
            }
            bundle = com.media.video.c.b.a().a(((f) (obj)), false, false);
            e = bundle;
            bundle = com.media.video.c.b.a();
            VideoInfo videoinfo = e;
            bundle.b(videoinfo);
            bundle = e;
            if(bundle != null)
            {
                int i2 = ((VideoInfo) (bundle)).g;
                if(i2 < 0)
                {
                    int j2 = ((f) (obj)).d();
                    if(j2 >= 0)
                    {
                        bundle = e;
                        int l1 = ((f) (obj)).d();
                        bundle.g = l1;
                    }
                }
            }
        }
        bundle = e;
        if(bundle == null)
        {
            com.util.i.e("VideoPlayerMenuActivity.getSelectedVideo, Video Not found!");
            bundle = JVM INSTR new #186 <Class StringBuilder>;
            bundle.StringBuilder();
            String s2 = "VideoPlayerMenuActivity.getSelectedVideo, Media: ";
            bundle.append(s2);
            obj = ((f) (obj)).toString();
            bundle.append(((String) (obj)));
            com.util.i.e(bundle.toString());
            bundle = JVM INSTR new #256 <Class AndrovidFailException>;
            bundle.AndrovidFailException();
            com.util.e.a(bundle);
            finish();
        }
    }

    static void a(VideoPlayerMenuActivity videoplayermenuactivity)
    {
        videoplayermenuactivity.n();
    }

