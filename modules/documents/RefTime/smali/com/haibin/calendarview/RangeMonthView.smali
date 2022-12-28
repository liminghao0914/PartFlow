.class public abstract Lcom/haibin/calendarview/RangeMonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "RangeMonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseMonthView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
    .locals 10

    .line 72
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItemWidth:I

    mul-int p4, p4, v0

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v0

    add-int/2addr p4, v0

    .line 73
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItemHeight:I

    mul-int p3, p3, v0

    .line 74
    invoke-virtual {p0, p4, p3}, Lcom/haibin/calendarview/RangeMonthView;->onLoopStart(II)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    .line 76
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v9

    .line 77
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/RangeMonthView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v7

    .line 78
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/RangeMonthView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z

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

    .line 84
    invoke-virtual/range {v1 .. v8}, Lcom/haibin/calendarview/RangeMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_4

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

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

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/RangeMonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 93
    invoke-virtual/range {v1 .. v8}, Lcom/haibin/calendarview/RangeMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    :cond_4
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move v6, v9

    move v7, v0

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/haibin/calendarview/RangeMonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 116
    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 234
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 236
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 221
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 223
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 121
    iget-boolean p1, p0, Lcom/haibin/calendarview/RangeMonthView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 135
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 140
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_4
    return-void

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 150
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    if-eq v4, v3, :cond_7

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    add-int/2addr v0, v1

    if-le v4, v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_6
    return-void

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 156
    invoke-static {p1, v4}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v4

    add-int/2addr v4, v1

    if-ge v0, v4, :cond_9

    .line 157
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_8
    return-void

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_a

    goto :goto_0

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    .line 169
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    if-ne v5, v3, :cond_b

    if-gtz v0, :cond_b

    .line 170
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 171
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    :cond_b
    if-gez v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    :cond_c
    if-nez v0, :cond_d

    .line 175
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 176
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 177
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 165
    :cond_e
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 166
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mCurrentItem:I

    .line 186
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_10

    .line 187
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    .line 188
    iget v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mCurrentItem:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_f

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_f
    add-int/2addr v0, v1

    .line 189
    :goto_2
    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v3, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_11

    .line 193
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 196
    :cond_11
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_13

    .line 197
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_3

    .line 200
    :cond_12
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 203
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_15

    .line 204
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v3, :cond_14

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    :goto_4
    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 35
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItemWidth:I

    .line 38
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->onPreviewHook()V

    .line 39
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    mul-int/lit8 v0, v0, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 41
    :goto_0
    iget v6, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    if-ge v4, v6, :cond_5

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    .line 43
    iget-object v7, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/haibin/calendarview/Calendar;

    .line 44
    iget-object v8, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 45
    iget-object v8, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/haibin/calendarview/RangeMonthView;->mNextDiff:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {v7}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 52
    :cond_2
    iget-object v8, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v8

    if-ne v8, v2, :cond_3

    if-lt v6, v0, :cond_3

    return-void

    .line 57
    :cond_3
    invoke-direct {p0, p1, v7, v4, v5}, Lcom/haibin/calendarview/RangeMonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

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
