.class final Lcom/haibin/calendarview/CalendarViewDelegate;
.super Ljava/lang/Object;
.source "CalendarViewDelegate.java"


# static fields
.field static final FIRST_DAY_OF_MONTH:I = 0x0

.field static final LAST_MONTH_VIEW_SELECT_DAY:I = 0x1

.field static final LAST_MONTH_VIEW_SELECT_DAY_IGNORE_CURRENT:I = 0x2

.field private static final MAX_YEAR:I = 0x833

.field static final MIN_YEAR:I = 0x76c

.field static final MODE_ALL_MONTH:I = 0x0

.field static final MODE_FIT_MONTH:I = 0x2

.field static final MODE_ONLY_CURRENT_MONTH:I = 0x1

.field static final SELECT_MODE_DEFAULT:I = 0x0

.field static final SELECT_MODE_MULTI:I = 0x3

.field static final SELECT_MODE_RANGE:I = 0x2

.field static final SELECT_MODE_SINGLE:I = 0x1

.field static final WEEK_START_WITH_MON:I = 0x2

.field static final WEEK_START_WITH_SAT:I = 0x7

.field static final WEEK_START_WITH_SUN:I = 0x1


# instance fields
.field private isFullScreenCalendar:Z

.field isShowYearSelectedLayout:Z

.field mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

.field private mCalendarItemHeight:I

.field mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

.field mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

.field private mCalendarPadding:I

.field mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

.field mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

.field private mCurDayLunarTextColor:I

.field private mCurDayTextColor:I

.field private mCurMonthLunarTextColor:I

.field private mCurrentDate:Lcom/haibin/calendarview/Calendar;

.field private mCurrentMonthTextColor:I

.field mCurrentMonthViewItem:I

.field private mDayTextSize:I

.field private mDefaultCalendarSelectDay:I

.field mIndexCalendar:Lcom/haibin/calendarview/Calendar;

.field mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

.field private mLunarTextSize:I

.field private mMaxMultiSelectSize:I

.field private mMaxSelectRange:I

.field private mMaxYear:I

.field private mMaxYearDay:I

.field private mMaxYearMonth:I

.field private mMinSelectRange:I

.field private mMinYear:I

.field private mMinYearDay:I

.field private mMinYearMonth:I

.field mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

.field private mMonthViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMonthViewClassPath:Ljava/lang/String;

.field private mMonthViewScrollable:Z

.field private mMonthViewShowMode:I

.field private mOtherMonthLunarTextColor:I

.field private mOtherMonthTextColor:I

.field mSchemeDatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mSchemeLunarTextColor:I

.field private mSchemeText:Ljava/lang/String;

.field private mSchemeTextColor:I

.field private mSchemeThemeColor:I

.field private mSelectMode:I

.field mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

.field mSelectedCalendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

.field private mSelectedLunarTextColor:I

.field mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

.field private mSelectedTextColor:I

.field private mSelectedThemeColor:I

.field mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

.field private mWeekBackground:I

.field private mWeekBarClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mWeekBarClassPath:Ljava/lang/String;

.field private mWeekBarHeight:I

.field mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

.field private mWeekLineBackground:I

.field private mWeekLineMargin:I

.field private mWeekStart:I

.field private mWeekTextColor:I

.field private mWeekTextSize:I

.field private mWeekViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mWeekViewClassPath:Ljava/lang/String;

.field private mWeekViewScrollable:Z

.field mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

.field private mYearViewBackground:I

.field mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

.field private mYearViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mYearViewClassPath:Ljava/lang/String;

.field private mYearViewCurDayTextColor:I

.field private mYearViewDayTextColor:I

.field private mYearViewDayTextSize:I

.field private mYearViewMonthHeight:I

.field private mYearViewMonthMarginBottom:I

.field private mYearViewMonthMarginTop:I

.field private mYearViewMonthTextColor:I

.field private mYearViewMonthTextSize:I

.field private mYearViewPadding:I

.field private mYearViewSchemeTextColor:I

.field private mYearViewScrollable:Z

.field private mYearViewSelectTextColor:I

.field private mYearViewWeekHeight:I

.field private mYearViewWeekTextColor:I

.field private mYearViewWeekTextSize:I

.field private preventLongPressedSelected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 394
    sget-object v0, Lcom/haibin/calendarview/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 396
    invoke-static {p1}, Lcom/haibin/calendarview/LunarCalendar;->init(Landroid/content/Context;)V

    .line 398
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_calendar_padding:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    .line 399
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_scheme_text_color:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    .line 400
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_scheme_lunar_text_color:I

    const v3, -0x1e1e1f

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    .line 401
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_scheme_theme_color:I

    const v4, 0x50cfcfcf

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    .line 402
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_month_view:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    .line 403
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    .line 404
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_view:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    .line 405
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_bar_view:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    .line 406
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_text_size:I

    const/high16 v5, 0x41400000    # 12.0f

    .line 407
    invoke-static {p1, v5}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    .line 406
    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextSize:I

    .line 408
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_bar_height:I

    const/high16 v5, 0x42200000    # 40.0f

    .line 409
    invoke-static {p1, v5}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 408
    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarHeight:I

    .line 410
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_line_margin:I

    .line 411
    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 410
    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineMargin:I

    .line 413
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_scheme_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bb0"

    .line 415
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    .line 418
    :cond_0
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_month_view_scrollable:I

    const/4 v5, 0x1

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    .line 419
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_view_scrollable:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    .line 420
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_scrollable:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    .line 422
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_month_view_auto_select_day:I

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    .line 425
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_month_view_show_mode:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    .line 426
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_start_with:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    .line 427
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_select_mode:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    .line 428
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_max_multi_select_size:I

    const v7, 0x7fffffff

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    .line 429
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_min_select_range:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    .line 430
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_max_select_range:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    .line 431
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    iget v7, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    invoke-virtual {p0, v0, v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectRange(II)V

    .line 433
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_background:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBackground:I

    .line 434
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_line_background:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineBackground:I

    .line 435
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_background:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewBackground:I

    .line 436
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_week_text_color:I

    const v7, -0xcccccd

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextColor:I

    .line 438
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_current_day_text_color:I

    const/high16 v8, -0x10000

    invoke-virtual {p2, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    .line 439
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_current_day_lunar_text_color:I

    invoke-virtual {p2, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayLunarTextColor:I

    .line 441
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_selected_theme_color:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 442
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_selected_text_color:I

    const v4, -0xeeeeef

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    .line 444
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_selected_lunar_text_color:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    .line 445
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_current_month_text_color:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    .line 446
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_other_month_text_color:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    .line 448
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_current_month_lunar_text_color:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    .line 449
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_other_month_lunar_text_color:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    .line 450
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_min_year:I

    const/16 v3, 0x7b3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 451
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_max_year:I

    const/16 v3, 0x807

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 452
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_min_year_month:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 453
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_max_year_month:I

    const/16 v3, 0xc

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 454
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_min_year_day:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    .line 455
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_max_year_day:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 457
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_day_text_size:I

    const/high16 v2, 0x41800000    # 16.0f

    .line 458
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 457
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDayTextSize:I

    .line 459
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_lunar_text_size:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 460
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 459
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mLunarTextSize:I

    .line 461
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_calendar_height:I

    const/high16 v2, 0x42600000    # 56.0f

    .line 462
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 461
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    .line 463
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_calendar_match_parent:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar:Z

    .line 466
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_month_text_size:I

    const/high16 v2, 0x41900000    # 18.0f

    .line 467
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 466
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextSize:I

    .line 468
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_day_text_size:I

    const/high16 v2, 0x40e00000    # 7.0f

    .line 469
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 468
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextSize:I

    .line 470
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_month_text_color:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    .line 471
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_day_text_color:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    .line 472
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_scheme_color:I

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    .line 473
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_week_text_color:I

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextColor:I

    .line 474
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_current_day_text_color:I

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewCurDayTextColor:I

    .line 475
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_select_text_color:I

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSelectTextColor:I

    .line 476
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_week_text_size:I

    const/high16 v2, 0x41000000    # 8.0f

    .line 477
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 476
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextSize:I

    .line 478
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_month_height:I

    const/high16 v2, 0x42000000    # 32.0f

    .line 479
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 478
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthHeight:I

    .line 480
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_week_height:I

    .line 481
    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    .line 480
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekHeight:I

    .line 483
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_padding:I

    const/high16 v1, 0x40c00000    # 6.0f

    .line 484
    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 483
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    .line 485
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_month_margin_top:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 486
    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 485
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthMarginTop:I

    .line 487
    sget v0, Lcom/haibin/calendarview/R$styleable;->CalendarView_year_view_month_margin_bottom:I

    .line 488
    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 487
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthMarginBottom:I

    .line 490
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    const/16 v0, 0x76c

    if-gt p1, v0, :cond_1

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 491
    :cond_1
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    const/16 v0, 0x833

    if-lt p1, v0, :cond_2

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 492
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 497
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    .line 498
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "yyyy"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 500
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "MM"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 501
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "dd"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 502
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 503
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 504
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setRange(IIII)V

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/haibin/calendarview/WeekBar;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    .line 508
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/haibin/calendarview/DefaultYearView;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    .line 515
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/haibin/calendarview/DefaultMonthView;

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    .line 521
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    :goto_5
    :try_start_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/haibin/calendarview/DefaultWeekView;

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    .line 527
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method private setRange(IIII)V
    .locals 0

    .line 536
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 537
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 538
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 539
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 540
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget-object p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 541
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 543
    :cond_0
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 544
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-static {p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 546
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0xc

    .line 547
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    return-void
.end method


# virtual methods
.method final addSchemes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1026
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1030
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1032
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1033
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1034
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method final addSchemesFromMap(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1006
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 1007
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 1009
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 1011
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 1013
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1014
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method final clearSelectRange()V
    .locals 1

    const/4 v0, 0x0

    .line 1044
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1045
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    return-void
.end method

.method clearSelectedScheme()V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->clearScheme()V

    return-void
.end method

.method createCurrentDate()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 968
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 969
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 970
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setWeek(I)V

    .line 971
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 972
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    const/4 v1, 0x1

    .line 973
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 974
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-object v0
.end method

.method getCalendarItemHeight()I
    .locals 1

    .line 681
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    return v0
.end method

.method getCalendarPadding()I
    .locals 1

    .line 901
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    return v0
.end method

.method getCurDayLunarTextColor()I
    .locals 1

    .line 577
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayLunarTextColor:I

    return v0
.end method

.method getCurDayTextColor()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    return v0
.end method

.method getCurrentDay()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method getCurrentMonthLunarTextColor()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    return v0
.end method

.method getCurrentMonthTextColor()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    return v0
.end method

.method getDayTextSize()I
    .locals 1

    .line 673
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDayTextSize:I

    return v0
.end method

.method getDefaultCalendarSelectDay()I
    .locals 1

    .line 829
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    return v0
.end method

.method getLunarTextSize()I
    .locals 1

    .line 677
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mLunarTextSize:I

    return v0
.end method

.method getMaxMultiSelectSize()I
    .locals 1

    .line 863
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    return v0
.end method

.method final getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 990
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 991
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 992
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 993
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 994
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 995
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-object v0
.end method

.method getMaxSelectRange()I
    .locals 1

    .line 859
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    return v0
.end method

.method getMaxYear()I
    .locals 1

    .line 669
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    return v0
.end method

.method getMaxYearDay()I
    .locals 1

    .line 934
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    return v0
.end method

.method getMaxYearMonth()I
    .locals 1

    .line 693
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    return v0
.end method

.method final getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 979
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 980
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 981
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 982
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 983
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 984
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-object v0
.end method

.method getMinSelectRange()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    return v0
.end method

.method getMinYear()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    return v0
.end method

.method getMinYearDay()I
    .locals 1

    .line 930
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    return v0
.end method

.method getMinYearMonth()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    return v0
.end method

.method getMonthViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getMonthViewShowMode()I
    .locals 1

    .line 754
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    return v0
.end method

.method getOtherMonthLunarTextColor()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    return v0
.end method

.method getOtherMonthTextColor()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    return v0
.end method

.method getSchemeLunarTextColor()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    return v0
.end method

.method getSchemeText()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    return-object v0
.end method

.method getSchemeTextColor()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    return v0
.end method

.method getSchemeThemeColor()I
    .locals 1

    .line 617
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    return v0
.end method

.method final getSelectCalendarRange()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1054
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1063
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1065
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1066
    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1067
    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v6

    .line 1065
    invoke-virtual {v2, v3, v4, v6}, Ljava/util/Calendar;->set(III)V

    .line 1069
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1072
    iget-object v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v6

    iget-object v7, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1073
    invoke-virtual {v7}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v7

    sub-int/2addr v7, v5

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1074
    invoke-virtual {v8}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v8

    .line 1072
    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 1075
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    :goto_0
    cmp-long v8, v3, v6

    if-gtz v8, :cond_3

    .line 1077
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1078
    new-instance v8, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v8}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1079
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1080
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v9, 0x5

    .line 1081
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1082
    invoke-static {v8}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1083
    invoke-virtual {p0, v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 1084
    iget-object v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v9, :cond_2

    .line 1085
    invoke-interface {v9, v8}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 1089
    :cond_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const-wide/32 v8, 0x5265c00

    add-long/2addr v3, v8

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemesFromMap(Ljava/util/List;)V

    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method getSelectMode()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    return v0
.end method

.method getSelectedLunarTextColor()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    return v0
.end method

.method getSelectedTextColor()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    return v0
.end method

.method getSelectedThemeColor()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    return v0
.end method

.method getWeekBackground()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBackground:I

    return v0
.end method

.method getWeekBarClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    return-object v0
.end method

.method getWeekBarHeight()I
    .locals 1

    .line 661
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarHeight:I

    return v0
.end method

.method getWeekLineBackground()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineBackground:I

    return v0
.end method

.method getWeekLineMargin()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineMargin:I

    return v0
.end method

.method getWeekStart()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    return v0
.end method

.method getWeekTextColor()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextColor:I

    return v0
.end method

.method getWeekTextSize()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextSize:I

    return v0
.end method

.method getWeekViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getYearViewBackground()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewBackground:I

    return v0
.end method

.method getYearViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getYearViewClassPath()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    return-object v0
.end method

.method getYearViewCurDayTextColor()I
    .locals 1

    .line 718
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewCurDayTextColor:I

    return v0
.end method

.method getYearViewDayTextColor()I
    .locals 1

    .line 742
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    return v0
.end method

.method getYearViewDayTextSize()I
    .locals 1

    .line 746
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextSize:I

    return v0
.end method

.method getYearViewMonthHeight()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthHeight:I

    return v0
.end method

.method getYearViewMonthMarginBottom()I
    .locals 1

    .line 730
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthMarginBottom:I

    return v0
.end method

.method getYearViewMonthMarginTop()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthMarginTop:I

    return v0
.end method

.method getYearViewMonthTextColor()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    return v0
.end method

.method getYearViewMonthTextSize()I
    .locals 1

    .line 698
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextSize:I

    return v0
.end method

.method getYearViewPadding()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    return v0
.end method

.method getYearViewSchemeTextColor()I
    .locals 1

    .line 750
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    return v0
.end method

.method getYearViewSelectTextColor()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSelectTextColor:I

    return v0
.end method

.method getYearViewWeekHeight()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekHeight:I

    return v0
.end method

.method getYearViewWeekTextColor()I
    .locals 1

    .line 710
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextColor:I

    return v0
.end method

.method getYearViewWeekTextSize()I
    .locals 1

    .line 706
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextSize:I

    return v0
.end method

.method isFullScreenCalendar()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar:Z

    return v0
.end method

.method isMonthViewScrollable()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    return v0
.end method

.method isPreventLongPressedSelected()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->preventLongPressedSelected:Z

    return v0
.end method

.method isWeekViewScrollable()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    return v0
.end method

.method isYearViewScrollable()Z
    .locals 1

    .line 801
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    return v0
.end method

.method setCalendarItemHeight(I)V
    .locals 0

    .line 685
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    return-void
.end method

.method setDefaultCalendarSelectDay(I)V
    .locals 0

    .line 825
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    return-void
.end method

.method setMaxMultiSelectSize(I)V
    .locals 0

    .line 867
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    return-void
.end method

.method setMonthViewClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 910
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;

    return-void
.end method

.method setMonthViewScrollable(Z)V
    .locals 0

    .line 805
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    return-void
.end method

.method setMonthViewShowMode(I)V
    .locals 0

    .line 758
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    return-void
.end method

.method setPreventLongPressedSelected(Z)V
    .locals 0

    .line 906
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->preventLongPressedSelected:Z

    return-void
.end method

.method setRange(IIIIII)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 553
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 554
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    .line 555
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 556
    iput p5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 557
    iput p6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 561
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 562
    iget p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-static {p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0xc

    .line 565
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    return-void
.end method

.method setSchemeColor(III)V
    .locals 0

    .line 770
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    .line 771
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    .line 772
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    return-void
.end method

.method setSelectColor(III)V
    .locals 0

    .line 782
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 783
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    .line 784
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    return-void
.end method

.method setSelectMode(I)V
    .locals 0

    .line 851
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    return-void
.end method

.method final setSelectRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    if-lez p2, :cond_0

    .line 872
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    .line 873
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    return-void

    :cond_0
    const/4 v0, -0x1

    if-gtz p1, :cond_1

    .line 877
    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    goto :goto_0

    .line 879
    :cond_1
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    :goto_0
    if-gtz p2, :cond_2

    .line 882
    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    goto :goto_1

    .line 884
    :cond_2
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    :goto_1
    return-void
.end method

.method setTextColor(IIIII)V
    .locals 0

    .line 762
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    .line 763
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    .line 764
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    .line 765
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    .line 766
    iput p5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    return-void
.end method

.method setThemeColor(II)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 789
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    return-void
.end method

.method setWeekBarClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    return-void
.end method

.method setWeekStart(I)V
    .locals 0

    .line 821
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    return-void
.end method

.method setWeekViewClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;

    return-void
.end method

.method setWeekViewScrollable(Z)V
    .locals 0

    .line 809
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    return-void
.end method

.method setYearViewScrollable(Z)V
    .locals 0

    .line 813
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    return-void
.end method

.method setYearViewTextColor(III)V
    .locals 0

    .line 776
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    .line 777
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    .line 778
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    return-void
.end method

.method final updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 963
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/haibin/calendarview/Calendar;->mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method updateCurrentDay()V
    .locals 3

    .line 893
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 894
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "yyyy"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 895
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "MM"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 896
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "dd"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 897
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method

.method final updateSelectCalendarScheme()V
    .locals 3

    .line 942
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 946
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/Calendar;->mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    :cond_1
    :goto_0
    return-void
.end method
