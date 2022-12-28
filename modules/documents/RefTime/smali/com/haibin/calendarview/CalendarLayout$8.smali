.class Lcom/haibin/calendarview/CalendarLayout$8;
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

    .line 820
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$8;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$8;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    return-void
.end method
