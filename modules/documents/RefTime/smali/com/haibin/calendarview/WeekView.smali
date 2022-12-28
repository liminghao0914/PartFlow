.class public abstract Lcom/haibin/calendarview/WeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "WeekView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseWeekView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-boolean p1, p0, Lcom/haibin/calendarview/WeekView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/WeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 83
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/WeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_3
    return-void

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    .line 92
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 97
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 104
    :cond_7
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/haibin/calendarview/WeekView;->mItemWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->onPreviewHook()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 45
    iget v2, p0, Lcom/haibin/calendarview/WeekView;->mItemWidth:I

    mul-int v2, v2, v1

    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v3

    add-int v7, v2, v3

    .line 46
    invoke-virtual {p0, v7}, Lcom/haibin/calendarview/WeekView;->onLoopStart(I)V

    .line 47
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/haibin/calendarview/Calendar;

    .line 48
    iget v2, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 49
    :goto_1
    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v9, :cond_2

    .line 53
    invoke-virtual {p0, p1, v6, v7, v3}, Lcom/haibin/calendarview/WeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    if-nez v9, :cond_6

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v3

    .line 57
    :goto_3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p0, p1, v6, v7}, Lcom/haibin/calendarview/WeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    .line 63
    invoke-virtual {p0, p1, v6, v7, v0}, Lcom/haibin/calendarview/WeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z

    :cond_6
    :goto_4
    move-object v4, p0

    move-object v5, p1

    .line 66
    invoke-virtual/range {v4 .. v9}, Lcom/haibin/calendarview/WeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 112
    :cond_0
    iget-boolean p1, p0, Lcom/haibin/calendarview/WeekView;->isClick:Z

    if-nez p1, :cond_1

    return v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/WeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return v1

    .line 123
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/WeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClickOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_4
    return v1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isPreventLongPressedSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    :cond_6
    return v1

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    .line 142
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 144
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_8

    .line 145
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 149
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_a

    .line 153
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 156
    :cond_a
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v0, :cond_b

    .line 157
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 160
    :cond_b
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->invalidate()V

    return v1
.end method
