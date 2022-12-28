.class Lcom/haibin/calendarview/WeekViewPager$1;
.super Ljava/lang/Object;
.source "WeekViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/WeekViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/WeekViewPager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$100(Lcom/haibin/calendarview/WeekViewPager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/BaseWeekView;

    if-eqz p1, :cond_3

    .line 93
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 94
    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$100(Lcom/haibin/calendarview/WeekViewPager;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 93
    invoke-virtual {p1, v0, v2}, Lcom/haibin/calendarview/BaseWeekView;->performClickCalendar(Lcom/haibin/calendarview/Calendar;Z)V

    .line 95
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentWeekCalendars()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;->onWeekChange(Ljava/util/List;)V

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    return-void
.end method
