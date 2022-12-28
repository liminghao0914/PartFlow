.class Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "YearViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/YearViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearViewHolder"
.end annotation


# instance fields
.field mYearView:Lcom/haibin/calendarview/YearView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    check-cast p1, Lcom/haibin/calendarview/YearView;

    iput-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    .line 77
    iget-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    invoke-virtual {p1, p2}, Lcom/haibin/calendarview/YearView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    return-void
.end method
