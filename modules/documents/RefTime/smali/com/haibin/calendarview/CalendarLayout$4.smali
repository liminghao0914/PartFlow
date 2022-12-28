.class Lcom/haibin/calendarview/CalendarLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarLayout;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarLayout;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 710
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 711
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 712
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$300(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 713
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$400(Lcom/haibin/calendarview/CalendarLayout;Z)V

    .line 716
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$600(Lcom/haibin/calendarview/CalendarLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 717
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    invoke-interface {p1, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 719
    :cond_1
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    return-void
.end method
