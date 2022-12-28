.class public Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field isSelect:Z

.field private itemClickEvent:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;

.field private mData:Ljava/util/List;

.field private sortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    iput-boolean p3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->isSelect:Z

    iput-object p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->sortName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->sortName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/util/List;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$100Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/util/List;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->itemClickEvent:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->initData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$300Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private initData()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    move v3, v4

    :goto_6
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1d

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    invoke-virtual {v2, v4}, LDBManager/Database/RePlanData;->setSelect(Z)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public RefrashData(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    iput-boolean p3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->isSelect:Z

    iput-object p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->sortName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RefrashDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v6, "(Ljava/util/List;Ljava/lang/String;Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public SetItemClickEvent(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->itemClickEvent:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SetItemClickEventDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public getItemCount()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getItemCountDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->onBindViewHolder(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;I)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->isSelect:Z

    if-eqz v3, :cond_62

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getTimingColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_37
    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->unicodeTV:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;

    invoke-direct {v3, p0, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBindViewHolderDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_62
    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_37
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0051

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;

    invoke-direct {v3, p0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "onCreateViewHolderDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter"

    const-string v7, "(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;"

    sub-long/2addr v4, v0

    invoke-static {v2, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3
.end method
