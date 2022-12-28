.class Lcom/haibin/calendarview/CalendarLayout$7;
.super Ljava/lang/Object;
.source "CalendarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->initStatus()V
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

    .line 784
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 787
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 788
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout$7;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v3}, Lcom/haibin/calendarview/CalendarLayout;->access$000(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 787
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 789
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 790
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$7$1;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$7$1;-><init>(Lcom/haibin/calendarview/CalendarLayout$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 799
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$7$2;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$7$2;-><init>(Lcom/haibin/calendarview/CalendarLayout$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 813
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
