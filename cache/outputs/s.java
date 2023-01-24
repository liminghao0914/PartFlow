// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.androvid.util.h;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.media.common.c.f;
import com.media.common.widget.SafeImageView;
import com.media.video.c.b;
import com.media.video.data.g;
import com.util.i;

// Referenced classes of package com.androvid.videokit:
//            o

public class s extends androidx.recyclerview.widget.RecyclerView.a
{

    public s(Activity activity, b.a a1, int j)
    {
        b = null;
        Object obj = b.a.a;
        g = ((b.a) (obj));
        i = 0;
        com.util.i.b("VideoListRecyclerAdapter.constructor");
        e = activity;
        obj = JVM INSTR new #48  <Class g>;
        ((g) (obj)).g();
        f = ((g) (obj));
        g = a1;
        i = j;
        activity = activity.getResources().getDrawable(0x7f08007b);
        h = activity;
        setHasStableIds(true);
    }

    private int a(int j)
    {
        boolean flag = o.a();
        if(flag)
            return j;
        int k = a;
        if(j < k)
            return j;
        else
            return j + -1;
    }

    static Activity a(s s1)
    {
        return s1.e;
    }

    private void a(b b1)
    {
        int j = b1.getAdapterPosition();
        j = b(j);
        Object obj = c;
        if(obj != null)
        {
            boolean flag = false;
            View view = b1.itemView;
            long l = b1.getItemId();
            ((android.widget.AdapterView.OnItemClickListener) (obj)).onItemClick(null, view, j, l);
        }
        obj = f;
        boolean flag2 = ((g) (obj)).e();
        if(!flag2)
        {
            Object obj1 = com.media.video.c.b.a();
            boolean flag1 = true;
            VideoInfo videoinfo = ((com.media.video.c.b) (obj1)).a(j, flag1);
            obj1 = f;
            ((g) (obj1)).d(videoinfo);
            int k = b1.getAdapterPosition();
            notifyItemChanged(k);
        }
    }

    static void a(s s1, b b1)
    {
        s1.a(b1);
    }

    private int b(int j)
    {
        int k = a;
        k = getItemViewType(k);
        if(k != 0)
            j = a(j);
        return j;
    }

    static g b(s s1)
    {
        return s1.f;
    }

    private void b(b b1)
    {
        int j = b1.getAdapterPosition();
        int k = b(j);
        Object obj = com.media.video.c.b.a();
        boolean flag = true;
        obj = ((com.media.video.c.b) (obj)).a(k, flag);
        f.d(((VideoInfo) (obj)));
        android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener = d;
        if(onitemlongclicklistener != null)
        {
            View view = b1.itemView;
            long l = b1.getItemId();
            onitemlongclicklistener.onItemLongClick(null, view, k, l);
        }
        int i1 = b1.getAdapterPosition();
        notifyItemChanged(i1);
    }

    static void b(s s1, b b1)
    {
        s1.b(b1);
    }

    public g a()
    {
        return f;
    }

    void a(View view, boolean flag)
    {
        if(view != null)
        {
            if(flag)
                flag = 0x7f08007d;
            else
                flag = 0x7f080074;
            view.setBackgroundResource(flag);
        }
    }

    public void a(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        c = onitemclicklistener;
    }

    public void a(b.a a1)
    {
        g = a1;
    }

    public void a(a a1)
    {
        b = a1;
    }

    public boolean b()
    {
        boolean flag = com.androvid.videokit.o.a();
        if(flag)
            return false;
        Object obj = com.media.common.d.b.a();
        Activity activity = e;
        flag = ((com.media.common.d.b) (obj)).h(activity);
        if(!flag)
            return false;
        obj = com.media.video.c.b.a();
        int j = ((com.media.video.c.b) (obj)).i();
        int k = a;
        boolean flag1 = true;
        k += ((flag1) ? 1 : 0);
        if(j < k)
            return false;
        obj = com.media.common.c.f.a().b();
        if(obj == null)
            return false;
        else
            return flag1;
    }

    public void c()
    {
        g g1 = f;
        if(g1 != null)
        {
            boolean flag = g1.e();
            if(!flag)
            {
                f.c();
                notifyDataSetChanged();
                return;
            }
        }
    }

    public int getItemCount()
    {
        boolean flag = b();
        if(flag)
        {
            int j = a;
            j = getItemViewType(j);
            if(j != 0)
                return com.media.video.c.b.a().i() + 1;
        }
        return com.media.video.c.b.a().i();
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public int getItemViewType(int j)
    {
        boolean flag = com.androvid.videokit.o.a();
        if(flag)
            return 0;
        b.a a1 = g;
        b.a a2 = com.androvid.videokit.b.a.b;
        if(a1 == a2)
            return 0;
        int k = a;
        if(j != k)
            return 0;
        com.google.android.gms.ads.formats.UnifiedNativeAd unifiednativead = com.media.common.c.f.a().b();
        return unifiednativead != null ? 1 : 0;
    }

    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.v v, int j)
    {
        boolean flag1;
        int k = getItemViewType(j);
        flag1 = true;
        if(k == flag1)
        {
            com.google.android.gms.ads.formats.UnifiedNativeAd unifiednativead = com.media.common.c.f.a().b();
            v = (UnifiedNativeAdView)v.itemView;
            com.media.common.c.g.a(unifiednativead, v);
            break MISSING_BLOCK_LABEL_269;
        }
        this;
        j;
        b();
        j;
        Object obj = com.media.video.c.b.a();
        obj;
        j;
        flag1;
        a();
        obj;
        if(obj != null) goto _L2; else goto _L1
_L1:
        obj = JVM INSTR new #187 <Class StringBuilder>;
        ((StringBuilder) (obj)).StringBuilder();
        Object obj1 = "VideoListActivity::getView, getVideoAt return null for pos:";
        obj;
        obj1;
        append();
        JVM INSTR pop ;
        obj;
        j;
        append();
        JVM INSTR pop ;
        obj = ((StringBuilder) (obj)).toString();
        com.util.i.e(((String) (obj)));
        obj = com.media.video.c.b.a();
        boolean flag = ((com.media.video.c.b) (obj)).h();
        if(flag) goto _L4; else goto _L3
_L3:
        obj = com.media.video.c.b.a();
        obj1 = e;
        obj;
        obj1;
        a();
_L4:
        obj = com.media.video.c.b.a();
        obj;
        j;
        flag1;
        a();
        obj;
_L2:
        if(obj == null)
            break MISSING_BLOCK_LABEL_269;
        b.a a1 = g;
        b.a a2 = com.androvid.videokit.b.a.a;
        if(a1 != a2)
            break MISSING_BLOCK_LABEL_201;
        j = v instanceof b;
        if(j == 0)
            break MISSING_BLOCK_LABEL_269;
        v = (b)v;
        v;
        obj;
        b();
        break MISSING_BLOCK_LABEL_269;
        j = v instanceof b;
        if(j == 0)
            break MISSING_BLOCK_LABEL_269;
        v = (b)v;
        v;
        obj;
        a();
        break MISSING_BLOCK_LABEL_269;
        v;
        StringBuilder stringbuilder = JVM INSTR new #187 <Class StringBuilder>;
        stringbuilder.StringBuilder();
        String s1 = "VideoListRecyclerAdapter.onBindViewHolder ";
        stringbuilder.append(s1);
        v = v.toString();
        stringbuilder.append(v);
        v = stringbuilder.toString();
        com.util.i.e(v);
    }

    public androidx.recyclerview.widget.RecyclerView.v onCreateViewHolder(ViewGroup viewgroup, int j)
    {
        boolean flag = false;
        Object obj = null;
        int l = 1;
        float f1 = 1.401298E-45F;
        if(j == l)
        {
            Object obj1 = LayoutInflater.from(viewgroup.getContext());
            int i1 = 0x7f0c0121;
            float f2 = 1.860978E+38F;
            viewgroup = ((LayoutInflater) (obj1)).inflate(i1, viewgroup, false);
            obj1 = b;
            if(obj1 != null)
            {
                ((a) (obj1)).j();
                j = 0;
                obj1 = null;
                b = null;
            }
            obj1 = JVM INSTR new #242 <Class com.media.common.c.i>;
            ((com.media.common.c.i) (obj1)).com.media.common.c.i(viewgroup);
            return ((androidx.recyclerview.widget.RecyclerView.v) (obj1));
        }
        Object obj2 = g;
        b.a a1 = com.androvid.videokit.b.a.a;
        if(obj2 == a1)
        {
            obj2 = LayoutInflater.from(e);
            int j1 = 0x7f0c0027;
            float f3 = 1.860927E+38F;
            viewgroup = ((LayoutInflater) (obj2)).inflate(j1, viewgroup, false);
        } else
        {
            viewgroup = LayoutInflater.from(e).inflate(0x7f0c0024, viewgroup, false);
            j = 0x7f090178;
            obj2 = (SafeImageView)viewgroup.findViewById(j);
            android.view.ViewGroup.LayoutParams layoutparams = ((SafeImageView) (obj2)).getLayoutParams();
            int k1 = i;
            Activity activity1 = e;
            float f5 = 0.25F;
            float f6 = com.androvid.util.h.b(activity1, f5);
            int l1 = (int)f6;
            k1 -= l1;
            layoutparams.height = k1;
            obj2 = ((SafeImageView) (obj2)).getLayoutParams();
            int k = i;
            Activity activity = e;
            float f4 = com.androvid.util.h.b(activity, f5);
            k1 = (int)f4;
            k -= k1;
            obj2.width = k;
        }
        obj2 = JVM INSTR new #81  <Class s$b>;
        ((b) (obj2)).this. b(viewgroup);
        return ((androidx.recyclerview.widget.RecyclerView.v) (obj2));
    }

    public static int a = 3;
    private a b;
    private android.widget.AdapterView.OnItemClickListener c;
    private android.widget.AdapterView.OnItemLongClickListener d;
    private Activity e;
    private g f;
    private b.a g;
    private Drawable h;
    private int i;


    private class b extends androidx.recyclerview.widget.RecyclerView.v
        implements android.view.View.OnClickListener, android.view.View.OnLongClickListener
    {

        public void a(VideoInfo videoinfo)
        {
            Object obj = itemView;
            int l = 0x7f090178;
            obj = (SafeImageView)((View) (obj)).findViewById(l);
            Object obj1 = "video/*";
            Object obj2 = com.media.common.p.d.a(videoinfo.c);
            if(obj2 != null)
            {
                String s1 = ((com.media.common.p.d.a) (obj2)).b;
                if(s1 != null)
                {
                    String s2 = ((com.media.common.p.d.a) (obj2)).b;
                    boolean flag = s2.isEmpty();
                    if(!flag)
                        obj1 = ((com.media.common.p.d.a) (obj2)).b;
                }
            }
            obj2 = com.androvid.b.a(com.androvid.videokit.s.a(a)).a();
            Object obj3 = videoinfo.h;
            obj2 = ((com.androvid.d) (obj2)).a(((android.net.Uri) (obj3)));
            obj3 = JVM INSTR new #88  <Class com.bumptech.glide.g.b>;
            long l1 = videoinfo.b();
            int i1 = videoinfo.a;
            ((com.bumptech.glide.g.b) (obj3)).com.bumptech.glide.g.b(((String) (obj1)), l1, i1);
            obj1 = ((com.androvid.d) (obj2)).a(((com.bumptech.glide.load.f) (obj3)));
            obj2 = j.b;
            obj1 = ((com.androvid.d) (obj1)).a(((j) (obj2))).c();
            obj2 = com.bumptech.glide.load.c.a.f.c();
            obj1 = ((com.androvid.d) (obj1)).a(((com.bumptech.glide.l) (obj2)));
            int j1 = 0x7f08006f;
            ((com.androvid.d) (obj1)).b(j1).a(((ImageView) (obj)));
            ((SafeImageView) (obj)).a(true);
            obj = itemView;
            l = 0x7f09016f;
            obj = ((View) (obj)).findViewById(l);
            obj1 = com.androvid.videokit.s.b(a);
            boolean flag1 = ((g) (obj1)).a(videoinfo);
            if(flag1)
            {
                if(obj != null)
                {
                    boolean flag2 = false;
                    videoinfo = null;
                    ((View) (obj)).setVisibility(0);
                }
            } else
            if(obj != null)
            {
                byte byte0 = 4;
                ((View) (obj)).setVisibility(byte0);
            }
        }

        public void b(VideoInfo videoinfo)
        {
            boolean flag;
            int j1;
label0:
            {
                Object obj = (TextView)itemView.findViewById(0x7f090005);
                String s1 = videoinfo.e;
                ((TextView) (obj)).setText(s1);
                obj = (TextView)itemView.findViewById(0x7f0902d3);
                flag = true;
                String s2 = com.androvid.util.a.a(videoinfo, flag, flag, flag, flag);
                ((TextView) (obj)).setText(s2);
                obj = (ImageView)itemView.findViewById(0x7f0902e3);
                int l = android.os.Build.VERSION.SDK_INT;
                j1 = 4;
                byte byte0 = 21;
                if(l >= byte0)
                {
                    com.media.common.d.a a1 = com.media.common.d.a.a();
                    boolean flag1 = a1.c();
                    if(flag1)
                    {
                        File file = JVM INSTR new #182 <Class File>;
                        String s3 = videoinfo.c;
                        file.File(s3);
                        boolean flag2 = Environment.isExternalStorageRemovable(file);
                        if(flag2)
                        {
                            ((ImageView) (obj)).setVisibility(0);
                            break label0;
                        }
                    }
                }
                ((ImageView) (obj)).setVisibility(j1);
            }
            Object obj1 = (ImageView)itemView.findViewById(0x7f0902a0);
            Object obj2 = com.androvid.videokit.s.a(a);
            int k1 = 0x7f06004e;
            int i1 = androidx.core.content.a.c(((android.content.Context) (obj2)), k1);
            ((ImageView) (obj1)).setBackgroundColor(i1);
            obj2 = "video/*";
            Object obj3 = com.media.common.p.d.a(videoinfo.c);
            if(obj3 != null)
            {
                String s4 = ((com.media.common.p.d.a) (obj3)).b;
                if(s4 != null)
                {
                    String s5 = ((com.media.common.p.d.a) (obj3)).b;
                    boolean flag3 = s5.isEmpty();
                    if(!flag3)
                        obj2 = ((com.media.common.p.d.a) (obj3)).b;
                }
            }
            k.a(com.androvid.videokit.s.a(a), j1);
            System.nanoTime();
            System.nanoTime();
            Object obj4 = com.androvid.b.a(com.androvid.videokit.s.a(a)).a();
            obj3 = videoinfo.h;
            obj4 = ((com.androvid.d) (obj4)).a(((android.net.Uri) (obj3)));
            obj3 = JVM INSTR new #88  <Class com.bumptech.glide.g.b>;
            long l1 = videoinfo.b();
            int i2 = videoinfo.a;
            ((com.bumptech.glide.g.b) (obj3)).com.bumptech.glide.g.b(((String) (obj2)), l1, i2);
            obj2 = ((com.androvid.d) (obj4)).a(((com.bumptech.glide.load.f) (obj3))).c();
            j1 = 0x7f080072;
            obj2 = ((com.androvid.d) (obj2)).b(j1);
            obj4 = com.bumptech.glide.load.c.a.f.c();
            obj2 = ((com.androvid.d) (obj2)).a(((com.bumptech.glide.l) (obj4)));
            ((com.androvid.d) (obj2)).a(((ImageView) (obj1)));
            obj1 = com.androvid.videokit.s.b(a);
            boolean flag4 = ((g) (obj1)).a(videoinfo);
            if(flag4)
            {
                videoinfo = a;
                View view = itemView;
                videoinfo.a(view, flag);
            } else
            {
                videoinfo = a;
                View view1 = itemView;
                videoinfo.a(view1, false);
            }
        }

        public void onClick(View view)
        {
            com.util.i.b("VideoListRecyclerAdapter.FrameHolder, onClick");
            com.androvid.videokit.s.a(a, this);
        }

        public boolean onLongClick(View view)
        {
            com.util.i.b("VideoListRecyclerAdapter.VideoHolder, onLongClick");
            view.performHapticFeedback(0, 2);
            com.androvid.videokit.s.b(a, this);
            return true;
        }

        final s a;

        public b(View view)
        {
            a = s.this;
            super(view);
            view.setOnClickListener(this);
            view.setOnLongClickListener(this);
        }
    }


    private class a
    {

        public abstract void j();
    }

}
