.class Lcom/haibin/calendarview/CalendarView$6;
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

    .line 399
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$6;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 402
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 403
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$6;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/WeekBar;->setVisibility(I)V

    return-void
.end method
