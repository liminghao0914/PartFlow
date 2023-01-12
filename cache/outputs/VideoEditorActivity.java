// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.Toast;
import androidx.fragment.app.g;
import com.gui.h;
import com.imgvideditor.ad;
import com.imgvideditor.p;
import com.imgvideditor.s;
import com.imgvideditor.x;
import com.media.common.f.a;
import com.media.common.k.c;
import com.media.video.data.VideoInfo;
import com.menubar.widget.b;
import com.util.activity.NoStatusBarActivity;
import com.videoeditor.aa;
import com.videoeditor.ab;
import com.videoeditor.ac;
import com.videoeditor.ae;
import com.videoeditor.af;
import com.videoeditor.ag;
import com.videoeditor.d;
import com.videoeditor.e;
import com.videoeditor.f;
import com.videoeditor.i;
import com.videoeditor.k;
import com.videoeditor.l;
import com.videoeditor.m;
import com.videoeditor.n;
import com.videoeditor.q;
import com.videoeditor.t;
import com.videoeditor.u;
import com.videoeditor.v;
import com.videoeditor.w;
import com.videoeditor.y;
import com.videoeditor.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.androvid.videokit:
//            o

public class VideoEditorActivity extends NoStatusBarActivity
    implements android.view.View.OnClickListener, com.gui.a.f.a, h, ad, a, c, b, e, k, l, m, n
{

    public VideoEditorActivity()
    {
        e = null;
        f = null;
        g = null;
        h = null;
        Object obj = JVM INSTR new #87  <Class i>;
        ((i) (obj)).i();
        a = ((d) (obj));
        obj = JVM INSTR new #92  <Class AtomicBoolean>;
        ((AtomicBoolean) (obj)).AtomicBoolean();
        i = ((AtomicBoolean) (obj));
        j = false;
        k = null;
        l = null;
        m = false;
    }

    private void A()
    {
        int i1 = 0x7f090046;
        View view = findViewById(i1);
        if(view != null)
        {
            byte byte0 = 8;
            view.setVisibility(byte0);
        }
    }

    private void B()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        ac ac1 = JVM INSTR new #127 <Class ac>;
        ac1.ac();
        k1.b(0x7f090398, ac1, "VideoEditorStickerSettingsFragment");
        k1.d();
    }

    private void C()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        p p1 = JVM INSTR new #142 <Class p>;
        p1.p();
        k1.b(0x7f090398, p1, "MediaEditorEffectsFragment");
        k1.d();
        boolean flag = true;
        a(flag, flag, false);
    }

    private void D()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        q q1 = JVM INSTR new #151 <Class q>;
        q1.q();
        k1.b(0x7f090398, q1);
        k1.d();
        a(false, false, false);
    }

    private void E()
    {
        Object obj = getSupportFragmentManager();
        int i1 = 0x7f090396;
        androidx.fragment.app.Fragment fragment = ((g) (obj)).a(i1);
        if(fragment != null)
        {
            ((g) (obj)).a().a(fragment).d();
            obj = findViewById(i1);
            if(obj != null)
            {
                int j1 = ((View) (obj)).getVisibility();
                if(j1 == 0)
                {
                    android.view.animation.Animation animation = AnimationUtils.loadAnimation(this, 0x7f010025);
                    ((View) (obj)).setAnimation(animation);
                    byte byte0 = 8;
                    ((View) (obj)).setVisibility(byte0);
                }
            }
        }
    }

    private void F()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        s s1 = JVM INSTR new #180 <Class s>;
        s1.s();
        k1.b(0x7f090398, s1, "MediaEditorFiltersFragment");
        k1.d();
        boolean flag = true;
        a(flag, flag, false);
    }

    private void G()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.l l1 = JVM INSTR new #185 <Class com.imgvideditor.l>;
        l1.com.imgvideditor.l();
        k1.b(0x7f090398, l1, "MediaEditorAdjustFragment");
        k1.d();
        boolean flag = true;
        a(flag, flag, false);
    }

    private void H()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.q q1 = JVM INSTR new #190 <Class com.imgvideditor.q>;
        q1.com.imgvideditor.q();
        k1.b(0x7f090398, q1, "MediaEditorEmojiFragment");
        k1.d();
        a(false, false, false);
    }

    private void I()
    {
        com.util.i.b("VideoEditorActivity.showEditorViewerFragment");
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        ag ag1 = ag.i();
        k1.b(0x7f0903a8, ag1, "VideoEditorViewerFragment");
        k1.d();
    }

    private void J()
    {
        int i1 = a.z().g();
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        u u1 = com.videoeditor.u.a(i1);
        k1.b(0x7f0903a8, u1, "VideoEditorCropViewerFragment");
        k1.d();
    }

    private void K()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        t t1 = com.videoeditor.t.e();
        k1.b(0x7f090398, t1, "VideoEditorCropMenuFragment");
        k1.d();
        a(false, false, false);
    }

    private void L()
    {
label0:
        {
            a.z().c();
            Object obj = a.b();
            long l1 = ((com.media.video.data.c) (obj)).c();
            int i1 = com.androvid.videokit.o.f;
            long l2 = i1;
            int k1 = l1 != l2;
            if(k1 > 0)
            {
                boolean flag = com.androvid.videokit.o.a();
                if(!flag)
                {
                    int i2 = 0x7f110145;
                    int j2 = 0x7f110052;
                    int j1 = 0x7f110144;
                    com.androvid.util.h.a(this, i2, j2, j1);
                    break label0;
                }
            }
            obj = JVM INSTR new #263 <Class androidx.appcompat.app.c$a>;
            ((androidx.appcompat.app.c.a) (obj)).androidx.appcompat.app.c.a(this);
            int k2 = 0x7f1100b9;
            obj = ((androidx.appcompat.app.c.a) (obj)).a(k2);
            String as[] = M();
            _cls3 _lcls3 = JVM INSTR new #277 <Class VideoEditorActivity$3>;
            _lcls3.this. _cls3();
            obj = ((androidx.appcompat.app.c.a) (obj)).a(as, _lcls3);
            ((androidx.appcompat.app.c.a) (obj)).c();
        }
    }

    private String[] M()
    {
        int i1 = b.length;
        String as[] = new String[i1];
        int j1 = 0;
        do
        {
            int ai[] = c;
            int k1 = ai.length;
            if(j1 < k1)
            {
                String s2 = b[j1];
                int l1 = ai[j1];
                String s1 = a(s2, l1);
                as[j1] = s1;
                j1++;
            } else
            {
                return as;
            }
        } while(true);
    }

    private void N()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        aa aa1 = com.videoeditor.aa.a();
        String s1 = "VideoEditorRunnerFragment";
        int i1 = 0x7f0903a8;
        k1.b(i1, aa1, s1);
        k1.d();
        k1 = null;
        a(false, false, false);
        boolean flag = com.androvid.videokit.o.a();
        if(!flag)
            P();
        else
            O();
    }

    private void O()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.u u1 = JVM INSTR new #304 <Class com.imgvideditor.u>;
        u1.com.imgvideditor.u();
        k1.b(0x7f090398, u1, "MediaEditorPromotionFragment");
        k1.d();
    }

    private void P()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.m m1 = JVM INSTR new #309 <Class com.imgvideditor.m>;
        m1.com.imgvideditor.m();
        k1.b(0x7f090398, m1, "MediaEditorAdsFragment");
        k1.d();
    }

    private void Q()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.t t1 = JVM INSTR new #314 <Class com.imgvideditor.t>;
        t1.com.imgvideditor.t();
        k1.b(0x7f090398, t1, "MediaEditorPictureAddFragment");
        k1.d();
        a(false, false, false);
    }

    private void R()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        int i1 = a.z().g();
        long l1 = a.z().f() * 1000L;
        com.videoeditor.ad ad1 = com.videoeditor.ad.a(i1, l1);
        k1.b(0x7f090398, ad1, "VideoEditorTrimFragment");
        k1.d();
        a(false, false, false);
    }

    private void S()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        Object obj = a.b().f();
        int i1 = ((List) (obj)).size();
        if(i1 == 0)
        {
            return;
        } else
        {
            int j1 = ((com.media.video.data.d)((List) (obj)).get(0)).r();
            long l1 = a.z().f() * 1000L;
            obj = com.videoeditor.ad.a(j1, l1);
            k1.b(0x7f090398, ((androidx.fragment.app.Fragment) (obj)), "VideoEditorTrimFragment-2");
            k1.d();
            a(false, false, false);
            return;
        }
    }

    private void T()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        int i1 = a.z().g();
        long l1 = a.z().f() * 1000L;
        ab ab1 = com.videoeditor.ab.a(i1, l1);
        k1.b(0x7f090398, ab1, "VideoEditorSizeFragment");
        k1.d();
        a(false, false, false);
    }

    private void U()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.imgvideditor.n n1 = JVM INSTR new #358 <Class com.imgvideditor.n>;
        n1.com.imgvideditor.n();
        k1.b(0x7f090398, n1, "MediaEditorBrushFragment");
        k1.d();
        boolean flag = true;
        a(flag, flag, false);
    }

    private void V()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        com.videoeditor.s s1 = JVM INSTR new #363 <Class com.videoeditor.s>;
        s1.com.videoeditor.s();
        k1.b(0x7f090398, s1, "VideoEditorArrangeClipsFragment");
        k1.d();
        a(true, false, false);
    }

    private void W()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        int i1 = a.z().g();
        long l1 = a.z().f() * 1000L;
        z z1 = com.videoeditor.z.a(i1, l1);
        k1.b(0x7f090398, z1, "VideoEditorRotateFragment");
        k1.d();
        a(false, false, false);
    }

    private void X()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        int i1 = a.z().g();
        long l1 = a.z().f() * 1000L;
        af af1 = af.a(i1, l1);
        k1.b(0x7f090398, af1, "VideoEditorVideoPlaybackSpeedFragment");
        k1.d();
        a(false, false, false);
    }

    private void Y()
    {
        I();
        int i1 = 0x7f090398;
        View view = findViewById(i1);
        if(view != null)
            view.setVisibility(0);
        y();
        i1 = 1;
        a(i1, false, i1);
    }

    private void Z()
    {
        com.nguyenhoanglam.imagepicker.ui.videopicker.b.c c1 = com.nguyenhoanglam.imagepicker.ui.videopicker.b.a(this).a("#28303b").b("#161d26").c("#FFFFFF").d("#FFFFFF").e("#4CAF50").f("#3a414d").a(false);
        boolean flag = true;
        c1 = c1.b(flag).c(flag).d(flag);
        String s1 = getString(0x7f11000b);
        c1 = c1.h(s1);
        s1 = getString(0x7f110078);
        c1.g(s1).i("You have reached selection limit").e(false).f(flag).a();
    }

    private String a(String s1, int i1)
    {
        Object obj = a.H();
        Object obj1 = a.h().b().d();
        ((com.media.common.e.g) (obj1)).a(i1);
        i1 = ((com.media.video.data.f) (obj)).c();
        obj1 = ((com.media.common.e.g) (obj1)).c();
        int j1 = ((com.media.video.data.f) (obj)).b(((android.util.Size) (obj1)));
        i1 += j1;
        long l1 = a.b().c() / 1000L;
        a.b().a(0);
        long l2 = i1;
        String s2 = com.media.common.h.a.a((int)((float)(l1 * l2) / 8F));
        obj = JVM INSTR new #487 <Class StringBuilder>;
        ((StringBuilder) (obj)).StringBuilder();
        ((StringBuilder) (obj)).append(s1);
        ((StringBuilder) (obj)).append("\t\t(");
        ((StringBuilder) (obj)).append(s2);
        ((StringBuilder) (obj)).append(")");
        return ((StringBuilder) (obj)).toString();
    }

    static void a(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.N();
    }

    private void a(boolean flag)
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        x x1 = com.imgvideditor.x.a(flag);
        k1.b(0x7f090398, x1, "MediaEditorTextFragment");
        k1.d();
        a(false, false, false);
    }

    private void a(boolean flag, int i1)
    {
        View view = findViewById(i1);
        if(view != null)
            if(flag)
            {
                view.setEnabled(true);
                flag = 0x3f800000;
                float f1 = 1F;
                view.setAlpha(f1);
            } else
            {
                view.setEnabled(false);
                flag = 0x3eb33333;
                float f2 = 0.35F;
                view.setAlpha(f2);
            }
    }

    private void a(boolean flag, boolean flag1, boolean flag2)
    {
        byte byte0 = 8;
        if(flag)
        {
            e.setVisibility(0);
            flag = 0x7f090359;
            View view = findViewById(flag);
            if(flag2)
                view.setVisibility(0);
            else
                view.setVisibility(byte0);
            flag = 0x7f09035b;
            view = findViewById(flag);
            byte0 = 4;
            if(flag2)
                view.setVisibility(0);
            else
                view.setVisibility(byte0);
            flag = 0x7f09035a;
            view = findViewById(flag);
            if(flag1)
                view.setVisibility(0);
            else
                view.setVisibility(byte0);
            flag = 0x7f09035c;
            view = findViewById(flag);
            if(flag1)
                view.setVisibility(0);
            else
                view.setVisibility(byte0);
            return;
        } else
        {
            e.setVisibility(byte0);
            return;
        }
    }

    static boolean a(VideoEditorActivity videoeditoractivity, boolean flag)
    {
        videoeditoractivity.m = flag;
        return flag;
    }

    private void aa()
    {
        boolean flag1;
label0:
        {
            Object obj = a.w();
            boolean flag = ((com.imgvideditor.a.c) (obj)).c();
            if(flag)
            {
                com.imgvideditor.a.b b1 = l;
                if(b1 != null)
                {
                    int i1 = ((com.imgvideditor.a.c) (obj)).d();
                    byte byte0 = 2;
                    if(i1 == byte0)
                    {
                        obj = l;
                        _cls6 _lcls6 = JVM INSTR new #543 <Class VideoEditorActivity$6>;
                        _lcls6.this. _cls6();
                        ((com.imgvideditor.a.b) (obj)).a(_lcls6);
                        flag1 = true;
                        break label0;
                    }
                }
            }
            flag1 = false;
            obj = null;
        }
        if(!flag1)
            d(this);
    }

    private void ab()
    {
        View view = getLayoutInflater().inflate(0x7f0c0053, null);
        Object obj = JVM INSTR new #263 <Class androidx.appcompat.app.c$a>;
        ((androidx.appcompat.app.c.a) (obj)).androidx.appcompat.app.c.a(this);
        obj = ((androidx.appcompat.app.c.a) (obj)).b(view).b();
        int i1 = androidx.core.content.a.c(this, 0x7f06001b);
        Object obj1 = ((androidx.appcompat.app.c) (obj)).getWindow();
        ColorDrawable colordrawable = JVM INSTR new #583 <Class ColorDrawable>;
        colordrawable.ColorDrawable(i1);
        ((Window) (obj1)).setBackgroundDrawable(colordrawable);
        Object obj2 = view.findViewById(0x7f090079);
        obj1 = JVM INSTR new #596 <Class VideoEditorActivity$8>;
        ((_cls8) (obj1)).this. _cls8();
        ((View) (obj2)).setOnClickListener(((android.view.View.OnClickListener) (obj1)));
        view = view.findViewById(0x7f090075);
        obj2 = JVM INSTR new #605 <Class VideoEditorActivity$9>;
        ((_cls9) (obj2)).this. _cls9();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj2)));
        a.z().c();
        ((androidx.appcompat.app.c) (obj)).show();
    }

    private void ac()
    {
        androidx.appcompat.app.c.a a1 = JVM INSTR new #263 <Class androidx.appcompat.app.c$a>;
        a1.androidx.appcompat.app.c.a(this);
        a1 = a1.a(0x7f1100fc).b(0x7f110020);
        Object obj = JVM INSTR new #617 <Class VideoEditorActivity$2>;
        ((_cls2) (obj)).this. _cls2();
        a1 = a1.a(0x7f1100fe, ((android.content.DialogInterface.OnClickListener) (obj)));
        obj = JVM INSTR new #625 <Class VideoEditorActivity$10>;
        ((_cls10) (obj)).this. _cls10();
        a1.b(0x7f11006e, ((android.content.DialogInterface.OnClickListener) (obj))).c();
    }

    private void ad()
    {
        boolean flag = isFinishing();
        if(flag)
        {
            com.util.i.d("VideoEditorActivity.checkAndShowRating, do nothing! Activity is finishing");
            return;
        }
        com.media.common.l.b b1 = com.media.common.l.e.a().b();
        com.media.common.l.b b2 = com.media.common.l.b.b;
        if(b1 == b2)
        {
            com.util.i.b("VideoEditorActivity.checkAndShowRating, Rating Action is SHOW_RATING_DLG");
            androidx.fragment.app.k k1 = getSupportFragmentManager().a();
            com.androvid.b.b b3 = JVM INSTR new #654 <Class com.androvid.b.b>;
            b3.com.androvid.b.b();
            int i1 = 0x7f090398;
            k1.b(i1, b3);
            k1.d();
        }
    }

    private void b(int i1)
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        w w1 = com.videoeditor.w.a(i1);
        k1.b(0x7f090398, w1, "VideoEditorMusicPickerFragment");
        k1.d();
        a(false, false, false);
    }

    static void b(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.NoStatusBarActivity.onBackPressed();
    }

    private void b(com.media.audio.c.i i1)
    {
        Object obj = getSupportFragmentManager().a();
        com.media.audio.ui.a.a a1 = JVM INSTR new #667 <Class com.media.audio.ui.a$a>;
        a1.com.media.audio.ui.a.a();
        i1 = a1.a(i1).a(true).a();
        int j1 = 0x7f090396;
        ((androidx.fragment.app.k) (obj)).b(j1, i1);
        ((androidx.fragment.app.k) (obj)).d();
        i1 = findViewById(j1);
        obj = AnimationUtils.loadAnimation(this, 0x7f010029);
        i1.setAnimation(((android.view.animation.Animation) (obj)));
        i1.setVisibility(0);
        a(false, false, false);
    }

    static void c(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.NoStatusBarActivity.onBackPressed();
    }

    private void c(com.media.audio.c.g g1)
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        g1 = com.videoeditor.x.a(g1);
        k1.b(0x7f090398, g1);
        k1.d();
        a(false, false, false);
    }

    private void d(int i1)
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        int j1 = a.z().g();
        long l1 = a.z().f() * 1000L;
        y y1 = com.videoeditor.y.a(j1, l1, i1);
        k1.b(0x7f090398, y1, "VideoEditorMusicVideoSoundSettingsFragment");
        k1.d();
        a(false, false, false);
    }

    static void d(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.NoStatusBarActivity.onBackPressed();
    }

    static void e(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.NoStatusBarActivity.onBackPressed();
    }

    static void f(VideoEditorActivity videoeditoractivity)
    {
        videoeditoractivity.NoStatusBarActivity.onBackPressed();
    }

    static com.videoeditor.service.e g(VideoEditorActivity videoeditoractivity)
    {
        return videoeditoractivity.k;
    }

    static int[] x()
    {
        return c;
    }

    private void y()
    {
        androidx.fragment.app.k k1 = getSupportFragmentManager().a();
        v v1 = JVM INSTR new #693 <Class v>;
        v1.v();
        k1.b(0x7f090398, v1);
        k1.d();
        z();
        boolean flag = true;
        a(flag, false, flag);
    }

    private void z()
    {
        boolean flag = com.androvid.videokit.o.a();
        if(!flag)
        {
            int i1 = 0x7f090046;
            View view = findViewById(i1);
            if(view != null)
                view.setVisibility(0);
        }
    }

    public void a(int i1, int j1)
    {
        d d1 = a;
        int k1 = d1.o();
        byte byte0 = 9;
        if(k1 == byte0)
        {
            boolean flag = true;
            boolean flag1 = false;
            if(i1 > 0)
                i1 = 1;
            else
                i1 = 0;
            int l1 = 0x7f09035c;
            a(i1, l1);
            if(j1 <= 0)
            {
                flag = false;
                Object obj = null;
            }
            i1 = 0x7f09035a;
            a(flag, i1);
        }
    }

    protected void a(int i1, int j1, Object obj)
    {
        d d1 = a;
        d1.c_(i1);
        switch(i1)
        {
        default:
            break;

        case 19: // '\023'
            X();
            break;

        case 18: // '\022'
            d(j1);
            break;

        case 17: // '\021'
            b(j1);
            com.videoeditor.audio.c c1 = a.D();
            c1.b();
            break;

        case 16: // '\020'
            obj = (com.media.audio.c.g)obj;
            c(((com.media.audio.c.g) (obj)));
            break;

        case 15: // '\017'
            D();
            a.D().b();
            d d2 = a;
            j1 = 15;
            d2.c_(j1);
            break;

        case 14: // '\016'
            V();
            break;

        case 13: // '\r'
            T();
            break;

        case 12: // '\f'
            B();
            break;

        case 11: // '\013'
            if(j1 == 0)
                R();
            else
                S();
            break;

        case 10: // '\n'
            Q();
            break;

        case 9: // '\t'
            U();
            break;

        case 8: // '\b'
            H();
            d d3 = a;
            j1 = 8;
            d3.c_(j1);
            break;

        case 7: // '\007'
            i1 = 1;
            a(i1);
            break;

        case 6: // '\006'
            J();
            K();
            break;

        case 5: // '\005'
            G();
            break;

        case 4: // '\004'
            F();
            break;

        case 3: // '\003'
            C();
            break;

        case 2: // '\002'
            W();
            break;

        case 1: // '\001'
            y();
            break;
        }
    }

    public void a(int i1, com.menubar.a.a a1)
    {
        i1 = a1.c();
        byte byte0 = 11;
        int i4 = 0x7f090286;
        if(i1 == i4)
        {
            a(byte0, 0, null);
        } else
        {
            i1 = a1.c();
            int j4 = 0x7f090287;
            int k4 = 1;
            if(i1 == j4)
            {
                a(byte0, k4, null);
            } else
            {
                i1 = a1.c();
                int j1 = 0x7f090290;
                if(i1 == j1)
                {
                    i1 = 13;
                    a(i1, 0, null);
                } else
                {
                    i1 = a1.c();
                    int k1 = 0x7f09028b;
                    if(i1 == k1)
                    {
                        i1 = 4;
                        a(i1, 0, null);
                    } else
                    {
                        i1 = a1.c();
                        int l1 = 0x7f090233;
                        if(i1 == l1)
                        {
                            com.media.audio.c.h h1 = a.D().a();
                            i1 = h1.b();
                            if(i1 != 0)
                            {
                                i1 = 17;
                                a(i1, k4, null);
                            } else
                            {
                                i1 = 15;
                                a(i1, 0, null);
                            }
                        } else
                        {
                            i1 = a1.c();
                            int i2 = 0x7f09028a;
                            if(i1 == i2)
                            {
                                i1 = 3;
                                a(i1, 0, null);
                            } else
                            {
                                i1 = a1.c();
                                int j2 = 0x7f090259;
                                if(i1 == j2)
                                {
                                    i1 = 5;
                                    a(i1, 0, null);
                                } else
                                {
                                    i1 = a1.c();
                                    int k2 = 0x7f090291;
                                    if(i1 == k2)
                                    {
                                        i1 = 8;
                                        a(i1, 0, null);
                                    } else
                                    {
                                        i1 = a1.c();
                                        int l2 = 0x7f09028c;
                                        if(i1 == l2)
                                        {
                                            i1 = 10;
                                            a(i1, 0, null);
                                        } else
                                        {
                                            i1 = a1.c();
                                            int i3 = 0x7f090234;
                                            if(i1 == i3)
                                            {
                                                i1 = 7;
                                                a(i1, 0, null);
                                            } else
                                            {
                                                i1 = a1.c();
                                                int j3 = 0x7f090289;
                                                if(i1 == j3)
                                                {
                                                    i1 = 9;
                                                    a(i1, 0, null);
                                                } else
                                                {
                                                    i1 = a1.c();
                                                    int k3 = 0x7f090271;
                                                    if(i1 == k3)
                                                    {
                                                        i1 = 2;
                                                        a(i1, 0, null);
                                                    } else
                                                    {
                                                        i1 = a1.c();
                                                        int l3 = 0x7f09024a;
                                                        if(i1 == l3)
                                                        {
                                                            i1 = 6;
                                                            a(i1, 0, null);
                                                        } else
                                                        {
                                                            i1 = a1.c();
                                                            int l4 = 0x7f090266;
                                                            if(i1 == l4)
                                                            {
                                                                i1 = 19;
                                                                a(i1, 0, null);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        a.f().l();
    }

    public void a(com.media.audio.c.g g1)
    {
        a(16, 0, g1);
    }

    public void a(com.media.audio.c.i i1)
    {
        b(i1);
    }

    public void a(com.media.common.f.b b1)
    {
        a.f().f();
    }

    public void a(com.media.common.k.f f1)
    {
label0:
        {
            Object obj = JVM INSTR new #487 <Class StringBuilder>;
            ((StringBuilder) (obj)).StringBuilder();
            ((StringBuilder) (obj)).append("VideoEditorActivity.stateChanged: ");
            String s1 = f1.name();
            ((StringBuilder) (obj)).append(s1);
            com.util.i.b(((StringBuilder) (obj)).toString());
            obj = com.media.common.k.f.g;
            if(f1 != obj)
            {
                com.media.common.k.f f2 = com.media.common.k.f.i;
                if(f1 != f2)
                {
                    com.media.common.k.f f3 = com.media.common.k.f.h;
                    if(f1 != f3)
                        break label0;
                }
            }
            E();
        }
    }

    public void a(VideoInfo videoinfo)
    {
        com.androvid.util.a.f(this, videoinfo);
    }

    public void a(com.media.video.data.c c1)
    {
        c1 = a.b();
        long l1 = c1.c();
        long l2 = com.androvid.videokit.o.f;
        int i1 = l1 != l2;
        if(i1 > 0)
        {
            boolean flag = com.androvid.videokit.o.a();
            if(!flag)
            {
                int j1 = 0x7f110145;
                int k1 = 0x7f110052;
                int i2 = 0x7f110144;
                com.androvid.util.h.a(this, j1, k1, i2);
            }
        }
    }

    public void a(com.sticker.f f1)
    {
        B();
    }

    public void a(com.videoeditor.service.e e1)
    {
        i.set(true);
        k = e1;
        j = false;
    }

    public void a_(int i1, int j1)
    {
    }

    public void b(int i1, int j1)
    {
        boolean flag = true;
        if(i1 > 0)
            i1 = 1;
        else
            i1 = 0;
        int k1 = 0x7f09035c;
        a(i1, k1);
        if(j1 <= 0)
            flag = false;
        a(flag, 0x7f09035a);
    }

    public void b(com.media.audio.c.g g1)
    {
        E();
        a.D().a(g1);
        c(g1);
    }

    public void b(VideoInfo videoinfo)
    {
        com.media.video.data.g g1 = JVM INSTR new #863 <Class com.media.video.data.g>;
        g1.com.media.video.data.g(videoinfo);
        boolean flag = true;
        com.gui.a.f.a(g1, flag, flag).a(this);
    }

    public void b(com.sticker.f f1)
    {
        d d1 = a;
        int i1 = d1.o();
        boolean flag = f1 instanceof com.sticker.i;
        if(flag)
        {
            byte byte0 = 7;
            if(i1 != byte0)
            {
                boolean flag1 = false;
                f1 = null;
                a(false);
            }
        }
    }

    public void b_(int i1, int j1)
    {
        Y();
    }

    public void c(int i1)
    {
label0:
        {
            Object obj = a.w();
            a.h().a(i1);
            f f1 = a.z();
            f1.c();
            A();
            boolean flag = ((com.imgvideditor.a.c) (obj)).b();
            if(flag)
            {
                char c1 = '\u01E0';
                if(i1 >= c1)
                {
                    com.imgvideditor.i k1 = a.j();
                    com.sticker.e e1 = JVM INSTR new #890 <Class com.sticker.e>;
                    int l1 = 0x7f0807c6;
                    e1.com.sticker.e(this, l1);
                    k1.b(e1);
                }
            }
            i1 = ((com.imgvideditor.a.c) (obj)).c();
            if(i1 != 0)
            {
                com.imgvideditor.a.b b1 = l;
                if(b1 != null)
                {
                    i1 = ((com.imgvideditor.a.c) (obj)).d();
                    int j1 = 1;
                    if(i1 == j1)
                    {
                        com.imgvideditor.a.b b2 = l;
                        obj = JVM INSTR new #902 <Class VideoEditorActivity$4>;
                        ((_cls4) (obj)).this. _cls4();
                        b2.a(((com.imgvideditor.a.b.a) (obj)));
                    } else
                    {
                        i1 = ((com.imgvideditor.a.c) (obj)).d();
                        if(i1 == 0)
                        {
                            com.imgvideditor.a.b b3 = l;
                            _cls5 _lcls5 = JVM INSTR new #905 <Class VideoEditorActivity$5>;
                            _lcls5.this. _cls5();
                            i1 = b3.a(_lcls5);
                            if(i1 == 0)
                                N();
                        } else
                        {
                            N();
                        }
                    }
                    break label0;
                }
            }
            N();
        }
    }

    public void c(VideoInfo videoinfo)
    {
        com.androvid.util.a.c(this, videoinfo);
    }

    public void c(com.sticker.f f1)
    {
    }

    public void d(VideoInfo videoinfo)
    {
        com.gui.a.g.a(videoinfo).a(this);
    }

    public void d(com.sticker.f f1)
    {
    }

    public void e(VideoInfo videoinfo)
    {
        com.media.common.e.f f1 = JVM INSTR new #916 <Class com.media.common.e.f>;
        f1.com.media.common.e.f();
        com.media.common.e.f.a(f1, videoinfo);
        com.androvid.util.a.a(this, f1, null);
    }

    public void g()
    {
    }

    public void h()
    {
        a.f().g();
    }

    public void i()
    {
        com.androvid.util.h.a(this, null, 0);
    }

    public void j()
    {
label0:
        {
            d d1 = a;
            int i1 = d1.o();
            byte byte0 = 6;
            if(i1 == byte0)
            {
                I();
            } else
            {
                byte0 = 17;
                if(i1 == byte0)
                    E();
            }
            byte0 = 7;
            if(i1 != byte0)
            {
                byte0 = 8;
                if(i1 != byte0)
                {
                    byte0 = 10;
                    if(i1 != byte0)
                    {
                        byte0 = 9;
                        if(i1 != byte0)
                        {
                            byte0 = 16;
                            if(i1 == byte0)
                                D();
                            else
                                y();
                            break label0;
                        }
                    }
                }
            }
            d1 = a;
            i1 = d1.p();
            byte0 = 12;
            if(i1 == byte0)
                B();
            else
                y();
        }
    }

    public void k()
    {
        d d1 = a;
        int i1 = d1.o();
        int j1 = 6;
        if(i1 == j1)
            I();
        j1 = 17;
        if(i1 == j1)
        {
            E();
            d d2 = a;
            j1 = d2.p();
            int k1 = 1;
            if(j1 != k1 && j1 != 0)
            {
                a(j1, 0, null);
                return;
            }
        }
        j1 = 16;
        if(i1 == j1)
        {
            D();
            return;
        } else
        {
            y();
            return;
        }
    }

    public void l()
    {
    }

    public d m()
    {
        return a;
    }

    public com.imgvideditor.g n()
    {
        return a;
    }

    public void o()
    {
        Z();
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        char c1 = '\u4E20';
        if(i1 == c1)
        {
            byte byte0 = -1;
            if(j1 == byte0 && intent != null)
            {
                Iterator iterator = intent.getParcelableArrayListExtra("ImagePickerVideos").iterator();
                do
                {
                    boolean flag = iterator.hasNext();
                    if(!flag)
                        break;
                    com.media.video.data.d d1 = com.media.video.data.h.a((VideoInfo)iterator.next());
                    d d2 = a;
                    d2.a(d1);
                } while(true);
            }
        }
        com.util.activity.a.a(this);
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        Object obj = JVM INSTR new #487 <Class StringBuilder>;
        ((StringBuilder) (obj)).StringBuilder();
        ((StringBuilder) (obj)).append("VideoEditorActivity.onBackPressed, current screen: ");
        Object obj1 = com.imgvideditor.k.c(a.o());
        ((StringBuilder) (obj)).append(((String) (obj1)));
        ((StringBuilder) (obj)).append(" inProgress: ");
        obj1 = i;
        byte byte0 = ((AtomicBoolean) (obj1)).get();
        ((StringBuilder) (obj)).append(byte0);
        com.util.i.b(((StringBuilder) (obj)).toString());
        obj = a;
        int j1 = ((d) (obj)).o();
        byte0 = 17;
        if(j1 == byte0)
            E();
        obj = i;
        boolean flag = ((AtomicBoolean) (obj)).get();
        if(flag)
        {
            ac();
        } else
        {
            boolean flag1 = j;
            if(flag1)
            {
                aa();
            } else
            {
                com.videoeditor.a.b b1 = a.G();
                int k1 = b1.e();
                if(k1 == 0)
                {
                    ab();
                } else
                {
                    int i1 = 1;
                    if(k1 == i1)
                        u();
                    else
                        super.onBackPressed();
                }
            }
        }
    }

    public void onClick(View view)
    {
        int i1 = view.getId();
        switch(i1)
        {
        case 2131297116: 
            view = a;
            view.t();
            break;

        case 2131297115: 
            L();
            break;

        case 2131297114: 
            view = a;
            view.u();
            break;

        case 2131297113: 
            onBackPressed();
            break;
        }
    }

    public void onCreate(Bundle bundle)
    {
label0:
        {
label1:
            {
                com.util.i.c("VideoEditorActivity.onCreate");
                super.onCreate(bundle);
                Object obj = com.media.common.p.b.a();
                Object obj1 = "VideoEditorActivity";
                com.media.common.b.a a1 = com.media.common.b.a.a;
                ((com.media.common.p.b) (obj)).a(((String) (obj1)), a1);
                setContentView(0x7f0c00fc);
                obj = findViewById(0x7f090384);
                e = ((View) (obj));
                obj = JVM INSTR new #1052 <Class com.media.common.a.g>;
                byte byte0 = 120;
                ((com.media.common.a.g) (obj)).com.media.common.a.g(byte0);
                f = ((com.media.common.a.g) (obj));
                bundle = com.androvid.util.a.a(this, bundle);
                boolean flag = false;
                obj = null;
                if(bundle != null)
                {
                    byte0 = bundle.d();
                    if(!byte0)
                    {
                        obj1 = JVM INSTR new #1061 <Class com.videoeditor.p>;
                        ((com.videoeditor.p) (obj1)).com.videoeditor.p(this, bundle);
                        a = ((d) (obj1));
                        bundle = a;
                        bundle.r();
                        break label1;
                    }
                }
                bundle = getIntent().getStringExtra("SessionKey");
                obj1 = JVM INSTR new #1078 <Class com.media.common.n.b>;
                ((com.media.common.n.b) (obj1)).com.media.common.n.b(this);
                bundle = ((com.media.common.n.b) (obj1)).a(bundle);
                byte0 = ae.a(this, bundle);
                if(!byte0)
                    break label0;
                obj1 = JVM INSTR new #1061 <Class com.videoeditor.p>;
                ((com.videoeditor.p) (obj1)).com.videoeditor.p(this);
                a = ((d) (obj1));
                obj1 = a;
                ((d) (obj1)).a(this, bundle);
            }
            bundle = getIntent();
            Object obj2 = "VideoEditorConfig.Bundle.Key";
            bundle = bundle.getBundleExtra(((String) (obj2)));
            int i1 = 0x7f09035b;
            if(bundle != null)
            {
                Object obj3 = JVM INSTR new #1097 <Class com.videoeditor.a.b$a>;
                ((com.videoeditor.a.b.a) (obj3)).com.videoeditor.a.b.a();
                bundle = ((com.videoeditor.a.b.a) (obj3)).a(this, bundle).a();
                a.a(bundle);
                obj3 = (ImageButton)findViewById(i1);
                if(obj3 != null)
                {
                    int k1 = bundle.f();
                    ((ImageButton) (obj3)).setImageResource(k1);
                }
            } else
            {
                bundle = JVM INSTR new #1001 <Class com.videoeditor.a.b>;
                bundle.com.videoeditor.a.b();
            }
            a.a(this);
            bundle = a;
            int j2 = 1;
            bundle.e(j2);
            boolean flag2 = com.androvid.videokit.o.a();
            if(!flag2)
            {
                bundle = JVM INSTR new #1121 <Class com.imgvideditor.a.a$a>;
                bundle.com.imgvideditor.a.a.a();
                bundle = bundle.c(j2);
                int k2 = com.media.common.d.b.a().c(this);
                bundle = bundle.d(k2);
                String s2 = getString(0x7f11012a);
                bundle = bundle.a(s2).b(j2);
                k2 = 0x7f11012d;
                String s3 = getString(k2);
                bundle = bundle.b(s3).a(j2);
                j2 = com.media.common.d.b.a().f();
                bundle = bundle.a(j2).a();
                a.a(bundle);
                bundle = com.media.common.c.d.a();
                String s1 = getString(k2);
                bundle.a(s1);
                bundle = com.media.common.c.d.a();
                bundle.a(this);
            }
            y();
            findViewById(0x7f090359).setOnClickListener(this);
            int l1 = 0x7f09035c;
            View view = findViewById(l1);
            view.setOnClickListener(this);
            j2 = 0x7f09035a;
            View view1 = findViewById(j2);
            view1.setOnClickListener(this);
            obj2 = findViewById(i1);
            ((View) (obj2)).setOnClickListener(this);
            a(false, l1);
            a(false, j2);
            I();
            bundle = JVM INSTR new #1169 <Class VideoEditorActivity$1>;
            bundle.this. _cls1();
            com.util.h.a(this, bundle);
            l1 = com.androvid.videokit.o.a();
            int j1 = 0x7f090046;
            if(!l1)
            {
                int i2 = 0x7f090040;
                com.media.common.c.a.a(this, i2, j1);
            } else
            {
                com.media.common.c.a.a(this, j1);
            }
            bundle = a.w();
            boolean flag1 = bundle.c();
            if(flag1)
            {
                com.imgvideditor.a.b b1 = JVM INSTR new #546 <Class com.imgvideditor.a.b>;
                b1.com.imgvideditor.a.b();
                l = b1;
                b1 = l;
                bundle = bundle.e();
                b1.a(this, bundle);
            }
            return;
        }
        bundle = getString(0x7f110021);
        Toast.makeText(this, bundle, 0).show();
        finish();
    }

    public void onDestroy()
    {
        com.util.i.c("VideoEditorActivity.onDestroy");
        a.v();
        Object obj = com.media.common.h.c.a();
        ((com.media.common.h.c) (obj)).e();
        boolean flag = com.androvid.videokit.o.a();
        if(!flag)
        {
            int i1 = 0x7f090040;
            com.media.common.c.a.c(this, i1, 0x7f090046);
            obj = com.media.common.c.k.a();
            Object obj1 = null;
            ((com.media.common.c.k) (obj)).a(null);
        }
        obj = com.media.common.p.b.a();
        String s1 = "VideoEditorActivity";
        com.media.common.b.a a1 = com.media.common.b.a.g;
        ((com.media.common.p.b) (obj)).a(s1, a1);
        obj = l;
        if(obj != null)
            ((com.imgvideditor.a.b) (obj)).a();
        super.onDestroy();
    }

    public void onPause()
    {
        com.util.i.c("VideoEditorActivity.onPause");
        super.onPause();
    }

    public void onRestoreInstanceState(Bundle bundle)
    {
        com.util.i.b("VideoEditorActivity.onRestoreInstanceState");
        String s1 = bundle.getString("m_VideoThumbnailPath");
        g = s1;
        super.onRestoreInstanceState(bundle);
    }

    public void onResume()
    {
        com.util.i.c("VideoEditorActivity.onResume");
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        String s1 = g;
        if(s1 != null)
        {
            String s2 = "m_VideoThumbnailPath";
            bundle.putString(s2, s1);
        }
        super.onSaveInstanceState(bundle);
    }

    public void onStart()
    {
        com.util.i.c("VideoEditorActivity.onStart");
        super.onStart();
        com.androvid.a.a.a(this, "VideoEditorActivity");
        com.media.common.c.k.a().a(this);
        a.a(this);
    }

    public void onStop()
    {
        com.util.i.c("VideoEditorActivity.onStop");
        super.onStop();
        a.b(this);
    }

    public void p()
    {
        d d1 = a;
        int i1 = d1.o();
        byte byte1 = 15;
        if(i1 != byte1)
        {
            byte byte0 = 14;
            boolean flag = false;
            a(byte0, 0, null);
        }
    }

    public void q()
    {
        i.set(false);
        j = false;
        Y();
    }

    public void r()
    {
        i.set(false);
        j = false;
    }

    public void s()
    {
        i.set(false);
        j = true;
        ad();
    }

    public void t()
    {
        com.media.common.l.a.a(this, "com.androvid", "AndroVid", "support@androvid.com", "AndroVid");
    }

    public void u()
    {
        String s1 = "VideoEditorActivity.exitWithDoubleBackPress";
        com.util.i.b(s1);
        boolean flag = m;
        if(flag)
        {
            super.onBackPressed();
            return;
        } else
        {
            m = true;
            Toast.makeText(this, 0x7f110040, 0).show();
            Handler handler = JVM INSTR new #1306 <Class Handler>;
            handler.Handler();
            _cls7 _lcls7 = JVM INSTR new #1309 <Class VideoEditorActivity$7>;
            _lcls7.this. _cls7();
            handler.postDelayed(_lcls7, 2000L);
            return;
        }
    }

    public void v()
    {
        a(17, 15, null);
    }

    public void w()
    {
        com.util.i.b("VideoEditorActivity.onVideoSoundSettingsRequested");
        a(18, 15, null);
    }

    private static String b[];
    private static int c[];
    protected d a;
    private final int d = 480;
    private View e;
    private com.media.common.a.g f;
    private String g;
    private VideoInfo h;
    private AtomicBoolean i;
    private boolean j;
    private com.videoeditor.service.e k;
    private com.imgvideditor.a.b l;
    private boolean m;

    static 
    {
        int ai[];
        b = (new String[] {
            "1080p", "720p", "480p", "360p", "240p"
        });
        ai = new int[5];
        ai;
        ai;
        JVM INSTR dup2 ;
        0;
        1080;
        JVM INSTR iastore ;
        1;
        720;
        JVM INSTR iastore ;
        2;
        480;
        JVM INSTR iastore ;
        JVM INSTR dup ;
        3;
        360;
        JVM INSTR iastore ;
        4;
        240;
        JVM INSTR iastore ;
        c = ai;
    }

    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            if(i1 >= 0)
            {
                dialoginterface = com.androvid.videokit.VideoEditorActivity.x();
                int j1 = dialoginterface.length;
                if(i1 < j1)
                {
                    dialoginterface = a;
                    int ai[] = com.androvid.videokit.VideoEditorActivity.x();
                    i1 = ai[i1];
                    dialoginterface.c(i1);
                }
            }
        }

        final VideoEditorActivity a;

        _cls3()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls6
        implements com.imgvideditor.a.b.a
    {

        public void a()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdClosed");
            com.androvid.videokit.VideoEditorActivity.b(a);
        }

        public void b()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdFailed");
            com.androvid.videokit.VideoEditorActivity.c(a);
        }

        public void c()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdShown");
        }

        final VideoEditorActivity a;

        _cls6()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.a.s();
            com.androvid.videokit.VideoEditorActivity.e(a);
        }

        final VideoEditorActivity a;

        _cls8()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.androvid.videokit.VideoEditorActivity.f(a);
        }

        final VideoEditorActivity a;

        _cls9()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            com.androvid.videokit.VideoEditorActivity.g(a).b();
        }

        final VideoEditorActivity a;

        _cls2()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls10
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
        }

        final VideoEditorActivity a;

        _cls10()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls4
        implements com.imgvideditor.a.b.a
    {

        public void a()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdClosed");
            com.androvid.videokit.VideoEditorActivity.a(a);
        }

        public void b()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdFailed");
            com.androvid.videokit.VideoEditorActivity.a(a);
        }

        public void c()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdShown");
        }

        final VideoEditorActivity a;

        _cls4()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls5
        implements com.imgvideditor.a.b.a
    {

        public void a()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdClosed");
        }

        public void b()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdFailed");
        }

        public void c()
        {
            com.util.i.b("VideoEditorActivity.interstitial.onAdShown");
            com.androvid.videokit.VideoEditorActivity.a(a);
        }

        final VideoEditorActivity a;

        _cls5()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls1
        implements com.util.h.a
    {

        public void a(boolean flag)
        {
            com.util.activity.a.a(a);
            a.a.z().b();
        }

        final VideoEditorActivity a;

        _cls1()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }


    private class _cls7
        implements Runnable
    {

        public void run()
        {
            com.androvid.videokit.VideoEditorActivity.a(a, false);
        }

        final VideoEditorActivity a;

        _cls7()
        {
            a = VideoEditorActivity.this;
            super();
        }
    }

}
