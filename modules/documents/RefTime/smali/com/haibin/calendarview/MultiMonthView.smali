.class public abstract Lcom/haibin/calendarview/MultiMonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "MultiMonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseMonthView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
    .locals 10

    .line 71
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItemWidth:I

    mul-int p4, p4, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v0

    add-int/2addr p4, v0

    .line 72
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItemHeight:I

    mul-int p3, p3, v0

    .line 73
    invoke-virtual {p0, p4, p3}, Lcom/haibin/calendarview/MultiMonthView;->onLoopStart(II)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    .line 75
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v9

    .line 76
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/MultiMonthView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v7

    .line 77
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/MultiMonthView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v8

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 83
    invoke-virtual/range {v1 .. v8}, Lcom/haibin/calendarview/MultiMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_4

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/MultiMonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 92
    invoke-virtual/range {v1 .. v8}, Lcom/haibin/calendarview/MultiMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    :cond_4
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move v6, v9

    move v7, v0

    .line 95
    invoke-virtual/range {v1 .. v7}, Lcom/haibin/calendarview/MultiMonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 105
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 202
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    return p1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 190
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 110
    iget-boolean p1, p0, Lcom/haibin/calendarview/MultiMonthView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 129
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_4
    return-void

    .line 136
    :cond_5
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_6
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 142
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 144
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v1

    .line 143
    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onMultiSelectOutOfSize(Lcom/haibin/calendarview/Calendar;I)V

    :cond_7
    return-void

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mCurrentItem:I

    .line 153
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_a

    .line 154
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    .line 155
    iget v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mCurrentItem:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_9

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v1

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_2

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 170
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_e

    .line 171
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 173
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 174
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v2

    .line 171
    invoke-interface {v0, p1, v1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelect(Lcom/haibin/calendarview/Calendar;II)V

    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 34
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItemWidth:I

    .line 37
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->onPreviewHook()V

    .line 38
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    mul-int/lit8 v0, v0, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 40
    :goto_0
    iget v6, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    if-ge v4, v6, :cond_5

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    .line 42
    iget-object v7, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/haibin/calendarview/Calendar;

    .line 43
    iget-object v8, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 44
    iget-object v8, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/haibin/calendarview/MultiMonthView;->mNextDiff:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-virtual {v7}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 51
    :cond_2
    iget-object v8, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v8

    if-ne v8, v2, :cond_3

    if-lt v6, v0, :cond_3

    return-void

    .line 56
    :cond_3
    invoke-direct {p0, p1, v7, v4, v5}, Lcom/haibin/calendarview/MultiMonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
