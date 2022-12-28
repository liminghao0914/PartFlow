.class public abstract Lcom/haibin/calendarview/BaseWeekView;
.super Lcom/haibin/calendarview/BaseView;
.source "BaseWeekView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final getEdgeIndex(Z)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 145
    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/BaseWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x6

    :cond_3
    return v0
.end method

.method protected getIndex()Lcom/haibin/calendarview/Calendar;
    .locals 4

    .line 163
    iget v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mX:F

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItemWidth:I

    div-int/2addr v0, v1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    .line 167
    :cond_0
    iget v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/haibin/calendarview/BaseWeekView;->mItemHeight:I

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v0

    if-ltz v2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final isMinRangeEdge(Lcom/haibin/calendarview/Calendar;)Z
    .locals 6

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/Calendar;->set(III)V

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 131
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    invoke-virtual {v0, v4, v5, p1}, Ljava/util/Calendar;->set(III)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onLoopStart(I)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 223
    iget p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mItemHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 224
    invoke-super {p0, p1, p2}, Lcom/haibin/calendarview/BaseView;->onMeasure(II)V

    return-void
.end method

.method protected onPreviewHook()V
    .locals 0

    return-void
.end method

.method final performClickCalendar(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewIndexFromCalendar(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewIndexFromCalendar(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 79
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 83
    iput v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 87
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/BaseWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 88
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/BaseWeekView;->isMinRangeEdge(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/BaseWeekView;->getEdgeIndex(Z)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 94
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 95
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v2

    .line 96
    iget-object v4, p0, Lcom/haibin/calendarview/BaseWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 99
    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 101
    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result p2

    if-nez p2, :cond_5

    .line 102
    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {p2, v1, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 105
    :cond_5
    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    .line 106
    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result p2

    if-nez p2, :cond_6

    .line 107
    iput v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 110
    :cond_6
    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz p2, :cond_7

    .line 112
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    if-eqz p1, :cond_7

    .line 114
    iget-object p1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    iget-object p2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;->onYearChange(I)V

    .line 117
    :cond_7
    iget-object p1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 118
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method final setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 50
    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    return-void
.end method

.method final setup(Lcom/haibin/calendarview/Calendar;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForWeekView(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->addSchemesFromMap()V

    .line 39
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    return-void
.end method

.method updateCurrentDate()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

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

    .line 213
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    return-void
.end method

.method final updateShowMode()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    return-void
.end method

.method final updateSingleSelect()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 203
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    :cond_0
    return-void
.end method

.method final updateWeekStart()V
    .locals 5

    .line 187
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseWeekView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 189
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 190
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 192
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    .line 188
    invoke-static {v1, v2, v3, v0, v4}, Lcom/haibin/calendarview/CalendarUtil;->getFirstCalendarStartWithMinCalendar(IIIII)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/haibin/calendarview/BaseWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/BaseWeekView;->setup(Lcom/haibin/calendarview/Calendar;)V

    return-void
.end method
