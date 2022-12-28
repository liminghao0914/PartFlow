.class public LListFluHelper/ListRecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LListFluHelper/ListRecycleViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LListFluHelper/ListRecycleViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private listRVClick:LListFluHelper/ListRVClick;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(LListFluHelper/ListRecycleViewAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(LListFluHelper/ListRecycleViewAdapter;)LListFluHelper/ListRVClick;
    .locals 0

    .line 18
    iget-object p0, p0, LListFluHelper/ListRecycleViewAdapter;->listRVClick:LListFluHelper/ListRVClick;

    return-object p0
.end method

.method private getRealTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "-"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "00:00"

    return-object p1
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    const-string p1, "<1min"

    return-object p1

    :cond_0
    const/16 v1, 0xe10

    if-ge p1, v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "min"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 110
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p1, 0xe10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v1

    div-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "min"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public RefrashData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    .line 28
    iput-object p1, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, LListFluHelper/ListRecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 91
    iget-object v0, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDBManager/Database/RecordData;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getListRVClick(LListFluHelper/ListRVClick;)V
    .locals 0

    .line 115
    iput-object p1, p0, LListFluHelper/ListRecycleViewAdapter;->listRVClick:LListFluHelper/ListRVClick;

    return-void
.end method

.method public onBindViewHolder(LListFluHelper/ListRecycleViewAdapter$ViewHolder;I)V
    .locals 4
    .param p1    # LListFluHelper/ListRecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    iget-object v0, p0, LListFluHelper/ListRecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordData;

    .line 46
    iget-object v1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->stopTimeTV:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LListFluHelper/ListRecycleViewAdapter;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->startTimeTV:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LListFluHelper/ListRecycleViewAdapter;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, LDBManager/Database/RecordData;->getRecordUnicode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordData;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v0

    invoke-direct {p0, v0}, LListFluHelper/ListRecycleViewAdapter;->getTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    new-instance v0, LListFluHelper/ListRecycleViewAdapter$1;

    invoke-direct {v0, p0, p2}, LListFluHelper/ListRecycleViewAdapter$1;-><init>(LListFluHelper/ListRecycleViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, LListFluHelper/ListRecycleViewAdapter;->onBindViewHolder(LListFluHelper/ListRecycleViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LListFluHelper/ListRecycleViewAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    sget-object p2, LListFluHelper/ListRecycleViewAdapter;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sput-object p2, LListFluHelper/ListRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0041

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, LListFluHelper/ListRecycleViewAdapter$ViewHolder;

    invoke-direct {p2, p1}, LListFluHelper/ListRecycleViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, LListFluHelper/ListRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LListFluHelper/ListRecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(LListFluHelper/ListRecycleViewAdapter$ViewHolder;)V
    .locals 0
    .param p1    # LListFluHelper/ListRecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, LListFluHelper/ListRecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, LListFluHelper/ListRecycleViewAdapter;->onViewRecycled(LListFluHelper/ListRecycleViewAdapter$ViewHolder;)V

    return-void
.end method
