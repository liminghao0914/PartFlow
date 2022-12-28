.class Lcom/haibin/calendarview/CalendarView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->showSelectLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarView;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarView;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iput p2, p0, Lcom/haibin/calendarview/CalendarView$4;->val$year:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 330
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 331
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekBar;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$500(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setVisibility(I)V

    .line 333
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$500(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;

    move-result-object p1

    iget v1, p0, Lcom/haibin/calendarview/CalendarView$4;->val$year:I

    invoke-virtual {p1, v1, v0}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    .line 334
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    :cond_0
    return-void
.end method
