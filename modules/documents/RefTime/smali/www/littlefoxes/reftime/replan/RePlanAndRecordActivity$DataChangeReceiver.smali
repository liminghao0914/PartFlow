.class Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    :cond_12
    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v3, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v3}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v3, v3, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v3, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v3}, LDBManager/DBHelper/GetListData;->getAllRecordListDetail(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    iget-object v3, v3, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setRealRecordList(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onReceiveDelta"

    const-string v5, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity$DataChangeReceiver"

    const-string v6, "(Landroid/content/Context;Landroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
