.class Lcom/haibin/calendarview/CalendarView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V
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

    .line 411
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 414
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 415
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;->onYearViewChange(Z)V

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 419
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->showContentView()V

    .line 420
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    goto :goto_0

    .line 427
    :cond_2
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 429
    :goto_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haibin/calendarview/MonthViewPager;->clearAnimation()V

    return-void
.end method
