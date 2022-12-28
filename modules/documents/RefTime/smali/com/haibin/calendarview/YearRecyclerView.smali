.class public final Lcom/haibin/calendarview/YearRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "YearRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Lcom/haibin/calendarview/YearViewAdapter;

    invoke-direct {p2, p1}, Lcom/haibin/calendarview/YearViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    .line 39
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/YearRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/YearRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    new-instance p2, Lcom/haibin/calendarview/YearRecyclerView$1;

    invoke-direct {p2, p0}, Lcom/haibin/calendarview/YearRecyclerView$1;-><init>(Lcom/haibin/calendarview/YearRecyclerView;)V

    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/YearViewAdapter;->setOnItemClickListener(Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearViewAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    return-object p0
.end method


# virtual methods
.method final init(I)V
    .locals 6

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 81
    invoke-virtual {v0, p1, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 82
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v3

    .line 83
    new-instance v4, Lcom/haibin/calendarview/Month;

    invoke-direct {v4}, Lcom/haibin/calendarview/Month;-><init>()V

    .line 84
    iget-object v5, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {p1, v2, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Month;->setDiff(I)V

    .line 85
    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/Month;->setCount(I)V

    .line 86
    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/Month;->setMonth(I)V

    .line 87
    invoke-virtual {v4, p1}, Lcom/haibin/calendarview/Month;->setYear(I)V

    .line 88
    iget-object v3, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v3, v4}, Lcom/haibin/calendarview/YearViewAdapter;->addItem(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 125
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    div-int/lit8 p1, p1, 0x3

    div-int/lit8 p2, p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/YearViewAdapter;->setYearViewSize(II)V

    return-void
.end method

.method final setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 70
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/YearViewAdapter;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    return-void
.end method

.method final updateStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearView;

    .line 107
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearView;->updateStyle()V

    .line 108
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final updateWeekStart()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Month;

    .line 97
    invoke-virtual {v1}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Month;->setDiff(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
