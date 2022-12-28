.class Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarOutOfRange(Lcom/haibin/calendarview/Calendar;)V
    .registers 2

    return-void
.end method

.method public onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V
    .registers 8

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v0, v0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showDate:Landroid/widget/TextView;

    invoke-static {v2, v3}, LDateHelper/DateHelper;->getPrPlanMonth(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v1, v0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v1}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v0, v0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v1, v1, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-static {v0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$300(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    return-void

    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    goto :goto_19
.end method
