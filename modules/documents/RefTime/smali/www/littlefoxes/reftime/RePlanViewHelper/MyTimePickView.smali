.class public Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;
.super Landroid/widget/LinearLayout;


# instance fields
.field hourChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;

.field hourPickerView:LDateHelper/PickerView;

.field minuteChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;

.field minutePickView:LDateHelper/PickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0044

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LDateHelper/PickerView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourPickerView:LDateHelper/PickerView;

    const v0, 0x7f0900a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LDateHelper/PickerView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minutePickView:LDateHelper/PickerView;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->initView()V

    return-void
.end method

.method private initView()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_10
    const/16 v2, 0x18

    const/16 v8, 0xa

    if-ge v5, v2, :cond_38

    if-ge v5, v8, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    :goto_1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_10

    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    goto :goto_1f

    :cond_38
    :goto_38
    const/16 v2, 0xc

    if-ge v4, v2, :cond_60

    mul-int/lit8 v5, v4, 0x5

    if-ge v5, v8, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    :goto_47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_38

    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    goto :goto_47

    :cond_60
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minutePickView:LDateHelper/PickerView;

    invoke-virtual {v2, v7}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minutePickView:LDateHelper/PickerView;

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;)V

    invoke-virtual {v2, v3}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourPickerView:LDateHelper/PickerView;

    invoke-virtual {v2, v6}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourPickerView:LDateHelper/PickerView;

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$2;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;)V

    invoke-virtual {v2, v3}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "onInterceptTouchEventDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v7, "(Landroid/view/MotionEvent;)Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public reInitData()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_10
    const/16 v2, 0x18

    const/16 v8, 0xa

    if-ge v5, v2, :cond_38

    if-ge v5, v8, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    :goto_1f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_10

    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    goto :goto_1f

    :cond_38
    :goto_38
    const/16 v2, 0xc

    if-ge v4, v2, :cond_60

    mul-int/lit8 v5, v4, 0x5

    if-ge v5, v8, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    :goto_47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_38

    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    goto :goto_47

    :cond_60
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minutePickView:LDateHelper/PickerView;

    invoke-virtual {v2, v7}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourPickerView:LDateHelper/PickerView;

    invoke-virtual {v2, v6}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "reInitDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setOnHourChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setOnHourChangeListenerDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setOnMinuteChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minuteChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setOnMinuteChangeListenerDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setViewHour(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->hourPickerView:LDateHelper/PickerView;

    invoke-virtual {v2, p1}, LDateHelper/PickerView;->setSelected(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setViewHourDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setViewMinute(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minutePickView:LDateHelper/PickerView;

    div-int/lit8 v3, p1, 0x5

    invoke-virtual {v2, v3}, LDateHelper/PickerView;->setSelected(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setViewMinuteDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
