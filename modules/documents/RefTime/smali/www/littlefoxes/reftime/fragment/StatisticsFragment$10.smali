.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, LDBManager/DBHelper/GetListData;->getAllChartDataForMonth(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v5, v5, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, LDBManager/StatisticsActivityData/ChartDataHelper;->GetJsonString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-static {v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$400(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "runDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment$10"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
