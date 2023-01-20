// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.androvid.AndrovidApplication;
import com.androvid.exp.AndrovidFailException;
import com.androvid.util.h;
import com.google.android.gms.ads.AdView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.gui.a.f;
import com.media.common.a.l;
import com.media.common.p.e;
import com.media.common.scan.a;
import com.media.common.scan.c;
import com.media.video.data.VideoInfo;
import com.media.video.data.g;
import com.util.i;
import com.util.j;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.androvid.videokit:
//            f, b, s, o, 
//            v, VideoPlayerMenuActivity

public class VideoListActivity extends AppCompatActivity
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, com.androvid.videokit.f, s.a, com.gui.a.f.a, com.gui.i.b, a, com.media.common.scan.b.b, com.media.video.c.a
{

    public VideoListActivity()
    {
        f = null;
        b.a a1 = com.androvid.videokit.b.a.a;
        g = a1;
        a = null;
        b = null;
        c = false;
        d = false;
        h = null;
        i = false;
        j = 0;
        k = 4;
    }

    static b a(VideoListActivity videolistactivity)
    {
        return videolistactivity.h;
    }

    static b a(VideoListActivity videolistactivity, b b1)
    {
        videolistactivity.h = b1;
        return b1;
    }

    private void a(Activity activity, g g1, androidx.d.a.a a1)
    {
        g1 = g1.a().iterator();
        do
        {
            boolean flag = g1.hasNext();
            if(!flag)
                break;
            Object obj = (VideoInfo)g1.next();
            Object obj1 = ((VideoInfo) (obj)).c;
            obj1 = com.media.common.h.a.a(activity, ((String) (obj1)), a1);
            if(obj1 != null)
            {
                obj1 = com.util.j.a(activity, ((Uri) (obj1)));
                boolean flag1 = com.media.common.h.a.e(((String) (obj1)));
                if(flag1)
                {
                    String s1 = ((VideoInfo) (obj)).c;
                    boolean flag2 = ((String) (obj1)).equals(s1);
                    if(!flag2)
                    {
                        Object obj2 = JVM INSTR new #119 <Class StringBuilder>;
                        ((StringBuilder) (obj2)).StringBuilder();
                        ((StringBuilder) (obj2)).append("VideoListActivity.moveSelectedFilesToSdCard, COPY SUCCESS: ");
                        Object obj3 = ((VideoInfo) (obj)).c;
                        ((StringBuilder) (obj2)).append(((String) (obj3)));
                        ((StringBuilder) (obj2)).append(" Result Path: ");
                        ((StringBuilder) (obj2)).append(((String) (obj1)));
                        com.util.i.c(((StringBuilder) (obj2)).toString());
                        obj2 = JVM INSTR new #139 <Class c>;
                        obj3 = AndrovidApplication.a();
                        ((c) (obj2)).c(((android.content.Context) (obj3)));
                        obj3 = JVM INSTR new #149 <Class VideoListActivity$5>;
                        ((_cls5) (obj3)).this. _cls5(((VideoInfo) (obj)));
                        ((c) (obj2)).a(((a) (obj3)));
                        ((c) (obj2)).a(((String) (obj1)));
                        continue;
                    }
                }
                StringBuilder stringbuilder1 = JVM INSTR new #119 <Class StringBuilder>;
                stringbuilder1.StringBuilder();
                String s3 = "VideoListActivity.moveSelectedFilesToSdCard, FAILED: ";
                stringbuilder1.append(s3);
                obj = ((VideoInfo) (obj)).c;
                stringbuilder1.append(((String) (obj)));
                stringbuilder1.append(" Result Path: ");
                stringbuilder1.append(((String) (obj1)));
                obj = stringbuilder1.toString();
                com.util.i.e(((String) (obj)));
            } else
            {
                StringBuilder stringbuilder = JVM INSTR new #119 <Class StringBuilder>;
                stringbuilder.StringBuilder();
                String s2 = "RecycleManager.restoreFiles, restore FAILED: ";
                stringbuilder.append(s2);
                obj = ((VideoInfo) (obj)).c;
                stringbuilder.append(((String) (obj)));
                obj = stringbuilder.toString();
                com.util.i.e(((String) (obj)));
            }
        } while(true);
    }

    private void a(boolean flag)
    {
        Object obj;
        if(!flag)
            break MISSING_BLOCK_LABEL_55;
        obj = h;
        if(obj == null)
        {
            obj = JVM INSTR new #165 <Class VideoListActivity$a>;
            ((a) (obj)).this. a(null);
            obj = b(((androidx.appcompat.view.b.a) (obj)));
            h = ((b) (obj));
            break MISSING_BLOCK_LABEL_73;
        }
        ((b) (obj)).d();
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        obj = exception.toString();
        com.util.i.e(((String) (obj)));
        break MISSING_BLOCK_LABEL_73;
        b b1 = h;
        if(b1 != null)
        {
            b1.c();
            h = null;
        }
    }

    static boolean a(VideoListActivity videolistactivity, boolean flag)
    {
        videolistactivity.i = flag;
        return flag;
    }

    static void b(VideoListActivity videolistactivity)
    {
        videolistactivity.o();
    }

    static void c(VideoListActivity videolistactivity)
    {
        videolistactivity.n();
    }

    static boolean d(VideoListActivity videolistactivity)
    {
        return videolistactivity.i;
    }

    static s e(VideoListActivity videolistactivity)
    {
        return videolistactivity.f;
    }

    static void f(VideoListActivity videolistactivity)
    {
        videolistactivity.q();
    }

    static void g(VideoListActivity videolistactivity)
    {
        videolistactivity.p();
    }

    private void k()
    {
        int i1 = com.androvid.util.a.f(this);
        float f1 = i1;
        int j1 = (int)Math.floor((double)com.androvid.util.h.a(this, f1) / 100.25D + 0.5D);
        k = j1;
        f1 = k + 1;
        float f2 = com.androvid.util.h.b(this, 0.25F);
        j1 = (int)(f1 * f2);
        i1 -= j1;
        j1 = k;
        i1 /= j1;
        j = i1;
    }

    private void l()
    {
        boolean flag = c;
        if(!flag)
        {
            flag = false;
            b.a a1 = com.androvid.videokit.b.a(this, null);
            g = a1;
        }
        Object obj = JVM INSTR new #227 <Class s>;
        Object obj1 = g;
        int j1 = j;
        ((s) (obj)).s(this, ((b.a) (obj1)), j1);
        f = ((s) (obj));
        com.media.video.c.b.a().a(this);
        int i1 = 0x7f0903c5;
        obj = (RecyclerView)findViewById(i1);
        b = ((RecyclerView) (obj));
        obj = g;
        obj1 = com.androvid.videokit.b.a.a;
        j1 = 0;
        com.gui.b.b b1 = null;
        if(obj == obj1)
        {
            obj = b;
            obj1 = JVM INSTR new #247 <Class LinearLayoutManager>;
            int k1 = 1;
            ((LinearLayoutManager) (obj1)).LinearLayoutManager(this, k1, false);
            ((RecyclerView) (obj)).setLayoutManager(((androidx.recyclerview.widget.RecyclerView.i) (obj1)));
        } else
        {
            obj = b;
            obj1 = JVM INSTR new #257 <Class GridLayoutManager>;
            int l1 = k;
            ((GridLayoutManager) (obj1)).GridLayoutManager(this, l1);
            ((RecyclerView) (obj)).setLayoutManager(((androidx.recyclerview.widget.RecyclerView.i) (obj1)));
        }
        obj = b;
        obj1 = f;
        ((RecyclerView) (obj)).setAdapter(((androidx.recyclerview.widget.RecyclerView.a) (obj1)));
        obj = f.a();
        obj1 = JVM INSTR new #269 <Class VideoListActivity$1>;
        ((_cls1) (obj1)).this. _cls1();
        ((g) (obj)).a(((com.media.video.data.g.a) (obj1)));
        obj = f;
        obj1 = JVM INSTR new #277 <Class VideoListActivity$2>;
        ((_cls2) (obj1)).this. _cls2();
        ((s) (obj)).a(((android.widget.AdapterView.OnItemClickListener) (obj1)));
        obj = (FloatingActionButton)findViewById(0x7f090127);
        ((FloatingActionButton) (obj)).setSize(0);
        obj1 = b;
        b1 = JVM INSTR new #291 <Class com.gui.b.b>;
        b1.com.gui.b.b(((View) (obj)));
        ((RecyclerView) (obj1)).setOnTouchListener(b1);
        obj1 = JVM INSTR new #300 <Class VideoListActivity$3>;
        ((_cls3) (obj1)).this. _cls3();
        ((FloatingActionButton) (obj)).setOnClickListener(((android.view.View.OnClickListener) (obj1)));
        com.media.video.c.b.a().c();
        f.notifyDataSetChanged();
        com.media.video.c.b.a().a(this);
        obj = com.media.video.c.b.a();
        i1 = ((com.media.video.c.b) (obj)).i();
        if(i1 == 0)
        {
            obj = "There is no video recorded on your phone. You need videos to use this program.";
            com.androvid.util.h.a(this, ((String) (obj)));
        }
        obj = f.a();
        i1 = ((g) (obj)).e();
        if(!i1)
            o();
        m();
    }

    private void m()
    {
        boolean flag = com.androvid.videokit.o.a();
        int j1 = 0x7f090046;
        if(!flag)
        {
            f.a(this);
            b.a a1 = g;
            b.a a2 = com.androvid.videokit.b.a.b;
            if(a1 == a2)
            {
                int i1 = 0x7f090040;
                com.media.common.c.a.a(this, i1, j1);
            } else
            {
                com.media.common.c.a.a(this, j1);
            }
        } else
        {
            com.media.common.c.a.a(this, j1);
        }
    }

    private void n()
    {
        a(false);
    }

    private void o()
    {
        boolean flag = true;
        a(flag);
        i = flag;
    }

    private void p()
    {
        g g1 = f.a();
        boolean flag = true;
        com.gui.a.f.a(g1, flag, flag).a(this);
    }

    private void q()
    {
        com.androvid.b.a.i.a(f.a().f()).a(this, null);
    }

    public void a(int i1, int j1, l l1)
    {
label0:
        {
            byte byte0 = 18;
            if(i1 != byte0)
            {
                byte byte1 = 21;
                if(i1 != byte1)
                {
                    l1 = JVM INSTR new #119 <Class StringBuilder>;
                    l1.StringBuilder();
                    String s1 = "VideoListActivity.onIconContextMenuClick, unhandled dialog id: ";
                    l1.append(s1);
                    l1.append(i1);
                    l1.append(" menu id: ");
                    l1.append(j1);
                    String s2 = l1.toString();
                    com.util.i.d(s2);
                    break label0;
                }
            }
            v v1 = a;
            v1.a(i1, j1, l1);
        }
    }

    public void a(VideoInfo videoinfo)
    {
    }

    public void a(String s1, Uri uri)
    {
        boolean flag = d;
        if(flag)
        {
            s1 = com.media.video.c.b.a();
            s1.c();
        }
    }

    public void b(int i1)
    {
        StringBuilder stringbuilder = JVM INSTR new #119 <Class StringBuilder>;
        stringbuilder.StringBuilder();
        stringbuilder.append("VideoListActivity.checkedVideoCountUpdated: ");
        stringbuilder.append(i1);
        com.util.i.c(stringbuilder.toString());
    }

    public void b(VideoInfo videoinfo)
    {
    }

    public void b(String s1)
    {
        VideoInfo videoinfo = f.a().f();
        com.androvid.util.b.a(this, videoinfo, s1);
        n();
    }

    public void b_(int i1)
    {
    }

    public void b_(int i1, int j1)
    {
        n();
        if(j1 > 0)
        {
            i1 = 0x7f0903c3;
            com.androvid.util.a.a(this, i1, j1);
        }
    }

    public void c(int i1)
    {
    }

    public void c(VideoInfo videoinfo)
    {
        Intent intent = JVM INSTR new #395 <Class Intent>;
        intent.Intent();
        Uri uri = videoinfo.h;
        if(uri == null)
        {
            String s1 = "VideoListActivity.returnVideoPickResult: m_Uri is NULL!!!";
            com.util.i.e(s1);
        }
        videoinfo = videoinfo.h;
        intent.setData(videoinfo);
        videoinfo = getParent();
        byte byte0 = -1;
        if(videoinfo == null)
        {
            setResult(byte0, intent);
        } else
        {
            videoinfo = getParent();
            videoinfo.setResult(byte0, intent);
        }
        finish();
    }

    public void d(int i1)
    {
    }

    public void e(int i1)
    {
    }

    public void g()
    {
        boolean flag = d;
        if(!flag)
        {
            com.util.i.d("VideoListActivity.videoListUpdated, activty is not VISIBLE! Do nothing.");
            return;
        } else
        {
            f.notifyDataSetChanged();
            return;
        }
    }

    public void h()
    {
        com.media.video.c.b.a().c();
    }

    public void i()
    {
        int i1 = 0x7f090040;
        Object obj = (AdView)findViewById(i1);
        if(obj != null)
        {
            byte byte0 = 8;
            ((AdView) (obj)).setVisibility(byte0);
        }
        obj = g;
        Object obj1 = com.androvid.videokit.b.a.a;
        if(obj == obj1)
        {
            obj = com.androvid.videokit.b.a.b;
            com.androvid.videokit.b.a(this, ((b.a) (obj)));
            obj = com.androvid.videokit.b.a.b;
            g = ((b.a) (obj));
            obj = JVM INSTR new #257 <Class GridLayoutManager>;
            int j1 = k;
            ((GridLayoutManager) (obj)).GridLayoutManager(this, j1);
            m();
        } else
        {
            obj = com.androvid.videokit.b.a.a;
            com.androvid.videokit.b.a(this, ((b.a) (obj)));
            obj = com.androvid.videokit.b.a.a;
            g = ((b.a) (obj));
            obj = JVM INSTR new #247 <Class LinearLayoutManager>;
            int k1 = 1;
            Object obj2 = null;
            ((LinearLayoutManager) (obj)).LinearLayoutManager(this, k1, false);
        }
        obj1 = f;
        b.a a1 = g;
        ((s) (obj1)).a(a1);
        b.setLayoutManager(((androidx.recyclerview.widget.RecyclerView.i) (obj)));
        obj = b;
        obj1 = f;
        ((RecyclerView) (obj)).setAdapter(((androidx.recyclerview.widget.RecyclerView.a) (obj1)));
    }

    public void j()
    {
        com.util.i.b("VideoListActivity.nativeAdsShown");
        int i1 = 0x7f090046;
        View view = findViewById(i1);
        if(view != null)
        {
            byte byte0 = 8;
            view.setVisibility(byte0);
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            if(intent != null)
            {
                Uri uri = intent.getData();
                if(uri != null)
                {
                    char c1 = '\u014D';
                    if(i1 == c1)
                    {
                        com.media.video.c.b b1 = com.media.video.c.b.a();
                        Uri uri3 = intent.getData();
                        boolean flag = b1.a(uri3);
                        if(flag)
                        {
                            com.media.common.e.f f1 = com.media.common.e.f.b(intent.getData());
                            boolean flag1 = false;
                            Object obj2 = null;
                            com.androvid.util.a.a(this, f1, null);
                        } else
                        {
                            Uri uri1 = intent.getData();
                            Object obj3 = JVM INSTR new #119 <Class StringBuilder>;
                            ((StringBuilder) (obj3)).StringBuilder();
                            ((StringBuilder) (obj3)).append("file://");
                            java.io.File file = Environment.getExternalStorageDirectory();
                            ((StringBuilder) (obj3)).append(file);
                            obj3 = Uri.parse(((StringBuilder) (obj3)).toString());
                            com.androvid.util.a.a(this, uri1, ((Uri) (obj3)));
                        }
                        break label0;
                    }
                }
            }
            if(intent != null)
            {
                char c2 = '\u0157';
                if(i1 == c2)
                    break label0;
            }
            if(intent != null)
            {
                Uri uri2 = intent.getData();
                if(uri2 != null)
                {
                    char c3 = '\u014F';
                    if(i1 == c3)
                    {
                        Object obj = JVM INSTR new #119 <Class StringBuilder>;
                        ((StringBuilder) (obj)).StringBuilder();
                        ((StringBuilder) (obj)).append("VideoListActivity.onActivityResult, file selected by floating action: URI:");
                        Object obj4 = intent.getData();
                        ((StringBuilder) (obj)).append(obj4);
                        com.util.i.c(((StringBuilder) (obj)).toString());
                        obj = JVM INSTR new #395 <Class Intent>;
                        ((Intent) (obj)).Intent();
                        obj4 = intent.getData();
                        ((Intent) (obj)).setData(((Uri) (obj4)));
                        obj4 = com/androvid/videokit/VideoPlayerMenuActivity;
                        ((Intent) (obj)).setClass(this, ((Class) (obj4)));
                        startActivity(((Intent) (obj)));
                        break label0;
                    }
                }
            }
            if(intent == null)
                break label0;
            Object obj1 = intent.getData();
            if(obj1 == null)
                break label0;
            char c4 = '\u015C';
            if(i1 != c4)
                break label0;
            obj1 = JVM INSTR new #119 <Class StringBuilder>;
            ((StringBuilder) (obj1)).StringBuilder();
            ((StringBuilder) (obj1)).append("VideoListActivity.onActivityResult, sdcard directory selection to file to SDCARD: URI:");
            Uri uri4 = intent.getData();
            ((StringBuilder) (obj1)).append(uri4);
            obj1 = ((StringBuilder) (obj1)).toString();
            com.util.i.c(((String) (obj1)));
            c4 = '\uFFFF';
            if(j1 == c4)
            {
                int k1 = android.os.Build.VERSION.SDK_INT;
                byte byte0 = 19;
                if(k1 >= byte0)
                {
                    obj1 = intent.getData();
                    androidx.d.a.a a1 = androidx.d.a.a.a(this, ((Uri) (obj1)));
                    Object obj5 = getPackageName();
                    byte byte1 = 3;
                    grantUriPermission(((String) (obj5)), ((Uri) (obj1)), byte1);
                    obj5 = getContentResolver();
                    ((ContentResolver) (obj5)).takePersistableUriPermission(((Uri) (obj1)), byte1);
                    obj1 = f.a();
                    a(this, ((g) (obj1)), a1);
                    n();
                    break label0;
                }
            }
            obj1 = "VideoListActivity.onActivityResult, cannot move to sdcard!";
            com.util.i.e(((String) (obj1)));
        }
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag1;
label0:
        {
            com.util.i.c("VideoListActivity.onCreate");
            com.util.c.a("VideoListActivity.onCreate.start");
            super.onCreate(bundle);
            bundle = com.media.common.p.b.a();
            com.media.common.b.a a1 = com.media.common.b.a.a;
            bundle.a("VideoListActivity", a1);
            k();
            setContentView(0x7f0c002c);
            bundle = findViewById(0x7f0903c4);
            m = bundle;
            int i1 = 0x7f09021b;
            bundle = (Toolbar)findViewById(i1);
            a(bundle);
            int j1 = 0x7f1100f1;
            com.androvid.util.a.a(this, j1);
            Object obj = JVM INSTR new #380 <Class v>;
            ((v) (obj)).v(this);
            a = ((v) (obj));
            obj = getIntent().getAction();
            flag1 = true;
            if(obj == null)
                break label0;
            obj = getIntent().getAction();
            String s2 = "android.intent.action.PICK";
            boolean flag = ((String) (obj)).equals(s2);
            if(!flag)
            {
                obj = getIntent().getAction();
                s2 = "android.intent.action.GET_CONTENT";
                flag = ((String) (obj)).equals(s2);
                if(!flag)
                    break label0;
            }
            c = flag1;
            obj = JVM INSTR new #119 <Class StringBuilder>;
            ((StringBuilder) (obj)).StringBuilder();
            s2 = "VideoListActivity.onCreate - m_bPickingOnly: ";
            ((StringBuilder) (obj)).append(s2);
            boolean flag2 = c;
            ((StringBuilder) (obj)).append(flag2);
            obj = ((StringBuilder) (obj)).toString();
            com.util.i.b(((String) (obj)));
            flag = com.media.common.p.e.a(this);
            if(!flag)
            {
                com.util.i.c("Storage permissions has NOT been granted. Requesting permissions.");
                bundle = m;
                String s1 = getString(0x7f110141);
                com.media.common.p.e.a(this, bundle, s1);
                return;
            }
        }
        PreferenceManager.getDefaultSharedPreferences(this).registerOnSharedPreferenceChangeListener(this);
        bundle = com.androvid.util.e.a(this, bundle, flag1);
        l = bundle;
        com.util.c.a("VideoListActivity.onCreate.end");
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        com.util.i.b("VideoListActivity.onCreateOptionsMenu");
        Object obj = getMenuInflater();
        boolean flag = true;
        if(obj != null && menu != null)
        {
            boolean flag1 = c;
            if(!flag1)
            {
                int i1 = 0x7f0d001e;
                ((MenuInflater) (obj)).inflate(i1, menu);
            } else
            {
                int j1 = 0x7f0d0020;
                ((MenuInflater) (obj)).inflate(j1, menu);
            }
            menu = menu.findItem(0x7f09028f);
            obj = null;
            if(menu != null)
            {
                menu = menu.getActionView();
                obj = menu;
                obj = (SearchView)menu;
            }
            if(obj == null)
            {
                com.util.i.e("VideoListActivity.onCreateOptionsMenu, searchView is NULL!");
                menu = JVM INSTR new #678 <Class AndrovidFailException>;
                menu.AndrovidFailException();
                com.util.e.a(menu);
                return flag;
            } else
            {
                ((SearchView) (obj)).setImeOptions(flag);
                menu = JVM INSTR new #689 <Class VideoListActivity$4>;
                menu.this. _cls4();
                ((SearchView) (obj)).setOnQueryTextListener(menu);
                return flag;
            }
        } else
        {
            com.util.i.e("VideoListActivity.onCreateOptionsMenu, inflater or menu is null!");
            return flag;
        }
    }

    protected void onDestroy()
    {
        com.util.i.c("VideoListActivity.onDestroy");
        com.media.video.c.b.a().b(this);
        Object obj = PreferenceManager.getDefaultSharedPreferences(this);
        ((SharedPreferences) (obj)).unregisterOnSharedPreferenceChangeListener(this);
        boolean flag = com.androvid.videokit.o.a();
        if(!flag)
        {
            int i1 = 0x7f090040;
            int j1 = 0x7f090046;
            com.media.common.c.a.c(this, i1, j1);
        }
        obj = com.media.common.p.b.a();
        com.media.common.b.a a1 = com.media.common.b.a.g;
        ((com.media.common.p.b) (obj)).a("VideoListActivity", a1);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i1 = menuitem.getItemId();
        switch(i1)
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131297042: 
            com.media.video.c.b b1 = com.media.video.c.b.a();
            String s1 = "DESC";
            b1.c(s1);
            b1 = com.media.video.c.b.a();
            b1.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131297041: 
            com.media.video.c.b b2 = com.media.video.c.b.a();
            String s2 = "ASC";
            b2.c(s2);
            b2 = com.media.video.c.b.a();
            b2.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131297039: 
            com.media.video.c.b b3 = com.media.video.c.b.a();
            String s3 = "_size";
            b3.b(s3);
            b3 = com.media.video.c.b.a();
            b3.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131297038: 
            com.media.video.c.b b4 = com.media.video.c.b.a();
            String s4 = "_display_name";
            b4.b(s4);
            b4 = com.media.video.c.b.a();
            b4.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131297037: 
            com.media.video.c.b b5 = com.media.video.c.b.a();
            String s5 = "duration";
            b5.b(s5);
            b5 = com.media.video.c.b.a();
            b5.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131297036: 
            com.media.video.c.b b6 = com.media.video.c.b.a();
            String s6 = "datetaken";
            b6.b(s6);
            b6 = com.media.video.c.b.a();
            b6.c();
            supportInvalidateOptionsMenu();
            break;

        case 2131296872: 
            com.media.video.c.b.a().j();
            com.media.common.scan.b b7 = com.media.common.scan.b.e();
            e = b7;
            e.a(this);
            b7 = e;
            b7.a(this);
            break;

        case 2131296853: 
        case 2131296863: 
            i();
            supportInvalidateOptionsMenu();
            break;

        case 2131296849: 
            char c1 = '\u0157';
            String s7 = com.media.common.d.a.a().j();
            com.androvid.util.a.a(this, c1, s7);
            finish();
            break;
        }
        return super.onOptionsItemSelected(menuitem);
    }

    protected void onPause()
    {
        com.util.i.c("VideoListActivity::onPause");
        super.onPause();
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        Object obj = g;
        Object obj1 = com.androvid.videokit.b.a.a;
        if(obj == obj1)
        {
            int i1 = 0x7f09025f;
            menu.removeItem(i1);
        } else
        {
            obj = g;
            obj1 = com.androvid.videokit.b.a.b;
            if(obj == obj1)
            {
                int j1 = 0x7f090255;
                menu.removeItem(j1);
            }
        }
        obj = com.media.video.c.b.a().e();
        obj1 = "_display_name";
        boolean flag2 = ((String) (obj)).equals(obj1);
        if(flag2)
        {
            int k1 = 0x7f09030e;
            obj = menu.findItem(k1);
        } else
        {
            String s1 = "_size";
            flag2 = ((String) (obj)).equals(s1);
            if(flag2)
            {
                int l1 = 0x7f09030f;
                obj = menu.findItem(l1);
            } else
            {
                String s2 = "duration";
                boolean flag = ((String) (obj)).equals(s2);
                if(flag)
                {
                    int i2 = 0x7f09030d;
                    obj = menu.findItem(i2);
                } else
                {
                    int j2 = 0x7f09030c;
                    obj = menu.findItem(j2);
                }
            }
        }
        flag2 = true;
        if(obj != null)
            ((MenuItem) (obj)).setChecked(flag2);
        obj = com.media.video.c.b.a().f();
        String s3 = "ASC";
        boolean flag1 = ((String) (obj)).equals(s3);
        if(flag1)
        {
            int k2 = 0x7f090311;
            menu = menu.findItem(k2);
        } else
        {
            int l2 = 0x7f090312;
            menu = menu.findItem(l2);
        }
        if(menu != null)
            menu.setChecked(flag2);
        return flag2;
    }

    public void onRequestPermissionsResult(int i1, String as[], int ai[])
    {
        String s1 = "HomeActivity.onRequestPermissionsResult";
        com.util.i.b(s1);
        byte byte0 = 100;
        if(i1 == byte0)
        {
            View view = m;
            int j1 = 0x7f110141;
            String s2 = getString(j1);
            i1 = com.media.common.p.e.a(this, view, i1, as, ai, s2);
            if(i1 != 0)
            {
                com.androvid.a a1 = com.androvid.a.a();
                as = getApplication();
                ai = getApplicationContext();
                a1.a(as, ai);
                l();
            } else
            {
                finish();
            }
        } else
        {
            super.onRequestPermissionsResult(i1, as, ai);
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        boolean flag = bundle.getBoolean("m_bPickingOnly", false);
        c = flag;
        Object obj = a;
        if(obj != null)
            ((v) (obj)).b(bundle);
        f.a().b(bundle);
        obj = f.a();
        flag = ((g) (obj)).e();
        if(!flag)
            o();
        super.onRestoreInstanceState(bundle);
    }

    protected void onResume()
    {
        com.util.i.c("VideoListActivity::onResume");
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        boolean flag = c;
        bundle.putBoolean("m_bPickingOnly", flag);
        v v1 = a;
        if(v1 != null)
            v1.a(bundle);
        f.a().a(bundle);
        super.onSaveInstanceState(bundle);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        String s2 = "pref.videolist_view_style";
        boolean flag = s1.equals(s2);
        if(flag)
        {
            sharedpreferences = com.androvid.videokit.b.a(this, sharedpreferences);
            s1 = g;
            boolean flag1 = sharedpreferences.equals(s1);
            if(!flag1)
                g = sharedpreferences;
        }
    }

    protected void onStart()
    {
        com.util.i.c("VideoListActivity::onStart");
        super.onStart();
        Object obj = getString(0x7f110141);
        setTitle(((CharSequence) (obj)));
        boolean flag = true;
        d = flag;
        com.androvid.a.a.a(this, "VideoListActivity");
        obj = AndrovidApplication.b();
        android.content.Context context = getApplicationContext();
        ((com.media.common.ffmpeg.e) (obj)).a(context);
        obj = l;
        if(obj != null)
        {
            long l1 = 1L;
            ((com.mikepenz.materialdrawer.c) (obj)).a(l1, false);
        }
        flag = com.media.common.p.e.a(this);
        if(flag)
            l();
    }

    protected void onStop()
    {
        com.util.i.c("VideoListActivity.onStop");
        super.onStop();
        com.media.video.c.b.a().b(this);
        d = false;
    }

    v a;
    RecyclerView b;
    boolean c;
    boolean d;
    com.media.common.scan.b e;
    private s f;
    private b.a g;
    private b h;
    private boolean i;
    private int j;
    private int k;
    private com.mikepenz.materialdrawer.c l;
    private View m;

    private class _cls5
        implements com.media.common.scan.a
    {

        public void a(String s1, Uri uri)
        {
            s1 = JVM INSTR new #20  <Class StringBuilder>;
            s1.StringBuilder();
            s1.append("VideoListActivity.moveSelectedFilesToSdCard, SCAN SUCCESS: ");
            uri = uri.toString();
            s1.append(uri);
            com.util.i.c(s1.toString());
            s1 = com.media.video.c.b.a();
            uri = a;
            s1.c(uri);
            com.media.common.h.a.j(a.c);
        }

        final VideoInfo a;
        final VideoListActivity b;

        _cls5(VideoInfo videoinfo)
        {
            b = VideoListActivity.this;
            a = videoinfo;
            super();
        }
    }


    private class a
        implements androidx.appcompat.view.b.a
    {

        private void a()
        {
            com.gui.a.g g1 = com.gui.a.g.a(com.androvid.videokit.VideoListActivity.e(a).a().f());
            VideoListActivity videolistactivity = a;
            g1.a(videolistactivity);
        }

        public void a(b b1)
        {
            com.androvid.videokit.VideoListActivity.a(a, false);
            com.androvid.videokit.VideoListActivity.a(a, null);
            com.androvid.videokit.VideoListActivity.e(a).c();
        }

        public boolean a(b b1, Menu menu)
        {
            a.getMenuInflater().inflate(0x7f0d0021, menu);
            return true;
        }

        public boolean a(b b1, MenuItem menuitem)
        {
            boolean flag = com.androvid.videokit.o.l;
            boolean flag2 = true;
            if(flag)
            {
                String s1 = menuitem.getTitle().toString();
                String s2 = "TEST";
                boolean flag1 = s1.equalsIgnoreCase(s2);
                if(flag1)
                {
                    b1 = JVM INSTR new #92  <Class Intent>;
                    b1.Intent();
                    menuitem = a;
                    b1.setClass(menuitem, com/androvid/test/VideoTestActivity);
                    menuitem = "video_";
                    Object obj = com.androvid.videokit.VideoListActivity.e(a).a().a();
                    int i1 = ((Set) (obj)).size();
                    b1.putExtra("VideoCount", i1);
                    obj = ((Set) (obj)).iterator();
                    int l1 = 0;
                    Object obj2 = null;
                    do
                    {
                        boolean flag3 = ((Iterator) (obj)).hasNext();
                        if(flag3)
                        {
                            VideoInfo videoinfo = (VideoInfo)((Iterator) (obj)).next();
                            Object obj4 = JVM INSTR new #134 <Class StringBuilder>;
                            ((StringBuilder) (obj4)).StringBuilder();
                            ((StringBuilder) (obj4)).append(menuitem);
                            ((StringBuilder) (obj4)).append(l1);
                            obj4 = ((StringBuilder) (obj4)).toString();
                            int j1 = videoinfo.a;
                            b1.putExtra(((String) (obj4)), j1);
                            l1 += ((flag2) ? 1 : 0);
                        } else
                        {
                            a.startActivity(b1);
                            return flag2;
                        }
                    } while(true);
                }
            }
            Object obj1 = com.androvid.videokit.VideoListActivity.e(a).a().f();
            if(obj1 == null)
            {
                com.util.i.d("VideoListActivity.onActionItemClicked, selected video is NUll!");
                b1.c();
                return flag2;
            }
            Object obj3 = JVM INSTR new #134 <Class StringBuilder>;
            ((StringBuilder) (obj3)).StringBuilder();
            String s3 = "VideoListActivity.onActionItemClicked, selected video id: ";
            ((StringBuilder) (obj3)).append(s3);
            int k1 = ((VideoInfo) (obj1)).a;
            ((StringBuilder) (obj3)).append(k1);
            obj3 = ((StringBuilder) (obj3)).toString();
            com.util.i.b(((String) (obj3)));
            int i2 = menuitem.getItemId();
            switch(i2)
            {
            case 2131296904: 
                menuitem = a;
                com.androvid.util.a.i(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296901: 
                menuitem = a;
                com.androvid.util.a.k(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296900: 
                menuitem = a;
                com.androvid.util.a.h(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296892: 
                menuitem = a;
                com.androvid.util.a.b(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296888: 
                menuitem = a;
                com.androvid.util.a.c(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296880: 
                a.a.a(((VideoInfo) (obj1)));
                menuitem = a.a;
                obj1 = a;
                menuitem.a(((androidx.fragment.app.FragmentActivity) (obj1)));
                b1.c();
                break;

            case 2131296879: 
                menuitem = a;
                com.androvid.util.a.e(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296877: 
                menuitem = a;
                com.androvid.videokit.VideoListActivity.f(menuitem);
                b1.c();
                break;

            case 2131296873: 
                b1 = a;
                com.androvid.videokit.VideoListActivity.g(b1);
                break;

            case 2131296867: 
                b1 = a;
                menuitem = JVM INSTR new #92  <Class Intent>;
                obj1 = "android.intent.action.OPEN_DOCUMENT_TREE";
                menuitem.Intent(((String) (obj1)));
                char c1 = '\u015C';
                b1.startActivityForResult(menuitem, c1);
                break;

            case 2131296865: 
            case 2131296866: 
                menuitem = a;
                obj1 = com.androvid.videokit.VideoListActivity.e(menuitem).a();
                com.androvid.util.a.a(menuitem, ((g) (obj1)));
                b1.c();
                break;

            case 2131296851: 
                menuitem = a;
                com.androvid.util.a.j(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296845: 
                menuitem = a;
                obj1 = com.androvid.videokit.VideoListActivity.e(menuitem).a();
                com.androvid.util.a.b(menuitem, ((g) (obj1)));
                b1.c();
                break;

            case 2131296843: 
                a();
                b1.c();
                break;

            case 2131296842: 
                menuitem = a;
                com.androvid.util.a.l(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296839: 
                b1 = a;
                com.androvid.util.b.a(b1, ((VideoInfo) (obj1)));
                break;

            case 2131296837: 
                menuitem = a;
                com.androvid.util.a.g(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;

            case 2131296819: 
                menuitem = a;
                com.androvid.util.a.d(menuitem, ((VideoInfo) (obj1)));
                b1.c();
                break;
            }
            return flag2;
        }

        public boolean b(b b1, Menu menu)
        {
            b1 = com.androvid.videokit.VideoListActivity.e(a).a();
            int i1 = b1.b();
            menu.clear();
            MenuInflater menuinflater = a.getMenuInflater();
            int l1 = 1;
            if(i1 == l1)
            {
                i1 = 0x7f0d0021;
                menuinflater.inflate(i1, menu);
            } else
            if(i1 > l1)
            {
                int j1 = 0x7f0d001f;
                menuinflater.inflate(j1, menu);
            }
            boolean flag = com.androvid.videokit.o.l;
            if(flag)
            {
                b1 = "TEST";
                menu.add(b1);
            }
            b1 = com.media.common.d.a.a();
            flag = b1.c();
            if(!flag)
            {
                int k1 = 0x7f090263;
                menu.removeItem(k1);
            }
            return false;
        }

        final VideoListActivity a;

        private a()
        {
            a = VideoListActivity.this;
            super();
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }



    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            adapterview = com.media.video.c.b.a().a(i1, false);
            if(adapterview == null)
            {
                com.util.i.e("VideoListActivity.onItemClick, getVideoAt( position  ) returned NULL!");
                return;
            }
            VideoListActivity videolistactivity = a;
            i1 = VideoListActivity.d(videolistactivity);
            if(i1 == 0)
            {
                VideoListActivity videolistactivity1 = a;
                i1 = videolistactivity1.c;
                if(i1 != 0)
                {
                    view = a;
                    view.c(adapterview);
                } else
                {
                    i1 = com.androvid.util.h.a(adapterview);
                    if(i1 == 0)
                    {
                        adapterview = a;
                        view = adapterview.getResources();
                        i1 = 0x7f1100f7;
                        view = view.getString(i1);
                        com.androvid.util.h.a(adapterview, view);
                    } else
                    {
                        com.media.video.c.b.a().b(adapterview);
                        VideoListActivity videolistactivity2 = a;
                        adapterview = com.media.common.e.f.a(adapterview);
                        view = com.androvid.util.a.a(null, view);
                        com.androvid.util.a.a(videolistactivity2, adapterview, view);
                    }
                }
            }
        }

        final VideoListActivity a;

        _cls2()
        {
            a = VideoListActivity.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = JVM INSTR new #16  <Class Intent>;
            view.Intent();
            view.setType("video/*");
            view.setAction("android.intent.action.GET_CONTENT");
            VideoListActivity videolistactivity = a;
            view = Intent.createChooser(view, "Select Video");
            videolistactivity.startActivityForResult(view, 335);
        }

        final VideoListActivity a;

        _cls3()
        {
            a = VideoListActivity.this;
            super();
        }
    }


    private class _cls4
        implements androidx.appcompat.widget.SearchView.c
    {

        public boolean a(String s1)
        {
            return false;
        }

        public boolean b(String s1)
        {
            s1 = s1.replace("'", "''");
            com.media.video.c.b.a().a(s1);
            com.media.video.c.b.a().c();
            return false;
        }

        final VideoListActivity a;

        _cls4()
        {
            a = VideoListActivity.this;
            super();
        }
    }

}
