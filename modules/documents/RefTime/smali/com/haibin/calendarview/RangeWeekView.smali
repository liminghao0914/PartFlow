.class public abstract Lcom/haibin/calendarview/RangeWeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "RangeWeekView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseWeekView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 89
    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 192
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 194
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

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

    .line 179
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 181
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

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

    .line 94
    iget-boolean p1, p0, Lcom/haibin/calendarview/RangeWeekView;->isClick:Z

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    return-void

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    :cond_3
    return-void

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_8

    .line 114
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 115
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    if-eq v4, v3, :cond_6

    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    add-int/2addr v0, v1

    if-le v4, v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_5
    return-void

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 121
    invoke-static {p1, v4}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v4

    add-int/2addr v4, v1

    if-ge v0, v4, :cond_8

    .line 122
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v0, p1, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    :cond_7
    return-void

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_9

    goto :goto_0

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    .line 134
    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    if-ne v5, v3, :cond_a

    if-gtz v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 136
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    :cond_a
    if-gez v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 139
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    :cond_b
    if-nez v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 141
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 142
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 144
    :cond_c
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 130
    :cond_d
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 131
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v4, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mCurrentItem:I

    .line 151
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v0, :cond_e

    .line 152
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 156
    iget-object v3, p0, Lcom/haibin/calendarview/RangeWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v3, v0}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 159
    :cond_f
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_11

    .line 160
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v3, :cond_10

    goto :goto_2

    :cond_10
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 164
    :cond_11
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 39
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItemWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->onPreviewHook()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 45
    iget v3, p0, Lcom/haibin/calendarview/RangeWeekView;->mItemWidth:I

    mul-int v3, v3, v2

    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPadding()I

    move-result v4

    add-int/2addr v3, v4

    .line 46
    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/RangeWeekView;->onLoopStart(I)V

    .line 47
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/haibin/calendarview/Calendar;

    .line 48
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v12

    .line 49
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/RangeWeekView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;)Z

    move-result v10

    .line 50
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/RangeWeekView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;)Z

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
    invoke-virtual/range {v5 .. v11}, Lcom/haibin/calendarview/RangeWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    if-nez v12, :cond_5

    .line 59
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0, p1, v4, v3, v12}, Lcom/haibin/calendarview/RangeWeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V

    goto :goto_3

    :cond_4
    if-eqz v12, :cond_5

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move v8, v3

    .line 64
    invoke-virtual/range {v5 .. v11}, Lcom/haibin/calendarview/RangeWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    :cond_5
    :goto_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move v8, v3

    move v9, v13

    move v10, v12

    .line 67
    invoke-virtual/range {v5 .. v10}, Lcom/haibin/calendarview/RangeWeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

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
