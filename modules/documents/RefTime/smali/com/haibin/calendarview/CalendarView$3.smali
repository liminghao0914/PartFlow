.class Lcom/haibin/calendarview/CalendarView$3;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;


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

    .line 224
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthSelected(II)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 228
    iget-object p2, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p2, p1}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;I)V

    .line 229
    iget-object p1, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {p1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    return-void
.end method
