// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.androvid.AndrovidApplication;
import com.androvid.d;
import com.androvid.e;
import com.bumptech.glide.load.c.a.f;
import com.bumptech.glide.load.engine.j;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.gui.CircularImageButton;
import com.media.common.l.c;
import com.media.video.c.a;
import com.media.video.data.VideoInfo;
import com.media.video.data.h;
import com.nguyenhoanglam.imagepicker.model.Config;
import com.nguyenhoanglam.imagepicker.ui.videopicker.b;
import com.util.i;
import java.util.ArrayList;

// Referenced classes of package com.androvid.videokit:
//            o

public class HomeActivity extends AppCompatActivity
    implements a
{

    public HomeActivity()
    {
        d = null;
        e = null;
        f = null;
        a = null;
        b = null;
        c = null;
        i = null;
        j = false;
    }

    static View a(HomeActivity homeactivity)
    {
        return homeactivity.i;
    }

    private void a(View view, String s1)
    {
        _cls7 _lcls7 = JVM INSTR new #47  <Class HomeActivity$7>;
        _lcls7.this. _cls7(s1);
        view.setOnTouchListener(_lcls7);
    }

    static void a(HomeActivity homeactivity, int i1)
    {
        homeactivity.d(i1);
    }

    static void a(HomeActivity homeactivity, View view, String s1)
    {
        homeactivity.a(view, s1);
    }

    static void a(HomeActivity homeactivity, String s1)
    {
        homeactivity.a(s1);
    }

    private void a(c c1)
    {
        int i1 = 0x7f090153;
        CircularImageButton circularimagebutton = (CircularImageButton)findViewById(i1);
        long l1 = c1.h;
        long l2 = 5;
        int j1 = l1 != l2;
        if(j1 > 0)
            circularimagebutton.a();
        c1 = JVM INSTR new #84  <Class HomeActivity$11>;
        c1.this. _cls11();
        circularimagebutton.setOnClickListener(c1);
        c1 = getResources().getString(0x7f11003e);
        a(((View) (circularimagebutton)), ((String) (c1)));
    }

    private void a(String s1)
    {
        TextView textview = (TextView)findViewById(0x7f090148);
        AlphaAnimation alphaanimation = b;
        textview.startAnimation(alphaanimation);
        alphaanimation = c;
        textview.startAnimation(alphaanimation);
        textview.setText(s1);
    }

    static boolean a(HomeActivity homeactivity, boolean flag)
    {
        homeactivity.j = flag;
        return flag;
    }

    static b b(HomeActivity homeactivity)
    {
        return homeactivity.g;
    }

    private void b(c c1)
    {
        int i1 = 0x7f090151;
        CircularImageButton circularimagebutton = (CircularImageButton)findViewById(i1);
        long l1 = c1.h;
        long l2 = 5;
        int j1 = l1 != l2;
        if(j1 > 0)
            circularimagebutton.a();
        c1 = JVM INSTR new #121 <Class HomeActivity$3>;
        c1.this. _cls3();
        circularimagebutton.setOnClickListener(c1);
        c1 = getResources().getString(0x7f110029);
        a(circularimagebutton, c1);
    }

    private void d(int i1)
    {
        com.nguyenhoanglam.imagepicker.ui.videopicker.b.c c1 = com.nguyenhoanglam.imagepicker.ui.videopicker.b.a(this).a("#28303b").b("#161d26").c("#FFFFFF").d("#FFFFFF").e("#4CAF50").f("#3a414d").a(false).b(false);
        boolean flag = true;
        c1 = c1.c(flag).d(false);
        String s1 = getString(0x7f11000b);
        c1 = c1.h(s1);
        s1 = getString(0x7f110078);
        c1.g(s1).i("You have reached selection limit").e(false).f(flag).a(i1).a();
    }

    private void h()
    {
        View view = findViewById(0x7f090158);
        Object obj = JVM INSTR new #189 <Class HomeActivity$1>;
        ((_cls1) (obj)).this. _cls1();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100cb);
        a(view, ((String) (obj)));
    }

    private void i()
    {
        View view = findViewById(0x7f090152);
        Object obj = JVM INSTR new #197 <Class HomeActivity$9>;
        ((_cls9) (obj)).this. _cls9();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f110037);
        a(view, ((String) (obj)));
    }

    private void j()
    {
        View view = findViewById(0x7f090155);
        Object obj = JVM INSTR new #204 <Class HomeActivity$10>;
        ((_cls10) (obj)).this. _cls10();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f110068);
        a(view, ((String) (obj)));
    }

    private void k()
    {
        View view = findViewById(0x7f09015b);
        Object obj = JVM INSTR new #211 <Class HomeActivity$12>;
        ((_cls12) (obj)).this. _cls12();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100e0);
        a(view, ((String) (obj)));
    }

    private void l()
    {
        View view = findViewById(0x7f09015a);
        Object obj = JVM INSTR new #218 <Class HomeActivity$13>;
        ((_cls13) (obj)).this. _cls13();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100dd);
        a(view, ((String) (obj)));
    }

    private void m()
    {
        View view = findViewById(0x7f090156);
        Object obj = JVM INSTR new #225 <Class HomeActivity$14>;
        ((_cls14) (obj)).this. _cls14();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100a2);
        a(view, ((String) (obj)));
    }

    private void n()
    {
        View view = findViewById(0x7f090154);
        Object obj = JVM INSTR new #232 <Class HomeActivity$15>;
        ((_cls15) (obj)).this. _cls15();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f110054);
        a(view, ((String) (obj)));
    }

    private void o()
    {
        View view = findViewById(0x7f090150);
        Object obj = JVM INSTR new #239 <Class HomeActivity$16>;
        ((_cls16) (obj)).this. _cls16();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f110001);
        a(view, ((String) (obj)));
    }

    private void p()
    {
        View view = findViewById(0x7f090159);
        Object obj = JVM INSTR new #246 <Class HomeActivity$2>;
        ((_cls2) (obj)).this. _cls2();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100db);
        a(view, ((String) (obj)));
    }

    private void q()
    {
        View view = findViewById(0x7f090157);
        Object obj = JVM INSTR new #253 <Class HomeActivity$4>;
        ((_cls4) (obj)).this. _cls4();
        view.setOnClickListener(((android.view.View.OnClickListener) (obj)));
        obj = getResources().getString(0x7f1100c6);
        a(view, ((String) (obj)));
    }

    private void r()
    {
        View view = findViewById(0x7f09015c);
        _cls5 _lcls5 = JVM INSTR new #260 <Class HomeActivity$5>;
        _lcls5.this. _cls5();
        view.setOnClickListener(_lcls5);
    }

    private void s()
    {
        View view = findViewById(0x7f09015e);
        _cls6 _lcls6 = JVM INSTR new #265 <Class HomeActivity$6>;
        _lcls6.this. _cls6();
        view.setOnClickListener(_lcls6);
    }

    private void t()
    {
        AlphaAnimation alphaanimation = JVM INSTR new #268 <Class AlphaAnimation>;
        float f1 = 1F;
        alphaanimation.AlphaAnimation(0.0F, f1);
        b = alphaanimation;
        alphaanimation = JVM INSTR new #268 <Class AlphaAnimation>;
        alphaanimation.AlphaAnimation(f1, 0.0F);
        c = alphaanimation;
        b.setDuration(300L);
        alphaanimation = b;
        boolean flag = true;
        alphaanimation.setFillAfter(flag);
        c.setDuration(500L);
        c.setFillAfter(flag);
        alphaanimation = c;
        long l1 = b.getStartOffset() + 400L;
        alphaanimation.setStartOffset(l1);
    }

    private void u()
    {
        Object obj = com.media.video.c.b.a();
        boolean flag = true;
        obj = ((com.media.video.c.b) (obj)).a(0, flag);
        d = ((VideoInfo) (obj));
        obj = com.media.video.c.b.a().a(flag, flag);
        e = ((VideoInfo) (obj));
        obj = com.media.video.c.b.a().a(2, flag);
        f = ((VideoInfo) (obj));
        int i1 = 0x7f090149;
        obj = (ImageView)findViewById(i1);
        int j1 = 0x7f09014b;
        ImageView imageview = (ImageView)findViewById(j1);
        int k1 = 0x7f09014d;
        ImageView imageview1 = (ImageView)findViewById(k1);
        int l1 = 0x7f09014a;
        FrameLayout framelayout = (FrameLayout)findViewById(l1);
        int i2 = 0x7f09014c;
        FrameLayout framelayout1 = (FrameLayout)findViewById(i2);
        int j2 = 0x7f09014e;
        FrameLayout framelayout2 = (FrameLayout)findViewById(j2);
        Object obj1 = a;
        ((ImageView) (obj)).startAnimation(((Animation) (obj1)));
        obj1 = a;
        imageview.startAnimation(((Animation) (obj1)));
        obj1 = a;
        imageview1.startAnimation(((Animation) (obj1)));
        obj1 = d;
        int k2 = 0x7f080072;
        Object obj3 = null;
        if(obj1 != null)
        {
            obj1 = com.androvid.b.a(this).a();
            Object obj5 = d.h;
            obj1 = ((d) (obj1)).a(((Uri) (obj5)));
            obj5 = j.b;
            obj1 = ((d) (obj1)).a(((j) (obj5))).b(flag).c();
            obj5 = com.bumptech.glide.load.c.a.f.c();
            obj1 = ((d) (obj1)).a(((com.bumptech.glide.l) (obj5))).b(k2);
            ((d) (obj1)).a(((ImageView) (obj)));
        } else
        {
            ((ImageView) (obj)).setImageBitmap(null);
        }
        obj1 = e;
        if(obj1 != null)
        {
            obj1 = com.androvid.b.a(this).a();
            Object obj6 = e.h;
            obj1 = ((d) (obj1)).a(((Uri) (obj6)));
            obj6 = j.b;
            obj1 = ((d) (obj1)).a(((j) (obj6))).b(flag).c();
            obj6 = com.bumptech.glide.load.c.a.f.c();
            obj1 = ((d) (obj1)).a(((com.bumptech.glide.l) (obj6))).b(k2);
            ((d) (obj1)).a(imageview);
        } else
        {
            imageview.setImageBitmap(null);
        }
        obj1 = f;
        if(obj1 != null)
        {
            Object obj2 = com.androvid.b.a(this).a();
            Object obj4 = f.h;
            obj2 = ((d) (obj2)).a(((Uri) (obj4)));
            obj4 = j.b;
            d d1 = ((d) (obj2)).a(((j) (obj4))).b(flag).c();
            obj2 = com.bumptech.glide.load.c.a.f.c();
            d1 = d1.a(((com.bumptech.glide.l) (obj2))).b(k2);
            d1.a(imageview1);
        } else
        {
            imageview1.setImageBitmap(null);
        }
        g.a();
        VideoInfo videoinfo = d;
        if(videoinfo != null)
        {
            b b1 = g;
            b1.a(videoinfo, framelayout, ((ImageView) (obj)));
        }
        obj = e;
        if(obj != null)
        {
            b b2 = g;
            b2.a(((VideoInfo) (obj)), framelayout1, imageview);
        }
        obj = f;
        if(obj != null)
        {
            b b3 = g;
            b3.a(((VideoInfo) (obj)), framelayout2, imageview1);
        }
    }

    private void v()
    {
        Object obj = com.androvid.a.a();
        Object obj2 = getApplication();
        android.content.Context context = getApplicationContext();
        ((com.androvid.a) (obj)).a(((android.app.Application) (obj2)), context);
        com.media.video.c.b.a().a(this);
        obj = com.media.video.c.b.a();
        obj2 = "datetaken";
        ((com.media.video.c.b) (obj)).b(((String) (obj2)));
        obj = com.media.video.c.b.a();
        ((com.media.video.c.b) (obj)).c();
        Object obj1;
        Object obj3;
        obj1 = getPackageManager();
        obj3 = "com.androvid";
        obj1;
        obj3;
        getInstallerPackageName();
        obj1;
        obj3 = i.a;
        Object obj4 = JVM INSTR new #429 <Class StringBuilder>;
        ((StringBuilder) (obj4)).StringBuilder();
        String s1 = "HomeActivity.initApplication, INSTALLER :";
        obj4;
        s1;
        append();
        JVM INSTR pop ;
        obj4;
        obj1;
        append();
        JVM INSTR pop ;
        obj1 = ((StringBuilder) (obj4)).toString();
        obj3;
        obj1;
        Log.i();
        JVM INSTR pop ;
        obj1 = PreferenceManager.getDefaultSharedPreferences(this);
        obj3 = AndrovidApplication.a();
        boolean flag;
        obj3 = GoogleAnalytics.a(((android.content.Context) (obj3)));
        obj4 = "pref.analytics";
        flag = true;
        obj1;
        obj4;
        flag;
        getBoolean();
        boolean flag1;
        flag1;
        obj3;
        flag1;
        b();
        break MISSING_BLOCK_LABEL_150;
        Exception exception;
        exception;
        com.util.e.a(exception);
        com.androvid.a.a.a(this, "HomeActivity");
        AndrovidApplication.b().a();
        return;
    }

    public void a(VideoInfo videoinfo)
    {
        u();
    }

    public void b(int i1)
    {
    }

    public void b(VideoInfo videoinfo)
    {
    }

    public void c(int i1)
    {
        g.a(i1);
    }

    public void g()
    {
        u();
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            boolean flag = false;
            Object obj = null;
            if(intent != null)
            {
                Uri uri1 = intent.getData();
                if(uri1 != null)
                {
                    char c1 = '\u014D';
                    if(i1 == c1)
                    {
                        com.media.video.c.b b2 = com.media.video.c.b.a();
                        Uri uri3 = intent.getData();
                        VideoInfo videoinfo = b2.a(uri3, false);
                        if(videoinfo != null)
                        {
                            com.androvid.util.a.f(this, videoinfo);
                        } else
                        {
                            com.media.video.c.b b1 = com.media.video.c.b.a();
                            Uri uri2 = intent.getData();
                            boolean flag1 = b1.a(uri2);
                            if(flag1)
                            {
                                com.media.common.e.f f1 = com.media.common.e.f.b(intent.getData());
                                boolean flag2 = false;
                                Object obj1 = null;
                                com.androvid.util.a.a(this, f1, null);
                            } else
                            {
                                Uri uri = intent.getData();
                                Object obj2 = JVM INSTR new #429 <Class StringBuilder>;
                                ((StringBuilder) (obj2)).StringBuilder();
                                ((StringBuilder) (obj2)).append("file://");
                                java.io.File file = Environment.getExternalStorageDirectory();
                                ((StringBuilder) (obj2)).append(file);
                                obj2 = Uri.parse(((StringBuilder) (obj2)).toString());
                                com.androvid.util.a.a(this, uri, ((Uri) (obj2)));
                            }
                        }
                        break label0;
                    }
                }
            }
            char c2 = '\u4E20';
            if(i1 == c2)
            {
                byte byte0 = -1;
                if(j1 == byte0 && intent != null)
                {
                    ArrayList arraylist = intent.getParcelableArrayListExtra("ImagePickerVideos");
                    Config config = (Config)intent.getParcelableExtra("ImagePickerConfig");
                    com.media.video.data.c c3 = com.media.video.data.h.a(arraylist);
                    VideoInfo videoinfo1 = (VideoInfo)arraylist.get(0);
                    int k1 = config.a();
                    char c4 = '\u015F';
                    if(k1 == c4)
                    {
                        com.androvid.util.a.b(this, c3);
                    } else
                    {
                        int l1 = config.a();
                        char c5 = '\u0159';
                        if(l1 == c5)
                        {
                            com.androvid.util.a.h(this, videoinfo1);
                        } else
                        {
                            int i2 = config.a();
                            char c6 = '\u015A';
                            if(i2 == c6)
                            {
                                com.androvid.util.a.e(this, videoinfo1);
                            } else
                            {
                                int j2 = config.a();
                                char c7 = '\u0151';
                                if(j2 == c7)
                                {
                                    com.androvid.util.a.k(this, videoinfo1);
                                } else
                                {
                                    int k2 = config.a();
                                    char c8 = '\u0154';
                                    if(k2 == c8)
                                    {
                                        com.androvid.util.a.i(this, videoinfo1);
                                    } else
                                    {
                                        int l2 = config.a();
                                        char c9 = '\u0152';
                                        if(l2 == c9)
                                        {
                                            com.androvid.util.a.j(this, videoinfo1);
                                        } else
                                        {
                                            int i3 = config.a();
                                            char c10 = '\u0155';
                                            if(i3 == c10)
                                                com.androvid.util.a.d(this, videoinfo1);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        String s1 = "HomeActivity.onBackPressed";
        com.util.i.b(s1);
        boolean flag = j;
        if(flag)
        {
            super.onBackPressed();
            return;
        } else
        {
            j = true;
            Toast.makeText(this, 0x7f110040, 0).show();
            Handler handler = JVM INSTR new #613 <Class Handler>;
            handler.Handler();
            _cls8 _lcls8 = JVM INSTR new #616 <Class HomeActivity$8>;
            _lcls8.this. _cls8();
            handler.postDelayed(_lcls8, 2000L);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        int i1 = 0x7f120006;
        setTheme(i1);
        super.onCreate(bundle);
        bundle = com.media.common.p.b.a();
        Object obj = "HomeActivity";
        Object obj1 = com.media.common.b.a.a;
        bundle.a(((String) (obj)), ((com.media.common.b.a) (obj1)));
        setContentView(0x7f0c0023);
        int k1 = 0x7f09021b;
        bundle = (Toolbar)findViewById(k1);
        if(bundle != null)
        {
            obj = "";
            bundle.setTitle(((CharSequence) (obj)));
            a(bundle);
        }
        obj = findViewById(0x7f09014f);
        i = ((View) (obj));
        com.gui.b.a(this);
        obj = JVM INSTR new #381 <Class HomeActivity$b>;
        ((b) (obj)).this. b(this);
        g = ((b) (obj));
        t();
        i1 = 0x7f01001c;
        obj = AnimationUtils.loadAnimation(this, i1);
        a = ((Animation) (obj));
        obj = h;
        if(obj == null)
        {
            obj = getAssets();
            obj1 = "fonts/FredokaOne.ttf";
            obj = Typeface.createFromAsset(((android.content.res.AssetManager) (obj)), ((String) (obj1)));
            h = ((Typeface) (obj));
        }
        obj = (TextView)findViewById(0x7f090145);
        obj1 = h;
        ((TextView) (obj)).setTypeface(((Typeface) (obj1)));
        boolean flag = com.androvid.videokit.o.a();
        if(flag)
        {
            flag = 0x7f090147;
            TextView textview = (TextView)findViewById(flag);
            textview.setVisibility(0);
            Typeface typeface = h;
            textview.setTypeface(typeface);
        }
        r();
        s();
        flag = com.androvid.videokit.o.a();
        if(!flag)
            break MISSING_BLOCK_LABEL_286;
        com.androvid.util.a.j(this);
        break MISSING_BLOCK_LABEL_286;
        Exception exception;
        exception;
        Object obj2 = JVM INSTR new #429 <Class StringBuilder>;
        ((StringBuilder) (obj2)).StringBuilder();
        ((StringBuilder) (obj2)).append("HomeActivity.initApplication, exception: ");
        String s1 = exception.toString();
        ((StringBuilder) (obj2)).append(s1);
        obj2 = ((StringBuilder) (obj2)).toString();
        com.util.i.e(((String) (obj2)));
        com.util.e.a(exception);
        c c1 = com.media.common.l.d.a().b(this);
        a(c1);
        k();
        b(c1);
        l();
        n();
        m();
        j();
        o();
        p();
        h();
        i();
        q();
        bundle = com.androvid.util.e.a(this, bundle, 3);
        k = bundle;
        bundle = k.a();
        int j1 = androidx.core.content.a.c(this, 0x7f06004c);
        bundle.setStatusBarBackgroundColor(j1);
        boolean flag1 = com.androvid.videokit.o.a();
        j1 = 0x7f090046;
        if(!flag1)
        {
            int l1 = 0x7f090040;
            com.media.common.c.a.a(this, l1, j1);
        } else
        {
            com.media.common.c.a.a(this, j1);
        }
        return;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        com.util.i.b("HomeActivity.onCreateOptionsMenu");
        MenuInflater menuinflater = getMenuInflater();
        boolean flag = com.androvid.videokit.o.a();
        int j1 = 0x7f0d0009;
        if(!flag)
        {
            com.media.common.d.b b1 = com.media.common.d.b.a();
            boolean flag1 = b1.d(this);
            if(flag1)
            {
                int i1 = 0x7f0d0008;
                menuinflater.inflate(i1, menu);
            } else
            {
                menuinflater.inflate(j1, menu);
            }
        } else
        {
            menuinflater.inflate(j1, menu);
        }
        return true;
    }

    protected void onDestroy()
    {
        com.util.i.c("HomeActivity.onDestroy");
        Object obj = com.androvid.a.a();
        ((com.androvid.a) (obj)).b();
        boolean flag = com.androvid.videokit.o.a();
        if(!flag)
        {
            int i1 = 0x7f090040;
            int j1 = 0x7f090046;
            com.media.common.c.a.c(this, i1, j1);
        }
        com.media.common.h.c.a().e();
        obj = com.media.common.p.b.a();
        com.media.common.b.a a1 = com.media.common.b.a.g;
        ((com.media.common.p.b) (obj)).a("HomeActivity", a1);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        Object obj = JVM INSTR new #429 <Class StringBuilder>;
        ((StringBuilder) (obj)).StringBuilder();
        String s1 = "HomeActivity.onOptionsItemSelected: ";
        ((StringBuilder) (obj)).append(s1);
        int i1 = menuitem.getItemId();
        ((StringBuilder) (obj)).append(i1);
        obj = ((StringBuilder) (obj)).toString();
        com.util.i.b(((String) (obj)));
        int k1 = menuitem.getItemId();
        i1 = 0x7f090258;
        if(k1 != i1)
        {
            int j1 = 0x7f090275;
            if(k1 != j1)
                return super.onOptionsItemSelected(menuitem);
            com.androvid.util.a.b(this);
        } else
        {
            com.androvid.util.a.k(this);
        }
        return super.onOptionsItemSelected(menuitem);
    }

    protected void onPostResume()
    {
        com.util.i.b("HomeActivity.onPostResume");
        super.onPostResume();
    }

    public void onRequestPermissionsResult(int i1, String as[], int ai[])
    {
        String s1 = "HomeActivity.onRequestPermissionsResult";
        com.util.i.b(s1);
        int j1 = 0x7f110141;
        byte byte0 = 100;
        if(i1 == byte0)
        {
            View view = i;
            String s2 = getString(j1);
            i1 = com.media.common.p.e.a(this, view, i1, as, ai, s2);
            if(i1 != 0)
                v();
        } else
        {
            char c1 = '\u012C';
            if(i1 == c1)
            {
                View view1 = i;
                String s3 = getString(j1);
                com.media.common.p.e.b(this, view1, i1, as, ai, s3);
            } else
            {
                super.onRequestPermissionsResult(i1, as, ai);
            }
        }
    }

    protected void onStart()
    {
        Object obj = "HomeActivity.onStart";
        com.util.i.c(((String) (obj)));
        boolean flag = com.media.common.p.e.a(this);
        if(flag)
        {
            obj = "Storage permissions have already been granted. Init application!";
            com.util.i.c(((String) (obj)));
            v();
        } else
        {
            com.util.i.c("Storage permissions has NOT been granted. Requesting permissions.");
            obj = i;
            int i1 = 0x7f110141;
            String s1 = getString(i1);
            com.media.common.p.e.a(this, ((View) (obj)), s1);
        }
        super.onStart();
        obj = k;
        if(obj != null)
        {
            long l1 = 3;
            ((com.mikepenz.materialdrawer.c) (obj)).a(l1, false);
        }
    }

    protected void onStop()
    {
        com.util.i.c("HomeActivity.onStop");
        com.media.video.c.b.a().b(this);
        super.onStop();
    }

    private static Typeface h;
    Animation a;
    AlphaAnimation b;
    AlphaAnimation c;
    private VideoInfo d;
    private VideoInfo e;
    private VideoInfo f;
    private b g;
    private View i;
    private boolean j;
    private com.mikepenz.materialdrawer.c k;


    private class _cls7
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            int i1 = motionevent.getAction();
            if(i1 == 0)
            {
                view = b;
                motionevent = a;
                com.androvid.videokit.HomeActivity.a(view, motionevent);
            }
            return false;
        }

        final String a;
        final HomeActivity b;

        _cls7(String s1)
        {
            b = HomeActivity.this;
            a = s1;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = JVM INSTR new #45  <Class Intent>;
                view.Intent();
                HomeActivity homeactivity = a;
                Class class1 = com/androvid/videokit/VideoEditorProjectSelectionActivity;
                view.setClass(homeactivity, class1);
                homeactivity = a;
                homeactivity.startActivity(view);
            } else
            {
                HomeActivity homeactivity1 = a;
                com.androvid.util.a.f(homeactivity1, view);
            }
        }

        final HomeActivity a;

        _cls11()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u015F';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.g(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls3()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            } else
            {
                view = JVM INSTR new #35  <Class Intent>;
                view.Intent();
                HomeActivity homeactivity = a;
                view.setClass(homeactivity, com/androvid/videokit/SlideMakerActivity);
                a.startActivity(view);
                return;
            }
        }

        final HomeActivity a;

        _cls1()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u015B';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.l(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls9()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = JVM INSTR new #45  <Class Intent>;
                view.Intent();
                HomeActivity homeactivity = a;
                Class class1 = com/androvid/videokit/VideoJoinerActivity;
                view.setClass(homeactivity, class1);
                homeactivity = a;
                homeactivity.startActivity(view);
            } else
            {
                HomeActivity homeactivity1 = a;
                com.androvid.util.a.a(homeactivity1, view);
            }
        }

        final HomeActivity a;

        _cls10()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u0154';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.i(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls12()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls13
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u0151';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.k(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls13()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls14
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u015A';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.e(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls14()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls15
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u0152';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.j(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls15()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls16
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u0155';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.d(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls16()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = com.androvid.videokit.HomeActivity.b(a).c();
            if(view == null)
            {
                view = a;
                char c1 = '\u0159';
                com.androvid.videokit.HomeActivity.a(view, c1);
            } else
            {
                HomeActivity homeactivity = a;
                com.androvid.util.a.h(homeactivity, view);
            }
        }

        final HomeActivity a;

        _cls2()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            int i1 = 0x7f110141;
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(i1);
                com.media.common.p.e.a(view, view1, s1);
                return;
            }
            view = a;
            flag = com.media.common.p.e.b(view);
            if(!flag)
            {
                view = a;
                View view2 = com.androvid.videokit.HomeActivity.a(view);
                String s2 = a.getString(i1);
                com.media.common.p.e.b(view, view2, s2);
                return;
            } else
            {
                com.androvid.util.a.a(a);
                return;
            }
        }

        final HomeActivity a;

        _cls4()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.util.c.a("HomeActivity.videos.onclick-Start");
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            } else
            {
                com.util.c.a("HomeActivity.videos.onclick-Mid");
                com.media.video.c.b.a().b();
                view = JVM INSTR new #52  <Class Intent>;
                view.Intent();
                HomeActivity homeactivity = a;
                view.setClass(homeactivity, com/androvid/videokit/VideoListActivity);
                a.startActivity(view);
                com.util.c.a("HomeActivity.videos.onclick-End");
                return;
            }
        }

        final HomeActivity a;

        _cls5()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            boolean flag = com.media.common.p.e.a(view);
            if(!flag)
            {
                view = a;
                View view1 = com.androvid.videokit.HomeActivity.a(view);
                String s1 = a.getString(0x7f110141);
                com.media.common.p.e.a(view, view1, s1);
                return;
            } else
            {
                view = JVM INSTR new #35  <Class Intent>;
                view.Intent();
                HomeActivity homeactivity = a;
                view.setClass(homeactivity, com/androvid/videokit/ImageListActivity);
                a.startActivity(view);
                return;
            }
        }

        final HomeActivity a;

        _cls6()
        {
            a = HomeActivity.this;
            super();
        }
    }


    private class b
    {

        static Activity a(b b1)
        {
            return b1.c;
        }

        private void a(a a1)
        {
            boolean flag = true;
            a1.d = flag;
            FrameLayout framelayout = a1.b;
            if(framelayout != null)
            {
                a1 = a1.b;
                Object obj = b;
                int i1 = 0x7f080066;
                obj = androidx.core.content.a.a(((android.content.Context) (obj)), i1);
                a1.setForeground(((android.graphics.drawable.Drawable) (obj)));
            }
        }

        static boolean a(b b1, VideoInfo videoinfo)
        {
            return b1.a(videoinfo);
        }

        private boolean a(VideoInfo videoinfo)
        {
            boolean flag = false;
            int i1 = 0;
            do
            {
                Object obj = a;
                int j1 = ((Vector) (obj)).size();
                if(i1 >= j1)
                    break;
                obj = ((a)a.elementAt(i1)).a;
                if(obj == videoinfo)
                {
                    a a1 = (a)a.elementAt(i1);
                    boolean flag1 = a1.d;
                    if(flag1)
                    {
                        flag = true;
                        break;
                    }
                }
                i1++;
            } while(true);
            return flag;
        }

        private void b(a a1)
        {
            a1.d = false;
            FrameLayout framelayout = a1.b;
            if(framelayout != null)
            {
                a1 = a1.b;
                Object obj = null;
                a1.setForeground(null);
            }
        }

        static void b(b b1, VideoInfo videoinfo)
        {
            b1.b(videoinfo);
        }

        private void b(VideoInfo videoinfo)
        {
            int i1 = 0;
            do
            {
                Vector vector = a;
                int j1 = vector.size();
                if(i1 < j1)
                {
                    VideoInfo videoinfo1 = ((a)a.elementAt(i1)).a;
                    if(videoinfo1 == videoinfo)
                    {
                        a a1 = (a)a.elementAt(i1);
                        a(a1);
                    }
                    i1++;
                } else
                {
                    return;
                }
            } while(true);
        }

        public void a()
        {
            b();
            a.clear();
        }

        public void a(int i1)
        {
            int j1 = 0;
            do
            {
                Vector vector = a;
                int k1 = vector.size();
                if(j1 < k1)
                {
                    VideoInfo videoinfo = ((a)a.elementAt(j1)).a;
                    int l1 = videoinfo.a;
                    if(l1 == i1)
                    {
                        ((a)a.elementAt(j1)).c.setImageBitmap(null);
                        FrameLayout framelayout = ((a)a.elementAt(j1)).b;
                        framelayout.requestLayout();
                    }
                    j1++;
                } else
                {
                    return;
                }
            } while(true);
        }

        public void a(VideoInfo videoinfo, FrameLayout framelayout, ImageView imageview)
        {
            if(videoinfo == null)
            {
                return;
            } else
            {
                Object obj = JVM INSTR new #29  <Class HomeActivity$a>;
                HomeActivity homeactivity = b;
                ((a) (obj)).homeactivity. a();
                obj.d = false;
                obj.a = videoinfo;
                obj.b = framelayout;
                obj.c = imageview;
                a.add(obj);
                framelayout = b;
                obj = videoinfo.e;
                com.androvid.videokit.HomeActivity.a(framelayout, imageview, ((String) (obj)));
                class _cls1
                    implements android.view.View.OnLongClickListener
                {

                    public boolean onLongClick(View view)
                    {
                        Object obj1 = b.b;
                        boolean flag = com.media.common.p.e.a(((Activity) (obj1)));
                        boolean flag2 = true;
                        if(!flag)
                        {
                            view = b.b;
                            obj1 = com.androvid.videokit.HomeActivity.a(b.b);
                            String s1 = b.b.getString(0x7f110141);
                            com.media.common.p.e.a(view, ((View) (obj1)), s1);
                            return flag2;
                        }
                        obj1 = b;
                        VideoInfo videoinfo2 = a;
                        flag = com.androvid.videokit.b.a(((b) (obj1)), videoinfo2);
                        if(!flag)
                        {
                            boolean flag1 = false;
                            view.performHapticFeedback(0, 2);
                            b.b();
                            view = b;
                            VideoInfo videoinfo1 = a;
                            com.androvid.videokit.b.b(view, videoinfo1);
                            view = com.media.video.a.a.b();
                            videoinfo1 = a;
                            Object obj2 = null;
                            view.a(videoinfo1, null);
                        }
                        return flag2;
                    }

                    final VideoInfo a;
                    final b b;

                _cls1(VideoInfo videoinfo)
                {
                    b = b.this;
                    a = videoinfo;
                    super();
                }
                }

                framelayout = JVM INSTR new #109 <Class HomeActivity$b$1>;
                framelayout.this. _cls1(videoinfo);
                imageview.setOnLongClickListener(framelayout);
                class _cls2
                    implements android.view.View.OnClickListener
                {

                    public void onClick(View view)
                    {
                        Object obj1 = b.b;
                        boolean flag = com.media.common.p.e.a(((Activity) (obj1)));
                        if(!flag)
                        {
                            view = b.b;
                            obj1 = com.androvid.videokit.HomeActivity.a(b.b);
                            String s1 = b.b.getString(0x7f110141);
                            com.media.common.p.e.a(view, ((View) (obj1)), s1);
                            return;
                        }
                        obj1 = b.c();
                        if(obj1 == null)
                        {
                            Object obj2 = com.media.video.c.b.a();
                            Object obj3 = a;
                            ((com.media.video.c.b) (obj2)).b(((VideoInfo) (obj3)));
                            obj2 = com.androvid.videokit.b.a(b);
                            obj3 = com.media.common.e.f.a(a);
                            view = com.androvid.util.a.a(null, view);
                            com.androvid.util.a.a(((Activity) (obj2)), ((com.media.common.e.f) (obj3)), view);
                        } else
                        {
                            view = b;
                            view.b();
                        }
                    }

                    final VideoInfo a;
                    final b b;

                _cls2(VideoInfo videoinfo)
                {
                    b = b.this;
                    a = videoinfo;
                    super();
                }
                }

                framelayout = JVM INSTR new #118 <Class HomeActivity$b$2>;
                framelayout.this. _cls2(videoinfo);
                imageview.setOnClickListener(framelayout);
                return;
            }
        }

        public void b()
        {
            int i1 = 0;
            do
            {
                Vector vector = a;
                int j1 = vector.size();
                if(i1 < j1)
                {
                    a a1 = (a)a.elementAt(i1);
                    b(a1);
                    i1++;
                } else
                {
                    return;
                }
            } while(true);
        }

        public VideoInfo c()
        {
            VideoInfo videoinfo;
label0:
            {
                int i1 = 0;
                videoinfo = null;
                do
                {
                    Object obj = a;
                    int j1 = ((Vector) (obj)).size();
                    if(i1 >= j1)
                        break;
                    obj = (a)a.elementAt(i1);
                    boolean flag = ((a) (obj)).d;
                    if(flag)
                    {
                        Vector vector = a;
                        videoinfo = ((a)vector.elementAt(i1)).a;
                        break label0;
                    }
                    i1++;
                } while(true);
                i1 = 0;
                videoinfo = null;
            }
            return videoinfo;
        }

        Vector a;
        final HomeActivity b;
        private Activity c;

        public b(Activity activity)
        {
            b = HomeActivity.this;
            super();
            c = null;
            c = activity;
            homeactivity = JVM INSTR new #20  <Class Vector>;
            super(3);
            a = HomeActivity.this;
        }

        private class a
        {

            public VideoInfo a;
            public FrameLayout b;
            public ImageView c;
            boolean d;
            final HomeActivity e;

            a()
            {
                e = HomeActivity.this;
                super();
            }
        }

    }


    private class _cls8
        implements Runnable
    {

        public void run()
        {
            com.androvid.videokit.HomeActivity.a(a, false);
        }

        final HomeActivity a;

        _cls8()
        {
            a = HomeActivity.this;
            super();
        }
    }

}
