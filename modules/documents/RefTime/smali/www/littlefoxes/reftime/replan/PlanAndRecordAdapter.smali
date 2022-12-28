.class public Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# static fields
.field public static ITEM_TYPE_PLAN:I = 0x0

.field public static ITEM_TYPE_REAL:I = 0x1


# instance fields
.field mData:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;->mData:Ljava/util/List;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getItemCountDelta"

    const-string v6, "www.littlefoxes.reftime.replan.PlanAndRecordAdapter"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :cond_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_9
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;->onBindViewHolder(Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;I)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    iget-object v3, p1, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->tvUnicode:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBindViewHolderDelta"

    const-string v5, "www.littlefoxes.reftime.replan.PlanAndRecordAdapter"

    const-string v6, "(Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0050

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;

    invoke-direct {v3, p0, v2}, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;-><init>(Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "onCreateViewHolderDelta"

    const-string v6, "www.littlefoxes.reftime.replan.PlanAndRecordAdapter"

    const-string v7, "(Landroid/view/ViewGroup;I)Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;"

    sub-long/2addr v4, v0

    invoke-static {v2, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3
.end method
