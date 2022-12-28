.class public abstract Lcom/haibin/calendarview/BaseMonthView;
.super Lcom/haibin/calendarview/BaseView;
.source "BaseMonthView.java"


# instance fields
.field protected mHeight:I

.field protected mLineCount:I

.field protected mMonth:I

.field mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

.field protected mNextDiff:I

.field protected mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initCalendar()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mNextDiff:I

    .line 82
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v0

    .line 83
    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    invoke-static {v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v1

    .line 85
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    .line 87
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 93
    :goto_0
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 95
    invoke-interface {v2, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x6

    .line 100
    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    .line 102
    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mNextDiff:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    .line 104
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->addSchemesFromMap()V

    .line 105
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected getIndex()Lcom/haibin/calendarview/Calendar;
    .locals 5

    .line 114
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemWidth:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemWidth:I

    div-int/2addr v0, v2

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    const/4 v0, 0x6

    .line 121
    :cond_1
    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mY:F

    float-to-int v3, v3

    iget v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v0

    if-ltz v3, :cond_2

    .line 123
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method protected final getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method final initMonthWithDate(II)V
    .locals 3

    .line 67
    iput p1, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    .line 68
    iput p2, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    .line 69
    invoke-direct {p0}, Lcom/haibin/calendarview/BaseMonthView;->initCalendar()V

    .line 70
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 71
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 70
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onLoopStart(II)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 193
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    if-eqz v0, :cond_0

    .line 194
    iget p2, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 196
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/haibin/calendarview/BaseView;->onMeasure(II)V

    return-void
.end method

.method protected onPreviewHook()V
    .locals 0

    return-void
.end method

.method final setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    return-void
.end method

.method updateCurrentDate()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    return-void
.end method

.method updateItemHeight()V
    .locals 5

    .line 160
    invoke-super {p0}, Lcom/haibin/calendarview/BaseView;->updateItemHeight()V

    .line 161
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 162
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 161
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    return-void
.end method

.method final updateShowMode()V
    .locals 5

    .line 142
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 143
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 142
    invoke-static {v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewLineCount(IIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    .line 144
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 145
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 144
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    return-void
.end method

.method final updateWeekStart()V
    .locals 5

    .line 153
    invoke-direct {p0}, Lcom/haibin/calendarview/BaseMonthView;->initCalendar()V

    .line 154
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 155
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 154
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    return-void
.end method
