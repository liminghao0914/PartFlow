.class final Lcom/haibin/calendarview/YearViewAdapter;
.super Lcom/haibin/calendarview/BaseRecyclerAdapter;
.source "YearViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haibin/calendarview/BaseRecyclerAdapter<",
        "Lcom/haibin/calendarview/Month;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mItemHeight:I

.field private mItemWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/haibin/calendarview/Month;I)V
    .locals 0

    .line 66
    check-cast p1, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;

    .line 67
    iget-object p1, p1, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    .line 68
    invoke-virtual {p2}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/haibin/calendarview/YearView;->init(II)V

    .line 69
    iget p2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemWidth:I

    iget p3, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/haibin/calendarview/YearView;->measureSize(II)V

    return-void
.end method

.method bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lcom/haibin/calendarview/Month;

    invoke-virtual {p0, p1, p2, p3}, Lcom/haibin/calendarview/YearViewAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/haibin/calendarview/Month;I)V

    return-void
.end method

.method onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 47
    iget-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewClassPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lcom/haibin/calendarview/DefaultYearView;

    iget-object p2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/haibin/calendarview/DefaultYearView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 52
    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/YearView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    new-instance p1, Lcom/haibin/calendarview/DefaultYearView;

    iget-object p2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/haibin/calendarview/DefaultYearView;-><init>(Landroid/content/Context;)V

    .line 58
    :goto_0
    new-instance p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/YearView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance p2, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;

    iget-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-direct {p2, p1, v0}, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;-><init>(Landroid/view/View;Lcom/haibin/calendarview/CalendarViewDelegate;)V

    return-object p2
.end method

.method final setYearViewSize(II)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemWidth:I

    .line 41
    iput p2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemHeight:I

    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-void
.end method
