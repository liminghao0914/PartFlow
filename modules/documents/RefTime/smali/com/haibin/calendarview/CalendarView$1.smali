.class Lcom/haibin/calendarview/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->init(Landroid/content/Context;)V
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

    .line 133
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$1;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$1;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$1;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$1;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$1;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;->onYearChange(I)V

    :cond_1
    return-void
.end method
