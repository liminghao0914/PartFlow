.class Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

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

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->showDate:Landroid/widget/TextView;

    invoke-static {v0, v1}, LDateHelper/DateHelper;->getPrPlanMonth(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-static {v4, v0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->access$000(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-static {v0, v1}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->access$000(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-static {v0, v1}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->access$000(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v1, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v1}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v0, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v1, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v1, v1, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v1, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v1}, LDBManager/DBHelper/GetListData;->getAllRecordListDetail(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    iget-object v0, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v0, v0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v1, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v1, v1, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setRealRecordList(Ljava/util/List;)V

    return-void
.end method
