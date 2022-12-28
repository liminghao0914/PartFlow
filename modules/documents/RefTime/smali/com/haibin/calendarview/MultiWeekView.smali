.class public abstract Lcom/haibin/calendarview/MultiWeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "MultiWeekView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseWeekView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

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

    .line 162
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    return p1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 150
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 84
    iget-boolean p1, p0, Lcom/haibin/calendarview/MultiWeekView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_3
    return-void

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_5
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 109
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 111
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v1

    .line 110
    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onMultiSelectOutOfSize(Lcom/haibin/calendarview/Calendar;I)V

    :cond_6
    return-void

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mCurrentItem:I

    .line 120
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_8

    .line 121
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 128
    :cond_9
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 131
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 132
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v2

    .line 129
    invoke-interface {v0, p1, v1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelect(Lcom/haibin/calendarview/Calendar;II)V

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 39
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItemWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->onPreviewHook()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 45
    iget v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mItemWidth:I

    mul-int v3, v3, v2

    iget-object v4, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v4

    add-int/2addr v3, v4

    .line 46
    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/MultiWeekView;->onLoopStart(I)V

    .line 47
    iget-object v4, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/haibin/calendarview/Calendar;

    .line 48
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v12

    .line 49
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/MultiWeekView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v10

    .line 50
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/MultiWeekView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v11

    .line 51
    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v12, :cond_1

    const/4 v9, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move v8, v3

    .line 55
    invoke-virtual/range {v5 .. v11}, Lcom/haibin/calendarview/MultiWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    if-nez v12, :cond_5

    .line 59
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/MultiWeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0, p1, v4, v3, v12}, Lcom/haibin/calendarview/MultiWeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V

    goto :goto_3

    :cond_4
    if-eqz v12, :cond_5

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move v8, v3

    .line 64
    invoke-virtual/range {v5 .. v11}, Lcom/haibin/calendarview/MultiWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    :cond_5
    :goto_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move v8, v3

    move v9, v13

    move v10, v12

    .line 67
    invoke-virtual/range {v5 .. v10}, Lcom/haibin/calendarview/MultiWeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
