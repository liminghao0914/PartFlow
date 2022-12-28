.class public Lcom/haibin/calendarview/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;,
        Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;,
        Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field private mWeekLine:Landroid/view/View;

.field private mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

.field private mYearViewPager:Lcom/haibin/calendarview/YearViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-direct {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 89
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/CalendarView;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    return-object p0
.end method

.method private closeSelectLayout(I)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearViewPager;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 388
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 389
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 390
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {p1, v0, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 395
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x118

    .line 398
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/haibin/calendarview/CalendarView$6;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$6;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 406
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    .line 409
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/haibin/calendarview/CalendarView$7;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$7;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$layout;->cv_layout_calendar_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    sget v0, Lcom/haibin/calendarview/R$id;->frameContent:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 100
    sget v1, Lcom/haibin/calendarview/R$id;->vp_week:I

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/WeekViewPager;

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 101
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/WeekViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/WeekBar;

    iput-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 111
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/WeekBar;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 112
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 114
    sget v0, Lcom/haibin/calendarview/R$id;->line:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineBackground()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineMargin()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 118
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 119
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineMargin()I

    move-result v4

    .line 117
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    sget v0, Lcom/haibin/calendarview/R$id;->vp_month:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/MonthViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    .line 124
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iput-object v2, v0, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 125
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v2, v0, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 126
    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    sget p1, Lcom/haibin/calendarview/R$id;->selectLayout:I

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/YearViewPager;

    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    .line 132
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setBackgroundColor(I)V

    .line 133
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    new-instance v0, Lcom/haibin/calendarview/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$1;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/YearViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 155
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v0, Lcom/haibin/calendarview/CalendarView$2;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$2;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    .line 208
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result p1

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 218
    :goto_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 220
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 222
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 223
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 224
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    new-instance v0, Lcom/haibin/calendarview/CalendarView$3;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$3;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V

    .line 232
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 233
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    return-void
.end method

.method private setShowMode(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewShowMode(I)V

    .line 1571
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateShowMode()V

    .line 1572
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateShowMode()V

    .line 1573
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    return-void
.end method

.method private setWeekStart(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekStart(I)V

    .line 1518
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 1519
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 1520
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateWeekStart()V

    .line 1521
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateWeekStart()V

    .line 1522
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->updateWeekStart()V

    return-void
.end method

.method private showSelectLayout(I)V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    .line 320
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->hideContentView()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 324
    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x104

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/haibin/calendarview/CalendarView$4;

    invoke-direct {v3, p0, p1}, Lcom/haibin/calendarview/CalendarView$4;-><init>(Lcom/haibin/calendarview/CalendarView;I)V

    .line 327
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 340
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/haibin/calendarview/CalendarView$5;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarView$5;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final addSchemeDate(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1258
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1269
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1270
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1271
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final addSchemeDate(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemes(Ljava/util/Map;)V

    .line 1287
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1288
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1289
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1290
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final clearMultiSelect()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 676
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearMultiSelect()V

    .line 677
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearMultiSelect()V

    return-void
.end method

.method public final clearSchemeDate()V
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1246
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    .line 1247
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1248
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1249
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void
.end method

.method public final clearSelectRange()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectRange()V

    .line 658
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearSelectRange()V

    .line 659
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearSelectRange()V

    return-void
.end method

.method public final clearSingleSelect()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 667
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearSingleSelect()V

    .line 668
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearSingleSelect()V

    return-void
.end method

.method public closeYearSelectLayout()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 374
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 375
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V

    .line 376
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    return-void
.end method

.method public getCurDay()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    return v0
.end method

.method public getCurMonth()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    return v0
.end method

.method public getCurYear()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    return v0
.end method

.method public getCurrentMonthCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1628
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentMonthCalendars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWeekCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1618
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentWeekCalendars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxMultiSelectSize()I
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v0

    return v0
.end method

.method public getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxSelectRange()I
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    return v0
.end method

.method public getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getMinSelectRange()I
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v0

    return v0
.end method

.method public getMonthViewPager()Lcom/haibin/calendarview/MonthViewPager;
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    return-object v0
.end method

.method public final getMultiSelectCalendars()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 721
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 725
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSelectCalendarRange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectCalendarRange()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method public getWeekViewPager()Lcom/haibin/calendarview/WeekViewPager;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    return-object v0
.end method

.method protected final isInRange(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSingleSelectMode()Z
    .locals 2

    .line 1531
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isYearSelectLayoutVisible()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1203
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1204
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/CalendarLayout;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1206
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v1, v0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1207
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iput-object v1, v0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1208
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarLayout;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 1209
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarLayout;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 1210
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->initStatus()V

    :cond_0
    return-void
.end method

.method protected final onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 1081
    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

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
    .locals 2

    .line 1216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1217
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v1, :cond_1

    .line 1218
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 1223
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    .line 1222
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setCalendarItemHeight(I)V

    .line 1225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 1219
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1181
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 1182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const-string v2, "selected_calendar"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1184
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const-string v2, "index_calendar"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/Calendar;

    iput-object p1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1185
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz p1, :cond_0

    .line 1186
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1188
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz p1, :cond_1

    .line 1189
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1190
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1191
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    .line 1189
    invoke-virtual {p0, p1, v1, v2}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 1194
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 1164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super"

    .line 1168
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "selected_calendar"

    .line 1169
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "index_calendar"

    .line 1170
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public final varargs putMultiSelect([Lcom/haibin/calendarview/Calendar;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 686
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 689
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 690
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 693
    :cond_1
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    :cond_3
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public final varargs removeMultiSelect([Lcom/haibin/calendarview/Calendar;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 704
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 707
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 711
    :cond_1
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 712
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public final removeSchemeDate(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1307
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1310
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    .line 1313
    :cond_3
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1314
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1315
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public scrollToCalendar(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 538
    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZZ)V

    return-void
.end method

.method public scrollToCalendar(IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 551
    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZZ)V

    return-void
.end method

.method public scrollToCalendar(IIIZZ)V
    .locals 8

    .line 566
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 567
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 568
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 569
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 570
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 573
    :cond_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 577
    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/WeekViewPager;->scrollToCalendar(IIIZZ)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/haibin/calendarview/MonthViewPager;->scrollToCalendar(IIIZZ)V

    :goto_0
    return-void
.end method

.method public scrollToCurrent()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToCurrent(Z)V

    return-void
.end method

.method public scrollToCurrent(Z)V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 452
    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {p1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 457
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 458
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 459
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 460
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/MonthViewPager;->scrollToCurrent(Z)V

    .line 462
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekViewPager;->scrollToCurrent(Z)V

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    return-void
.end method

.method public scrollToNext()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToNext(Z)V

    return-void
.end method

.method public scrollToNext(Z)V
    .locals 2

    .line 484
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->isYearSelectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public scrollToPre()V
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToPre(Z)V

    return-void
.end method

.method public scrollToPre(Z)V
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->isYearSelectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public scrollToSelectCalendar()V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 525
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 526
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    const/4 v3, 0x0

    .line 524
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZ)V

    return-void
.end method

.method public scrollToYear(I)V
    .locals 1

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToYear(IZ)V

    return-void
.end method

.method public scrollToYear(IZ)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    return-void
.end method

.method public setAllMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1538
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    return-void
.end method

.method public setBackground(III)V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/WeekBar;->setBackgroundColor(I)V

    .line 1327
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/YearViewPager;->setBackgroundColor(I)V

    .line 1328
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setCalendarItemHeight(I)V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCalendarItemHeight(I)V

    .line 748
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateItemHeight()V

    .line 749
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateItemHeight()V

    .line 750
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-nez p1, :cond_1

    return-void

    .line 753
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->updateCalendarItemHeight()V

    return-void
.end method

.method public final setDefaultMonthViewSelectDay()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    return-void
.end method

.method public setFixMode()V
    .locals 1

    const/4 v0, 0x2

    .line 1552
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    return-void
.end method

.method public final setLastMonthViewSelectDay()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    return-void
.end method

.method public final setLastMonthViewSelectDayIgnoreCurrent()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    return-void
.end method

.method public final setMaxMultiSelectSize(I)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMaxMultiSelectSize(I)V

    return-void
.end method

.method public final setMonthView(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewClass(Ljava/lang/Class;)V

    .line 770
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewClass()V

    return-void
.end method

.method public final setMonthViewScrollable(Z)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewScrollable(Z)V

    return-void
.end method

.method public final setOnCalendarInterceptListener(Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    :cond_0
    if-eqz p1, :cond_3

    .line 831
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 835
    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 838
    :cond_2
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnCalendarLongClickListener(Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;)V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    return-void
.end method

.method public setOnCalendarLongClickListener(Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;Z)V
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    .line 1138
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setPreventLongPressedSelected(Z)V

    return-void
.end method

.method public final setOnCalendarMultiSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    return-void
.end method

.method public final setOnCalendarRangeSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;)V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    return-void
.end method

.method public setOnCalendarSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;)V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    .line 876
    iget-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-nez p1, :cond_0

    return-void

    .line 879
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 882
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 885
    :cond_2
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    return-void
.end method

.method public setOnMonthChangeListener(Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    return-void
.end method

.method public setOnViewChangeListener(Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    return-void
.end method

.method public setOnWeekChangeListener(Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    return-void
.end method

.method public setOnYearChangeListener(Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;)V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    return-void
.end method

.method public setOnYearViewChangeListener(Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    return-void
.end method

.method public setOnlyCurrentMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1545
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    return-void
.end method

.method public setRange(IIIIII)V
    .locals 8

    .line 249
    invoke-static/range {p1 .. p6}, Lcom/haibin/calendarview/CalendarUtil;->compareTo(IIIIII)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->setRange(IIIIII)V

    .line 255
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    .line 256
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->notifyDataSetChanged()V

    .line 257
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->notifyDataSetChanged()V

    .line 258
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object p2

    iput-object p2, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 260
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 261
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object p2, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateRange()V

    .line 264
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateRange()V

    .line 265
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->updateRange()V

    return-void
.end method

.method public setSchemeColor(III)V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSchemeColor(III)V

    .line 1399
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1400
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSchemeDate(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1235
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1236
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1237
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1238
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void
.end method

.method public final setSelectCalendarRange(IIIIII)V
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 995
    :cond_0
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 996
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 997
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 998
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1000
    new-instance p1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1001
    invoke-virtual {p1, p4}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1002
    invoke-virtual {p1, p5}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1003
    invoke-virtual {p1, p6}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1004
    invoke-virtual {p0, v0, p1}, Lcom/haibin/calendarview/CalendarView;->setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method

.method public final setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V
    .locals 6

    .line 1014
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_10

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 1020
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1021
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz p2, :cond_2

    .line 1022
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {p2, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_2
    return-void

    .line 1026
    :cond_3
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1027
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz p1, :cond_4

    .line 1028
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {p1, p2, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_4
    return-void

    .line 1032
    :cond_5
    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/Calendar;->differ(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-gez v0, :cond_6

    return-void

    .line 1036
    :cond_6
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 1042
    :cond_7
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    add-int/lit8 v5, v0, 0x1

    if-le v2, v5, :cond_9

    .line 1043
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz p1, :cond_8

    .line 1044
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {p1, p2, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_8
    return-void

    .line 1047
    :cond_9
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v2

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v2

    add-int/lit8 v5, v0, 0x1

    if-ge v2, v5, :cond_b

    .line 1049
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz p1, :cond_a

    .line 1050
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {p1, p2, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_a
    return-void

    .line 1054
    :cond_b
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    if-ne v2, v3, :cond_d

    if-nez v0, :cond_d

    .line 1055
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1057
    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz p2, :cond_c

    .line 1058
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {p2, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1060
    :cond_c
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    return-void

    .line 1064
    :cond_d
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1065
    iput-object p2, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1066
    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_e

    .line 1067
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1068
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p2, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1070
    :cond_e
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    return-void

    :cond_f
    :goto_0
    return-void

    :cond_10
    :goto_1
    return-void
.end method

.method public final setSelectDefaultMode()V
    .locals 4

    .line 1436
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1440
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1441
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 1442
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateDefaultSelect()V

    .line 1443
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateDefaultSelect()V

    return-void
.end method

.method public final setSelectEndCalendar(III)V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_1

    return-void

    .line 963
    :cond_1
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 964
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 965
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 966
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 967
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setSelectEndCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method

.method public final setSelectEndCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_1

    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v0, p1}, Lcom/haibin/calendarview/CalendarView;->setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method

.method public setSelectMultiMode()V
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->clearMultiSelect()V

    return-void
.end method

.method public final setSelectRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectRange(II)V

    return-void
.end method

.method public setSelectRangeMode()V
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1455
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->clearSelectRange()V

    return-void
.end method

.method public setSelectSingleMode()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1477
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected()V

    .line 1478
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    return-void
.end method

.method public final setSelectStartCalendar(III)V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 925
    :cond_0
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 926
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 927
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 928
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 929
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setSelectStartCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method

.method public final setSelectStartCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 939
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_2
    return-void

    .line 945
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_4
    return-void

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 952
    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 953
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    return-void
.end method

.method public setSelectedColor(III)V
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectColor(III)V

    .line 1368
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1369
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextColor(IIIII)V
    .locals 6

    .line 1347
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1350
    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->setTextColor(IIIII)V

    .line 1352
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1353
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeColor(II)V
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setThemeColor(II)V

    .line 1383
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1384
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setWeeColor(II)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    if-nez v0, :cond_0

    return-void

    .line 1428
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekBar;->setBackgroundColor(I)V

    .line 1429
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/WeekBar;->setTextColor(I)V

    return-void
.end method

.method public final setWeekBar(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekBarClass(Ljava/lang/Class;)V

    .line 802
    sget v0, Lcom/haibin/calendarview/R$id;->frameContent:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 803
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 806
    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 807
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/WeekBar;

    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 809
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    :goto_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 812
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekBar;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 813
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 814
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v0, p1, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 815
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    return-void
.end method

.method public setWeekStarWithMon()V
    .locals 1

    const/4 v0, 0x2

    .line 1492
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    return-void
.end method

.method public setWeekStarWithSat()V
    .locals 1

    const/4 v0, 0x7

    .line 1499
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    return-void
.end method

.method public setWeekStarWithSun()V
    .locals 1

    const/4 v0, 0x1

    .line 1485
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    return-void
.end method

.method public final setWeekView(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekViewClass(Ljava/lang/Class;)V

    .line 786
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/WeekViewPager;->updateWeekViewClass()V

    return-void
.end method

.method public final setWeekViewScrollable(Z)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekViewScrollable(Z)V

    return-void
.end method

.method public final setYearViewScrollable(Z)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setYearViewScrollable(Z)V

    return-void
.end method

.method public setYearViewTextColor(III)V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setYearViewTextColor(III)V

    .line 1415
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {p1}, Lcom/haibin/calendarview/YearViewPager;->updateStyle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public showYearSelectLayout(I)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->showSelectLayout(I)V

    return-void
.end method

.method public final update()V
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 1582
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1583
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1584
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    return-void
.end method

.method public final updateCurrentDate()V
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1602
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 1603
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1604
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getCurDay()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCurrentDay()V

    .line 1608
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateCurrentDate()V

    .line 1609
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateCurrentDate()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateWeekBar()V
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    return-void
.end method
