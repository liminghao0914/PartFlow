.class public final Lcom/haibin/calendarview/WeekViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;
    }
.end annotation


# instance fields
.field private isUpdateWeekView:Z

.field private isUsingScrollToCalendar:Z

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mWeekCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/WeekViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    return-void
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/WeekViewPager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    return p0
.end method

.method static synthetic access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/WeekViewPager;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/WeekViewPager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    return p0
.end method

.method private init()V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 66
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 67
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 68
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 69
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 70
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 71
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 72
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v7

    .line 65
    invoke-static/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 73
    new-instance v0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;-><init>(Lcom/haibin/calendarview/WeekViewPager;Lcom/haibin/calendarview/WeekViewPager$1;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    new-instance v0, Lcom/haibin/calendarview/WeekViewPager$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/WeekViewPager$1;-><init>(Lcom/haibin/calendarview/WeekViewPager;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method final clearMultiSelect()V
    .locals 3

    const/4 v0, 0x0

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    const/4 v2, -0x1

    .line 391
    iput v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 392
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final clearSelectRange()V
    .locals 2

    const/4 v0, 0x0

    .line 374
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 376
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final clearSingleSelect()V
    .locals 3

    const/4 v0, 0x0

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 382
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    const/4 v2, -0x1

    .line 383
    iput v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 384
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getCurrentWeekCalendars()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCalendars(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemesFromMap(Ljava/util/List;)V

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 127
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 128
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 129
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 130
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 131
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 132
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 133
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v7

    .line 126
    invoke-static/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 134
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isWeekViewScrollable()Z

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

    .line 412
    iget-object p2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 413
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

    .line 399
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isWeekViewScrollable()Z

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

.method scrollToCalendar(IIIZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 181
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 183
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 184
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 185
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 186
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 187
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 188
    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 189
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 190
    invoke-virtual {p0, v0, p4}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 191
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {p1, v0, p2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    .line 195
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {p1, v0, p2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result p1

    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result p1

    .line 198
    iget-object p2, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    return-void
.end method

.method scrollToCurrent(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 206
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 207
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 208
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 209
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 210
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    .line 206
    invoke-static {v1, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I

    move-result v1

    sub-int/2addr v1, v0

    .line 211
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 213
    iput-boolean v2, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 215
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/BaseWeekView;

    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/haibin/calendarview/BaseWeekView;->performClickCalendar(Lcom/haibin/calendarview/Calendar;Z)V

    .line 219
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 220
    invoke-virtual {p1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {p1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 61
    invoke-direct {p0}, Lcom/haibin/calendarview/WeekViewPager;->init()V

    return-void
.end method

.method updateCurrentDate()V
    .locals 2

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 316
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateCurrentDate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateDefaultSelect()V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseWeekView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 274
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    :cond_0
    return-void
.end method

.method final updateItemHeight()V
    .locals 2

    const/4 v0, 0x0

    .line 363
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 365
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateItemHeight()V

    .line 366
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateRange()V
    .locals 3

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 151
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 153
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 156
    :cond_0
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 157
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 159
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v2, v0, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v2, v0, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    return-void
.end method

.method updateScheme()V
    .locals 2

    const/4 v0, 0x0

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 306
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateSelected()V
    .locals 3

    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 284
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 285
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 239
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 240
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 241
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 242
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    .line 238
    invoke-static {p1, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 243
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 245
    invoke-virtual {p0, v0, p2}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/haibin/calendarview/BaseWeekView;

    if-eqz p2, :cond_1

    .line 248
    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 249
    invoke-virtual {p2}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    :cond_1
    return-void
.end method

.method updateShowMode()V
    .locals 2

    const/4 v0, 0x0

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 325
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 326
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateShowMode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateSingleSelect()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 263
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateSingleSelect()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final updateStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 293
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 294
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 295
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateStyle()V

    .line 296
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWeekStart()V
    .locals 9

    .line 334
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 336
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 337
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 338
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v4

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 339
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v5

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 340
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v6

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 341
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v7

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 342
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v8

    .line 335
    invoke-static/range {v2 .. v8}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 347
    iget v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 349
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/BaseWeekView;

    .line 353
    invoke-virtual {v2}, Lcom/haibin/calendarview/BaseWeekView;->updateWeekStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 356
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v1, v0}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    return-void
.end method

.method updateWeekViewClass()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 142
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    return-void
.end method
