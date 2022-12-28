.class Lcom/haibin/calendarview/MonthViewPager$1;
.super Ljava/lang/Object;
.source "MonthViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/MonthViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/MonthViewPager;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/MonthViewPager;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 91
    iget-object p3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p3

    invoke-virtual {p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p3}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-ge p1, p3, :cond_1

    .line 96
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p1}, Lcom/haibin/calendarview/MonthViewPager;->access$200(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p2

    mul-float p1, p1, v0

    iget-object p3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 98
    invoke-static {p3}, Lcom/haibin/calendarview/MonthViewPager;->access$300(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p1}, Lcom/haibin/calendarview/MonthViewPager;->access$300(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p2

    mul-float p1, p1, v0

    iget-object p3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 103
    invoke-static {p3}, Lcom/haibin/calendarview/MonthViewPager;->access$400(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p2}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 107
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getFirstCalendarFromMonthViewPager(ILcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-boolean v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 116
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 118
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;->onYearChange(I)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;->onMonthChange(II)V

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, v1, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/haibin/calendarview/MonthViewPager;->access$500(Lcom/haibin/calendarview/MonthViewPager;II)V

    return-void

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 136
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haibin/calendarview/CalendarUtil;->getRangeEdgeCalendar(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 144
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 148
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 153
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 154
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$600(Lcom/haibin/calendarview/MonthViewPager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v1

    if-nez v1, :cond_8

    .line 155
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, v1, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v4}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 156
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v1, v3, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 161
    :cond_8
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/BaseMonthView;

    if-eqz p1, :cond_b

    .line 163
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v1}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 164
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v3

    if-nez v3, :cond_9

    .line 165
    iput v1, p1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    :cond_9
    if-ltz v1, :cond_a

    .line 167
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, v3, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v3, :cond_a

    .line 168
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, v3, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v3, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 170
    :cond_a
    invoke-virtual {p1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 172
    :cond_b
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object p1, p1, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v1, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 173
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/haibin/calendarview/MonthViewPager;->access$500(Lcom/haibin/calendarview/MonthViewPager;II)V

    .line 174
    iget-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/MonthViewPager;->access$602(Lcom/haibin/calendarview/MonthViewPager;Z)Z

    return-void
.end method
