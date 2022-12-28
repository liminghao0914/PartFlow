.class Lcom/haibin/calendarview/CalendarLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->shrink(I)Z
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

    .line 757
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 760
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 761
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 762
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarLayout;->access$700(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 763
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    return-void
.end method
