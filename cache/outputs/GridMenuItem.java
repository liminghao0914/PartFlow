// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.androvid.videokit;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.*;
import com.util.i;

// Referenced classes of package com.androvid.videokit:
//            m, i

public class GridMenuItem extends RelativeLayout
{

    public GridMenuItem(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        context = JVM INSTR new #30  <Class GridMenuItem$1>;
        context.this. _cls1();
        setOnClickListener(context);
    }

    static com.androvid.videokit.i a(GridMenuItem gridmenuitem)
    {
        return gridmenuitem.d;
    }

    static m b(GridMenuItem gridmenuitem)
    {
        return gridmenuitem.c;
    }

    protected void onFinishInflate()
    {
        Object obj = (ImageView)findViewById(0x7f09013a);
        a = ((ImageView) (obj));
        obj = (TextView)findViewById(0x7f09013b);
        b = ((TextView) (obj));
        obj = a;
        _cls2 _lcls2 = JVM INSTR new #51  <Class GridMenuItem$2>;
        _lcls2.this. _cls2();
        ((ImageView) (obj)).setOnTouchListener(_lcls2);
        super.onFinishInflate();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
label0:
        {
            int j = motionevent.getAction();
            boolean flag = true;
            if(j == 0)
            {
                ImageView imageview = a;
                imageview.setPressed(flag);
                break label0;
            }
            j = motionevent.getAction();
            byte byte1 = 3;
            if(j != byte1)
            {
                int k = motionevent.getAction();
                if(k != flag)
                    break label0;
            }
            ImageView imageview1 = a;
            flag = false;
            imageview1.setPressed(false);
        }
        Object obj = b;
        byte byte0 = -1;
        ((TextView) (obj)).setTextColor(byte0);
        obj = e;
        if(obj != null)
            ((a) (obj)).a();
        return super.onTouchEvent(motionevent);
    }

    public void setMenuInfo(m m1)
    {
        c = m1;
        Object obj = a;
        if(obj != null)
        {
            int j = m1.c;
            ((ImageView) (obj)).setImageResource(j);
        } else
        {
            obj = "GridMenuItem::setIconAndText, m_ImageView is NULL";
            i.e(((String) (obj)));
        }
        obj = b;
        if(obj != null)
        {
            m1 = m1.a;
            ((TextView) (obj)).setText(m1);
        } else
        {
            m1 = "GridMenuItem::setIconAndText, m_TextView is NULL";
            i.e(m1);
        }
    }

    public void setOnMenuSelectionListener(com.androvid.videokit.i j)
    {
        d = j;
    }

    public void setOnMenuTouchListener(a a1)
    {
        e = a1;
    }

    private ImageView a;
    private TextView b;
    private m c;
    private com.androvid.videokit.i d;
    private a e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            view = a;
            view = GridMenuItem.a(view);
            if(view == null) goto _L2; else goto _L1
_L1:
            view = a;
            view = GridMenuItem.a(view);
            Object obj = a;
            obj = GridMenuItem.b(((GridMenuItem) (obj)));
            int j = ((m) (obj)).b;
            view;
            j;
            f();
_L2:
            view = a;
            view = GridMenuItem.b(view);
            view = ((m) (view)).d;
            if(view == null)
                break MISSING_BLOCK_LABEL_147;
            view = a;
            view = GridMenuItem.b(view);
            view = ((m) (view)).d;
            obj = a;
            obj = GridMenuItem.b(((GridMenuItem) (obj)));
            j = ((m) (obj)).b;
            view;
            j;
            a();
            break MISSING_BLOCK_LABEL_147;
            view;
            Object obj1 = JVM INSTR new #44  <Class StringBuilder>;
            ((StringBuilder) (obj1)).StringBuilder();
            ((StringBuilder) (obj1)).append("GridMenuItem.onClick, ");
            String s = view.toString();
            ((StringBuilder) (obj1)).append(s);
            obj1 = ((StringBuilder) (obj1)).toString();
            i.e(((String) (obj1)));
            com.util.e.a(view);
        }

        final GridMenuItem a;

        _cls1()
        {
            a = GridMenuItem.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            int j = motionevent.getAction();
            motionevent = null;
            if(j == 0)
            {
                view = a;
                boolean flag = true;
                view.setPressed(flag);
            } else
            {
                view = a;
                view.setPressed(false);
            }
            return false;
        }

        final GridMenuItem a;

        _cls2()
        {
            a = GridMenuItem.this;
            super();
        }
    }


    private class a
    {

        public abstract void a();
    }

}
