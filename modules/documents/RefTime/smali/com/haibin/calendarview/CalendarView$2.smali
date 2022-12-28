.class Lcom/haibin/calendarview/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 166
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    if-eq v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 170
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 175
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 176
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    :cond_4
    return-void
.end method

.method public onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 190
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    .line 194
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSingleSelect()V

    .line 196
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 197
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 199
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 201
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    :cond_3
    return-void
.end method
