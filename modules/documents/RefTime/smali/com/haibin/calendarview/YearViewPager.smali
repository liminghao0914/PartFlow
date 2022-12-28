.class public final Lcom/haibin/calendarview/YearViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "YearViewPager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private isUpdateYearView:Z

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

.field private mYearCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/YearViewPager;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/YearViewPager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    return p0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/haibin/calendarview/YearViewPager;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-object p0
.end method

.method private static getHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 1

    const-string v0, "window"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 178
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    const/4 v0, 0x2

    .line 180
    new-array v0, v0, [I

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    .line 183
    aget p1, v0, p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method notifyDataSetChanged()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    .line 104
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isYearViewScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/haibin/calendarview/YearViewPager;->getHeight(Landroid/content/Context;Landroid/view/View;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 165
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isYearViewScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method scrollToYear(IZ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 93
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method final setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 50
    iget-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result p1

    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    .line 51
    new-instance p1, Lcom/haibin/calendarview/YearViewPager$1;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/YearViewPager$1;-><init>(Lcom/haibin/calendarview/YearViewPager;)V

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/YearViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(I)V

    return-void
.end method

.method final update()V
    .locals 2

    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 132
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final updateRange()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    .line 122
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    return-void
.end method

.method final updateStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 154
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->updateStyle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final updateWeekStart()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 143
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->updateWeekStart()V

    .line 144
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
