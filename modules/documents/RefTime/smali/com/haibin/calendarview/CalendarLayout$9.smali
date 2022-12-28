.class Lcom/haibin/calendarview/CalendarLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->hideContentView()V
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

    .line 910
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$9;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 913
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 914
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$9;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 915
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$9;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    return-void
.end method
