.class Lcom/haibin/calendarview/CalendarView$5;
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


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarView;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$5;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 349
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$5;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$5;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;->onYearViewChange(Z)V

    :cond_0
    return-void
.end method
