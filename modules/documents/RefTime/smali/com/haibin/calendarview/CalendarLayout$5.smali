.class Lcom/haibin/calendarview/CalendarLayout$5;
.super Ljava/lang/Object;
.source "CalendarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 748
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 751
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    .line 752
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$000(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 753
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarLayout;->access$100(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setTranslationY(F)V

    .line 754
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$5;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    return-void
.end method
