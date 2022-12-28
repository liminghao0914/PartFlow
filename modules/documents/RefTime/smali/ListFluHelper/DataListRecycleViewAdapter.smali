.class public LListFluHelper/DataListRecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DataListRecycleViewAdapter.java"

# interfaces
.implements LListFluHelper/ListRVClick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LListFluHelper/DataListRecycleViewAdapter$ViewHolder;,
        LListFluHelper/DataListRecycleViewAdapter$DataListClick;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LListFluHelper/DataListRecycleViewAdapter$ViewHolder;",
        ">;",
        "LListFluHelper/ListRVClick;"
    }
.end annotation


# instance fields
.field private dataListClick:LListFluHelper/DataListRecycleViewAdapter$DataListClick;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LListFluHelper/ListFlu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LListFluHelper/ListFlu;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    .line 35
    iput-object p2, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static dateToWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "\u5468\u65e5"

    aput-object v10, v9, v7

    const-string v10, "\u5468\u4e00"

    aput-object v10, v9, v6

    const-string v10, "\u5468\u4e8c"

    aput-object v10, v9, v5

    const-string v5, "\u5468\u4e09"

    aput-object v5, v9, v4

    const-string v4, "\u5468\u56db"

    aput-object v4, v9, v3

    const-string v3, "\u5468\u4e94"

    aput-object v3, v9, v2

    const-string v2, "\u5468\u516d"

    aput-object v2, v9, v1

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 165
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 166
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 171
    :goto_0
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v6

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 174
    :cond_0
    aget-object p0, v9, p0

    return-object p0

    .line 176
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "Sunday"

    aput-object v10, v9, v7

    const-string v10, "Monday"

    aput-object v10, v9, v6

    const-string v10, "Tuesday"

    aput-object v10, v9, v5

    const-string v5, "Wednesday"

    aput-object v5, v9, v4

    const-string v4, "Thursday"

    aput-object v4, v9, v3

    const-string v3, "Friday"

    aput-object v3, v9, v2

    const-string v2, "Saturday"

    aput-object v2, v9, v1

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 181
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 182
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 187
    :goto_1
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v6

    if-gez p0, :cond_2

    const/4 p0, 0x0

    .line 190
    :cond_2
    aget-object p0, v9, p0

    return-object p0
.end method

.method private getShowDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eca\u65e5\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LListFluHelper/DataListRecycleViewAdapter;->dateToWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM\u6708dd\u65e5"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 130
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 135
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LListFluHelper/DataListRecycleViewAdapter;->dateToWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LListFluHelper/DataListRecycleViewAdapter;->dateToWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Today"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    .line 144
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 149
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LListFluHelper/DataListRecycleViewAdapter;->dateToWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
            "LListFluHelper/ListFlu;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    .line 39
    iput-object p1, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, LListFluHelper/DataListRecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public itemClick(LDBManager/Database/RecordData;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, LDBManager/Database/RecordData;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "\u5148\u7ed3\u675f\u6d3b\u52a8\u518d\u6765\u4fee\u6539\u5427"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, LListFluHelper/DataListRecycleViewAdapter;->dataListClick:LListFluHelper/DataListRecycleViewAdapter$DataListClick;

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0}, LListFluHelper/DataListRecycleViewAdapter$DataListClick;->DataItemClick()V

    .line 89
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recordData"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(LListFluHelper/DataListRecycleViewAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # LListFluHelper/DataListRecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LListFluHelper/ListFlu;

    .line 57
    invoke-virtual {v0}, LListFluHelper/ListFlu;->getListRecord()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    iget-object v1, p1, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;->recordDate:Landroid/widget/TextView;

    invoke-virtual {v0}, LListFluHelper/ListFlu;->getListDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LListFluHelper/DataListRecycleViewAdapter;->getShowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p1, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 61
    new-instance v0, LListFluHelper/ListRecycleViewAdapter;

    iget-object v1, p0, LListFluHelper/DataListRecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LListFluHelper/ListFlu;

    invoke-virtual {p2}, LListFluHelper/ListFlu;->getListRecord()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, LListFluHelper/ListRecycleViewAdapter;-><init>(Ljava/util/List;)V

    .line 62
    iget-object p1, p1, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    invoke-virtual {v0, p0}, LListFluHelper/ListRecycleViewAdapter;->getListRVClick(LListFluHelper/ListRVClick;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    check-cast p1, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, LListFluHelper/DataListRecycleViewAdapter;->onBindViewHolder(LListFluHelper/DataListRecycleViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LListFluHelper/DataListRecycleViewAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    iget-object p2, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LListFluHelper/DataListRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c002b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;

    invoke-direct {p2, p1}, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

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

    .line 28
    invoke-virtual {p0, p1, p2}, LListFluHelper/DataListRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LListFluHelper/DataListRecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(LListFluHelper/DataListRecycleViewAdapter$ViewHolder;)V
    .locals 0
    .param p1    # LListFluHelper/DataListRecycleViewAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    check-cast p1, LListFluHelper/DataListRecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, LListFluHelper/DataListRecycleViewAdapter;->onViewRecycled(LListFluHelper/DataListRecycleViewAdapter$ViewHolder;)V

    return-void
.end method

.method public setDataListClick(LListFluHelper/DataListRecycleViewAdapter$DataListClick;)V
    .locals 0

    .line 99
    iput-object p1, p0, LListFluHelper/DataListRecycleViewAdapter;->dataListClick:LListFluHelper/DataListRecycleViewAdapter$DataListClick;

    return-void
.end method
