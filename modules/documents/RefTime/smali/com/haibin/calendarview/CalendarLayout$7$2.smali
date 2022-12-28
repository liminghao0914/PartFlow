.class Lcom/haibin/calendarview/CalendarLayout$7$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haibin/calendarview/CalendarLayout$7;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarLayout$7;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 802
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 803
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 804
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 805
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$700(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 806
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-nez p1, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7$2;->this$1:Lcom/haibin/calendarview/CalendarLayout$7;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
