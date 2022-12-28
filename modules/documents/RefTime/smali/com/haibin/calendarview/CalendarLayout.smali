.class public Lcom/haibin/calendarview/CalendarLayout;
.super Landroid/widget/LinearLayout;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER:I = 0x1

.field private static final CALENDAR_SHOW_MODE_BOTH_MONTH_WEEK_VIEW:I = 0x0

.field private static final CALENDAR_SHOW_MODE_ONLY_MONTH_VIEW:I = 0x2

.field private static final CALENDAR_SHOW_MODE_ONLY_WEEK_VIEW:I = 0x1

.field private static final GESTURE_MODE_DEFAULT:I = 0x0

.field private static final GESTURE_MODE_DISABLED:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final STATUS_EXPAND:I = 0x0

.field private static final STATUS_SHRINK:I = 0x1


# instance fields
.field private downY:F

.field private isAnimating:Z

.field private isWeekView:Z

.field private mActivePointerId:I

.field private mCalendarShowMode:I

.field mCalendarView:Lcom/haibin/calendarview/CalendarView;

.field mContentView:Landroid/view/ViewGroup;

.field private mContentViewId:I

.field private mContentViewTranslateY:I

.field private mDefaultStatus:I

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mGestureMode:I

.field private mItemHeight:I

.field private mLastY:F

.field private mMaximumVelocity:I

.field mMonthView:Lcom/haibin/calendarview/MonthViewPager;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPagerTranslateY:I

.field mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

.field mYearView:Lcom/haibin/calendarview/YearViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    .line 150
    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarLayout;->setOrientation(I)V

    .line 170
    sget-object v1, Lcom/haibin/calendarview/R$styleable;->CalendarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 171
    sget v1, Lcom/haibin/calendarview/R$styleable;->CalendarLayout_calendar_content_view_id:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewId:I

    .line 172
    sget v1, Lcom/haibin/calendarview/R$styleable;->CalendarLayout_default_status:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDefaultStatus:I

    .line 173
    sget v1, Lcom/haibin/calendarview/R$styleable;->CalendarLayout_calendar_show_mode:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 174
    sget v1, Lcom/haibin/calendarview/R$styleable;->CalendarLayout_gesture_mode:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    .line 175
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/haibin/calendarview/CalendarLayout;->mTouchSlop:I

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMaximumVelocity:I

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    return p0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    return p0
.end method

.method static synthetic access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    return p0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/CalendarLayout;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->hideWeek(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$600(Lcom/haibin/calendarview/CalendarLayout;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    return p0
.end method

.method static synthetic access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    return p1
.end method

.method static synthetic access$700(Lcom/haibin/calendarview/CalendarLayout;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->showWeek()V

    return-void
.end method

.method private getCalendarViewHeight()I
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 945
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 522
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 524
    iput p2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    :cond_0
    return p1
.end method

.method private hideWeek(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowMonthView()V

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 837
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    return-void
.end method

.method private initCalendarPosition(Lcom/haibin/calendarview/Calendar;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 203
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 204
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    return-void
.end method

.method private onShowMonthView()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    :cond_1
    return-void
.end method

.method private onShowWeekView()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-nez v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    :cond_1
    return-void
.end method

.method private showWeek()V
    .locals 2

    .line 844
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowWeekView()V

    .line 845
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 846
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    return-void
.end method

.method private translationViewPager()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 609
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/MonthViewPager;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 411
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 414
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 415
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_9

    .line 418
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 424
    :cond_2
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v1, :cond_8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 436
    :cond_5
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6

    .line 442
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 443
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isScrollTop()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 445
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 450
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 430
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 426
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 421
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public expand()Z
    .locals 1

    const/16 v0, 0xf0

    .line 674
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z

    move-result v0

    return v0
.end method

.method public expand(I)Z
    .locals 6

    .line 685
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 691
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowMonthView()V

    .line 692
    iput-boolean v1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    .line 693
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 696
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    aput v5, v4, v1

    const/4 v1, 0x0

    aput v1, v4, v2

    .line 695
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, p1

    .line 697
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 698
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$3;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$3;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 707
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$4;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$4;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public hideCalendarView()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 275
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    return-void
.end method

.method final hideContentView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 906
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    .line 908
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 909
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$9;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$9;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 910
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method final initStatus()V
    .locals 2

    .line 776
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDefaultStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 779
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    return-void

    .line 784
    :cond_1
    new-instance v0, Lcom/haibin/calendarview/CalendarLayout$7;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarLayout$7;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-nez v0, :cond_3

    return-void

    .line 820
    :cond_3
    new-instance v0, Lcom/haibin/calendarview/CalendarLayout$8;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarLayout$8;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final isExpand()Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isScrollTop()Z
    .locals 4

    .line 881
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;

    if-eqz v1, :cond_0

    .line 882
    check-cast v0, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;

    invoke-interface {v0}, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;->isScrollToTop()Z

    move-result v0

    return v0

    .line 884
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 885
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 886
    :cond_2
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 888
    check-cast v0, Landroid/widget/AbsListView;

    .line 889
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_3

    .line 890
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 895
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 590
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 591
    sget v0, Lcom/haibin/calendarview/R$id;->vp_month:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/MonthViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    .line 592
    sget v0, Lcom/haibin/calendarview/R$id;->vp_week:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/WeekViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 593
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/CalendarView;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 596
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewId:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 597
    sget v0, Lcom/haibin/calendarview/R$id;->selectLayout:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/YearViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    .line 598
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 599
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 455
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_f

    .line 462
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 464
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 468
    :cond_2
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v2, :cond_e

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 476
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_5

    goto/16 :goto_0

    .line 485
    :cond_5
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float v0, v4, v0

    const/4 v2, 0x0

    cmpg-float v5, v0, v2

    if-gez v5, :cond_6

    .line 489
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    return v3

    :cond_6
    cmpl-float v5, v0, v2

    if-lez v5, :cond_7

    .line 497
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 498
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_7

    .line 499
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isScrollTop()Z

    move-result v5

    if-nez v5, :cond_7

    return v3

    :cond_7
    cmpl-float v5, v0, v2

    if-lez v5, :cond_8

    .line 504
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42c40000    # 98.0f

    invoke-static {v5, v6}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_8

    return v3

    .line 508
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    cmpl-float v3, v0, v2

    if-lez v3, :cond_9

    .line 509
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    cmpg-float v3, v3, v2

    if-lez v3, :cond_a

    :cond_9
    cmpg-float v0, v0, v2

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 510
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c

    .line 511
    :cond_a
    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    return v1

    .line 480
    :cond_b
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 481
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 482
    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 517
    :cond_c
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 474
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_e
    :goto_2
    return v3

    .line 465
    :cond_f
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 532
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 539
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 540
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 542
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 543
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 544
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 545
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 542
    invoke-static {v0, v1, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    add-int/2addr v0, v2

    .line 548
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 550
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    .line 551
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    sub-int/2addr v1, v2

    .line 552
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 554
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 555
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void

    :cond_1
    if-lt v0, v1, :cond_2

    .line 559
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    add-int p2, v0, v2

    .line 561
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 563
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v1

    add-int/2addr p2, v1

    .line 561
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move v1, v0

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    .line 564
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    .line 565
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 569
    :cond_3
    :goto_0
    iget v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 570
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_4

    goto :goto_1

    .line 572
    :cond_4
    iget v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    if-ne v3, v6, :cond_6

    iget-boolean v3, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    if-nez v3, :cond_6

    .line 573
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v3

    if-eqz v3, :cond_5

    sub-int/2addr v1, v0

    goto :goto_3

    :cond_5
    sub-int/2addr v1, v2

    .line 576
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v1, v0

    goto :goto_3

    :cond_6
    sub-int/2addr v1, v2

    .line 579
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v1, v0

    goto :goto_3

    .line 571
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getHeight()I

    move-result v0

    :goto_2
    sub-int/2addr v1, v0

    .line 581
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 582
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 584
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 585
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void

    .line 533
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 641
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 642
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "isExpand"

    .line 643
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 645
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$1;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$1;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 652
    :cond_0
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$2;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$2;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    .line 660
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super"

    .line 634
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "isExpand"

    .line 635
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 294
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v1, :cond_11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_1

    return v2

    .line 302
    :cond_1
    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_2

    return v2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    goto/16 :goto_3

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 312
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 320
    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 321
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 322
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-nez v0, :cond_f

    .line 324
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    goto/16 :goto_2

    .line 376
    :pswitch_2
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 377
    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-ne v1, v4, :cond_4

    goto/16 :goto_2

    .line 379
    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    goto/16 :goto_2

    .line 330
    :pswitch_3
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    .line 331
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_5

    .line 333
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 334
    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 336
    :cond_5
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float v0, v3, v0

    cmpg-float v4, v0, v5

    if-gez v4, :cond_7

    .line 339
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_7

    .line 340
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1, v2}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 345
    iget-boolean p1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz p1, :cond_6

    .line 346
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    invoke-interface {p1, v2}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 348
    :cond_6
    iput-boolean v1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    return v2

    .line 351
    :cond_7
    invoke-direct {p0, v2}, Lcom/haibin/calendarview/CalendarLayout;->hideWeek(Z)V

    cmpl-float v1, v0, v5

    if-lez v1, :cond_8

    .line 354
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_8

    .line 355
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 356
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 357
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 358
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_8
    cmpg-float v1, v0, v5

    if-gez v1, :cond_9

    .line 362
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v4, v2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_9

    .line 363
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 364
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 365
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 366
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 369
    :cond_9
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 370
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 371
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    goto :goto_2

    .line 383
    :pswitch_4
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 384
    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 385
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 387
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    goto :goto_1

    .line 391
    :cond_a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x44480000    # 800.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    .line 393
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    goto :goto_0

    .line 395
    :cond_b
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 397
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 399
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_d

    .line 400
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    goto :goto_2

    .line 402
    :cond_d
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    goto :goto_2

    .line 388
    :cond_e
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    goto :goto_2

    .line 315
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 316
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 317
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    return v1

    .line 406
    :cond_f
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_10
    :goto_3
    return v2

    :cond_11
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setModeBothMonthWeekView()V
    .locals 1

    const/4 v0, 0x0

    .line 614
    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 615
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    return-void
.end method

.method public setModeOnlyMonthView()V
    .locals 1

    const/4 v0, 0x2

    .line 624
    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 625
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    return-void
.end method

.method public setModeOnlyWeekView()V
    .locals 1

    const/4 v0, 0x1

    .line 619
    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 620
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1

    .line 188
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    .line 190
    iget-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 190
    :goto_0
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->initCalendarPosition(Lcom/haibin/calendarview/Calendar;)V

    .line 193
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    return-void
.end method

.method public showCalendarView()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    return-void
.end method

.method final showContentView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 928
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 930
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 931
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 932
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$10;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$10;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 933
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public shrink()Z
    .locals 1

    const/16 v0, 0xf0

    .line 729
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->shrink(I)Z

    move-result v0

    return v0
.end method

.method public shrink(I)Z
    .locals 5

    .line 739
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "translationY"

    .line 745
    new-array v1, v1, [F

    .line 746
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    aput v4, v1, v2

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 745
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 748
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$5;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$5;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 757
    new-instance p1, Lcom/haibin/calendarview/CalendarLayout$6;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/CalendarLayout$6;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return v4

    :cond_2
    :goto_0
    return v2
.end method

.method final updateCalendarItemHeight()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    .line 252
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 255
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 256
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 260
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    .line 259
    invoke-static {v1, v0, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 263
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method updateContentViewTranslateY()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 232
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    .line 236
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    .line 235
    invoke-static {v1, v0, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 243
    :cond_1
    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method final updateSelectPosition(I)V
    .locals 1

    add-int/lit8 p1, p1, 0x7

    .line 213
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, -0x1

    .line 214
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    return-void
.end method

.method final updateSelectWeek(I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 223
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    return-void
.end method
