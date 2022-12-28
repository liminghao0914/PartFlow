.class public Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;

.field private rePlanSelect:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    iput-object p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->initData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$000Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Ljava/util/List;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$100Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Ljava/util/List;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->rePlanSelect:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
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
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1d

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2, v4}, LDBManager/RePlanData/ReplanList;->setSelect(Z)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public InitData()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    move v3, v4

    :goto_6
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2e

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2, v4}, LDBManager/RePlanData/ReplanList;->setSelect(Z)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->notifyDataSetChanged()V

    :cond_2a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "InitDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public RefrashData(Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->notifyDataSetChanged()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RefrashDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "(Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public SetClickItem(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    move v3, v4

    :goto_6
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_90

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRecordSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8b

    move v5, v4

    :goto_37
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_8b

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result v2

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordId()I

    move-result v7

    if-ne v2, v7, :cond_75

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, LDBManager/Database/RePlanData;->setSelect(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2, v7}, LDBManager/RePlanData/ReplanList;->setSelect(Z)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->notifyDataSetChanged()V

    :goto_71
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_37

    :cond_75
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    invoke-virtual {v2, v4}, LDBManager/Database/RePlanData;->setSelect(Z)V

    goto :goto_71

    :cond_8b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6

    :cond_90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SetClickItemDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public SetRePlanSelect(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->rePlanSelect:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SetRePlanSelectDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;)V"

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getItemCountDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

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

    check-cast p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->onBindViewHolder(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;I)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRecordSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->getRecordSortName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/RePlanData/ReplanList;

    invoke-virtual {v2}, LDBManager/RePlanData/ReplanList;->isSelect()Z

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    iget-object v2, p1, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v2, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;

    invoke-direct {v2, p0, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;I)V

    invoke-virtual {v3, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->SetItemClickEvent(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBindViewHolderDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0052

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;

    invoke-direct {v3, p0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "onCreateViewHolderDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanSortListAdapter"

    const-string v7, "(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;"

    sub-long/2addr v4, v0

    invoke-static {v2, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3
.end method
