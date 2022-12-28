.class public final Lcom/haibin/calendarview/MonthViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "MonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;
    }
.end annotation


# instance fields
.field private isUpdateMonthView:Z

.field private isUsingScrollToCalendar:Z

.field private mCurrentViewHeight:I

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mMonthCount:I

.field private mNextViewHeight:I

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mPreViewHeight:I

.field mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field mWeekPager:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/MonthViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    return-void
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/MonthViewPager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/haibin/calendarview/MonthViewPager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    return p0
.end method

.method static synthetic access$602(Lcom/haibin/calendarview/MonthViewPager;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    return p0
.end method

.method static synthetic access$800(Lcom/haibin/calendarview/MonthViewPager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    return p0
.end method

.method private init()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 85
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 86
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    .line 87
    new-instance v0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;-><init>(Lcom/haibin/calendarview/MonthViewPager;Lcom/haibin/calendarview/MonthViewPager$1;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    new-instance v0, Lcom/haibin/calendarview/MonthViewPager$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/MonthViewPager$1;-><init>(Lcom/haibin/calendarview/MonthViewPager;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private updateMonthViewHeight(II)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 193
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 194
    iget p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 202
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 203
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 201
    invoke-static {p1, p2, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 209
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 210
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 208
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    add-int/lit8 p2, p1, -0x1

    .line 212
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 213
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 214
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 212
    invoke-static {p2, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result p2

    iput p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    const/4 p2, 0x2

    .line 215
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 216
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 217
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 215
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, p2, -0x1

    .line 219
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 220
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 221
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 219
    invoke-static {p1, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    if-ne p2, v0, :cond_4

    add-int/2addr p1, v1

    .line 223
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 224
    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result p2

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 225
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 223
    invoke-static {p1, v1, p2, v0, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_0

    :cond_4
    add-int/2addr p2, v1

    .line 227
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 228
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 229
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 227
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method final clearMultiSelect()V
    .locals 3

    const/4 v0, 0x0

    .line 553
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    const/4 v2, -0x1

    .line 555
    iput v2, v1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 556
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final clearSelectRange()V
    .locals 2

    const/4 v0, 0x0

    .line 532
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 533
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 534
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final clearSingleSelect()V
    .locals 3

    const/4 v0, 0x0

    .line 542
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    const/4 v2, -0x1

    .line 544
    iput v2, v1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 545
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getCurrentMonthCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseMonthView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    iget-object v0, v0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 239
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 240
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    .line 241
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isMonthViewScrollable()Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isMonthViewScrollable()Z

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

    .line 301
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 302
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 303
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 304
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 305
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 306
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 307
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 308
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 309
    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 310
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 311
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0xc

    .line 312
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 313
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result p2

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 315
    iput-boolean p3, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 317
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/BaseMonthView;

    if-eqz p1, :cond_1

    .line 321
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 322
    invoke-virtual {p1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 323
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz p2, :cond_1

    .line 324
    iget-object p4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p4, p4, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, p4}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result p1

    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result p1

    .line 329
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_3

    if-eqz p5, :cond_3

    .line 333
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {p1, v0, p3}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz p1, :cond_4

    .line 336
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {p1, v0, p3}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    return-void
.end method

.method scrollToCurrent(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 347
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 348
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 349
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 351
    iput-boolean v2, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 354
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/BaseMonthView;

    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 359
    invoke-virtual {p1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 360
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_1

    .line 361
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 366
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {p1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_2
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 573
    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p2, 0x0

    .line 579
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 71
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 72
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 74
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 75
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/haibin/calendarview/MonthViewPager;->init()V

    return-void
.end method

.method updateCurrentDate()V
    .locals 2

    const/4 v0, 0x0

    .line 435
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 436
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 437
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateCurrentDate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateDefaultSelect()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseMonthView;

    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 390
    iput v1, v0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    if-ltz v1, :cond_0

    .line 391
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    :cond_1
    return-void
.end method

.method final updateItemHeight()V
    .locals 8

    const/4 v0, 0x0

    .line 491
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 492
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 493
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateItemHeight()V

    .line 494
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 499
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 500
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 501
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 499
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 503
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 504
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 505
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 503
    invoke-static {v1, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    const/4 v1, 0x2

    .line 506
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 507
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 508
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 506
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 510
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 511
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v6

    iget-object v7, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 512
    invoke-virtual {v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v7

    .line 510
    invoke-static {v0, v4, v5, v6, v7}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v4

    iput v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    if-ne v1, v2, :cond_2

    add-int/2addr v0, v3

    .line 514
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 515
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 516
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 514
    invoke-static {v0, v3, v1, v2, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_1

    :cond_2
    add-int/2addr v1, v3

    .line 518
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 519
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 520
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 518
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    .line 523
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 524
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method updateMonthViewClass()V
    .locals 1

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 249
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    return-void
.end method

.method final updateRange()V
    .locals 5

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 258
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 260
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 263
    :cond_0
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 264
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 265
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xc

    .line 266
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 267
    invoke-virtual {p0, v2, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/BaseMonthView;

    if-eqz v2, :cond_1

    .line 270
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 271
    invoke-virtual {v2}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 272
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v3, :cond_1

    .line 273
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2, v4}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v3, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v2, v1, v0}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_4

    .line 287
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v2, v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    return-void
.end method

.method updateScheme()V
    .locals 2

    const/4 v0, 0x0

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 427
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateSelected()V
    .locals 3

    const/4 v0, 0x0

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 405
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 406
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateShowMode()V
    .locals 2

    const/4 v0, 0x0

    .line 446
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 447
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 448
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateShowMode()V

    .line 449
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 453
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    .line 454
    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    goto :goto_1

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 458
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 459
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    :cond_2
    return-void
.end method

.method final updateStyle()V
    .locals 2

    const/4 v0, 0x0

    .line 414
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 415
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 416
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateStyle()V

    .line 417
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateWeekStart()V
    .locals 2

    const/4 v0, 0x0

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 471
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 472
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateWeekStart()V

    .line 473
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 477
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 478
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 479
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    return-void
.end method
