.class public LRecycleViewHelper/RecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRecycleViewHelper/RecycleViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LRecycleViewHelper/RecycleViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field CountTime:I

.field isCountdown:Z

.field isToday:Z

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation
.end field

.field rvItemClick:LRecycleViewHelper/RVItemClick;

.field totalTime:I

.field private x:I


# direct methods
.method public constructor <init>(Ljava/util/List;LDBManager/Database/UserSettingData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;",
            "LDBManager/Database/UserSettingData;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x1e

    .line 32
    iput v0, p0, LRecycleViewHelper/RecycleViewAdapter;->CountTime:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isToday:Z

    const/4 v0, 0x0

    .line 156
    iput v0, p0, LRecycleViewHelper/RecycleViewAdapter;->x:I

    .line 143
    iput v0, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    .line 144
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    .line 146
    :try_start_0
    invoke-virtual {p2}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->CountTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :goto_0
    invoke-virtual {p2}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result p1

    iput-boolean p1, p0, LRecycleViewHelper/RecycleViewAdapter;->isCountdown:Z

    .line 152
    :goto_1
    iget-object p1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 153
    iget p1, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method private AddZero(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(LRecycleViewHelper/RecycleViewAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, LRecycleViewHelper/RecycleViewAdapter;->x:I

    return p0
.end method

.method static synthetic access$002(LRecycleViewHelper/RecycleViewAdapter;I)I
    .locals 0

    .line 26
    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->x:I

    return p1
.end method

.method private getTime(IZ)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe10

    const/16 v1, 0x3c

    if-eqz p2, :cond_4

    if-gez p1, :cond_0

    const-string p1, "00:00:00"

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "00:00:00"

    return-object p1

    :cond_1
    if-ge p1, v1, :cond_2

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00:00:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-ge p1, v0, :cond_3

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v0, p1, 0x3c

    invoke-direct {p0, v0}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v1

    invoke-direct {p0, p1}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 321
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, p1, 0xe10

    invoke-direct {p0, v0}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v0, p1, 0xe10

    div-int/2addr v0, v1

    invoke-direct {p0, v0}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v1

    invoke-direct {p0, p1}, LRecycleViewHelper/RecycleViewAdapter;->AddZero(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    if-ge p1, v1, :cond_6

    const-string p1, "<1min"

    return-object p1

    :cond_6
    if-ge p1, v0, :cond_7

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "min"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 334
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v0

    div-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "min"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public AddItem(LDBManager/MainActivityData/RecordList;Z)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 53
    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v0

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 54
    iget p1, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v0}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    .line 55
    iget-object p1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, LRecycleViewHelper/RecycleViewAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public AddRecord(LDBManager/MainActivityData/RecordList;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v1

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 130
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v2

    iget-object v3, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 133
    invoke-virtual {p0, v0}, LRecycleViewHelper/RecycleViewAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    :goto_1
    iget v0, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    :cond_3
    return-void
.end method

.method public EditItem(LDBManager/MainActivityData/RecordList;I)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 68
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, LDBManager/MainActivityData/RecordList;->setRecordName(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v1

    invoke-virtual {p2, v1}, LDBManager/MainActivityData/RecordList;->setRecordUnicode(I)V

    .line 70
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v1

    invoke-virtual {p2, v1}, LDBManager/MainActivityData/RecordList;->setRecordSort(I)V

    .line 71
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, LDBManager/MainActivityData/RecordList;->setRecordSortColor(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LDBManager/MainActivityData/RecordList;->setRecordSortColorTiming(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, LRecycleViewHelper/RecycleViewAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public ItemClick(LRecycleViewHelper/RVItemClick;)V
    .locals 0

    .line 348
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter;->rvItemClick:LRecycleViewHelper/RVItemClick;

    return-void
.end method

.method public RefreshTimingData(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isToday:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {v1, p2}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, LDBManager/MainActivityData/RecordList;->setTimingRecordTime(I)V

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, LRecycleViewHelper/RecycleViewAdapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SetCounting(LDBManager/Database/UserSettingData;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v0

    iput-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isCountdown:Z

    .line 38
    :try_start_0
    invoke-virtual {p1}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->CountTime:I

    .line 40
    invoke-virtual {p0}, LRecycleViewHelper/RecycleViewAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public StartTiming(ILjava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p2, v0}, LDBManager/MainActivityData/RecordList;->setTimingRecordTime(I)V

    .line 115
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    add-int/2addr p1, v0

    .line 116
    invoke-virtual {p0, p1}, LRecycleViewHelper/RecycleViewAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p2, v0}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    .line 119
    iget p2, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getTimingRecordTime()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    .line 120
    invoke-virtual {p0}, LRecycleViewHelper/RecycleViewAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public UpdateAllData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;Z)V"
        }
    .end annotation

    .line 82
    iput-boolean p2, p0, LRecycleViewHelper/RecycleViewAdapter;->isToday:Z

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput p1, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    .line 87
    :goto_0
    iget-object p2, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 88
    iget p2, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v0}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, LRecycleViewHelper/RecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 274
    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 303
    iget-object v0, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # LRecycleViewHelper/RecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    invoke-virtual {p1}, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v0, 0x4

    if-nez p2, :cond_0

    .line 173
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    const v2, 0x3f35c28f    # 0.71f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 174
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 175
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 178
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v1, v0}, LTimeProgressBar/TimeProgressBar;->setVisibility(I)V

    .line 182
    iget-object v1, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 184
    :cond_0
    iget-object v1, p0, LRecycleViewHelper/RecycleViewAdapter;->mData:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/MainActivityData/RecordList;

    .line 185
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 186
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LTimeProgressBar/TimeProgressBar;->setFinishedPartColor(Ljava/lang/String;)V

    .line 187
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LTimeProgressBar/TimeProgressBar;->setLoadingPartColor(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isEditable()Z

    move-result v0

    const/16 v2, 0x13

    const/16 v3, 0x8

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 194
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget v0, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v4, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    div-int/2addr v0, v4

    .line 197
    :goto_0
    iget-object v4, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v4, v0}, LTimeProgressBar/TimeProgressBar;->setFinishedPartPercent(I)V

    .line 198
    iget-object v4, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v4, v0}, LTimeProgressBar/TimeProgressBar;->setStrPercent(I)V

    .line 199
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isToday:Z

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    iget-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isCountdown:Z

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    iget v2, p0, LRecycleViewHelper/RecycleViewAdapter;->CountTime:I

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getTimingRecordTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v3

    invoke-direct {p0, v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->getTime(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getTimingRecordTime()I

    move-result v2

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v3

    invoke-direct {p0, v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->getTime(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v2

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v3

    invoke-direct {p0, v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->getTime(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, LTimeProgressBar/TimeProgressBar;->setStatus(Z)V

    goto/16 :goto_4

    .line 218
    :cond_5
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 220
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    const-string v4, "#22FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget v0, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v4, p0, LRecycleViewHelper/RecycleViewAdapter;->totalTime:I

    div-int/2addr v0, v4

    .line 223
    :goto_2
    iget-object v4, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v4, v0}, LTimeProgressBar/TimeProgressBar;->setFinishedPartPercent(I)V

    .line 224
    iget-object v4, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v4, v0}, LTimeProgressBar/TimeProgressBar;->setStrPercent(I)V

    .line 225
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 232
    :cond_7
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :goto_3
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v2

    invoke-virtual {v0, v2}, LTimeProgressBar/TimeProgressBar;->setStatus(Z)V

    .line 238
    iget-boolean v0, p0, LRecycleViewHelper/RecycleViewAdapter;->isCountdown:Z

    if-eqz v0, :cond_8

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    iget v2, p0, LRecycleViewHelper/RecycleViewAdapter;->CountTime:I

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v1

    invoke-direct {p0, v2, v1}, LRecycleViewHelper/RecycleViewAdapter;->getTime(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 241
    :cond_8
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v2

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v1

    invoke-direct {p0, v2, v1}, LRecycleViewHelper/RecycleViewAdapter;->getTime(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_4
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    new-instance v1, LRecycleViewHelper/RecycleViewAdapter$1;

    invoke-direct {v1, p0}, LRecycleViewHelper/RecycleViewAdapter$1;-><init>(LRecycleViewHelper/RecycleViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    new-instance v1, LRecycleViewHelper/RecycleViewAdapter$2;

    invoke-direct {v1, p0, p2}, LRecycleViewHelper/RecycleViewAdapter$2;-><init>(LRecycleViewHelper/RecycleViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    new-instance v1, LRecycleViewHelper/RecycleViewAdapter$3;

    invoke-direct {v1, p0, p2, p1}, LRecycleViewHelper/RecycleViewAdapter$3;-><init>(LRecycleViewHelper/RecycleViewAdapter;ILRecycleViewHelper/RecycleViewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    check-cast p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, LRecycleViewHelper/RecycleViewAdapter;->onBindViewHolder(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LRecycleViewHelper/RecycleViewAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 160
    sget-object p2, LRecycleViewHelper/RecycleViewAdapter;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sput-object p2, LRecycleViewHelper/RecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0054

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 164
    new-instance p2, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    invoke-direct {p2, p1}, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

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

    .line 26
    invoke-virtual {p0, p1, p2}, LRecycleViewHelper/RecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;)V
    .locals 2
    .param p1    # LRecycleViewHelper/RecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    iget-object v0, p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    check-cast p1, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, LRecycleViewHelper/RecycleViewAdapter;->onViewRecycled(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;)V

    return-void
.end method
