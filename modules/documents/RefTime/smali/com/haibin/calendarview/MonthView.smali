.class public abstract Lcom/haibin/calendarview/MonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "MonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseMonthView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V
    .locals 8

    .line 73
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mItemWidth:I

    mul-int p4, p4, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v0

    add-int/2addr p4, v0

    .line 74
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mItemHeight:I

    mul-int p3, p3, v0

    .line 75
    invoke-virtual {p0, p4, p3}, Lcom/haibin/calendarview/MonthView;->onLoopStart(II)V

    .line 76
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    const/4 p5, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 77
    :goto_0
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result p5

    if-eqz p5, :cond_4

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 83
    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/MonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    if-nez v7, :cond_5

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/haibin/calendarview/MonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/MonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    :cond_5
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move v6, p5

    .line 95
    invoke-virtual/range {v1 .. v7}, Lcom/haibin/calendarview/MonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 102
    iget-boolean p1, p0, Lcom/haibin/calendarview/MonthView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 116
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 122
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_4
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    .line 131
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    .line 133
    iget v2, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_6

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_6
    add-int/2addr v0, v1

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_a

    .line 142
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_1

    .line 145
    :cond_9
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 150
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 34
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthView;->mItemWidth:I

    .line 37
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->onPreviewHook()V

    .line 38
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    mul-int/lit8 v0, v0, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 40
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    if-ge v10, v5, :cond_5

    move v12, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_4

    .line 42
    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/haibin/calendarview/Calendar;

    .line 43
    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 44
    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/haibin/calendarview/MonthView;->mNextDiff:I

    sub-int/2addr v4, v5

    if-le v12, v4, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 51
    :cond_2
    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    if-ne v4, v2, :cond_3

    if-lt v12, v0, :cond_3

    return-void

    :cond_3
    move-object v4, p0

    move-object v5, p1

    move v7, v10

    move v8, v11

    move v9, v12

    .line 56
    invoke-direct/range {v4 .. v9}, Lcom/haibin/calendarview/MonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    add-int/lit8 v12, v12, 0x1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move v4, v12

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 158
    iget-object p1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    iget-boolean p1, p0, Lcom/haibin/calendarview/MonthView;->isClick:Z

    if-nez p1, :cond_1

    return v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 169
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 174
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, p1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return v0

    .line 179
    :cond_4
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClickOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_5
    return v2

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isPreventLongPressedSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_7

    .line 190
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    :cond_7
    return v2

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    .line 198
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_a

    .line 199
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    .line 200
    iget v1, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    const/4 v3, 0x7

    if-ge v1, v3, :cond_9

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_9
    add-int/2addr v0, v2

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_b

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 208
    :cond_b
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_d

    .line 209
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_1

    .line 212
    :cond_c
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 217
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_f

    .line 222
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 224
    :cond_f
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->invalidate()V

    return v2
.end method
