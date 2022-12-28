.class Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;

    iget v3, v3, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recordId:I

    invoke-static {v3}, LDBManager/DBHelper/DataHelper;->GetAllRecordDataById(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, LListFluHelper/DataListRecycleViewAdapter;->RefrashData(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onReceiveDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity$DataChangeReceiver"

    const-string v6, "(Landroid/content/Context;Landroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
