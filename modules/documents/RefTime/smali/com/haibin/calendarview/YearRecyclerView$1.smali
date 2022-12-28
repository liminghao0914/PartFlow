.class Lcom/haibin/calendarview/YearRecyclerView$1;
.super Ljava/lang/Object;
.source "YearRecyclerView.java"

# interfaces
.implements Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/YearRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/YearRecyclerView;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/YearRecyclerView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(IJ)V
    .locals 6

    .line 44
    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 45
    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$200(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearViewAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/YearViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haibin/calendarview/Month;

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v1

    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    .line 50
    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    .line 51
    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarUtil;->isMonthInRange(IIIIII)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p2}, Lcom/haibin/calendarview/YearRecyclerView;->access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;->onMonthSelected(II)V

    .line 55
    iget-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p1}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {p1}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;->onYearViewChange(Z)V

    :cond_2
    return-void
.end method
