.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-boolean v2, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-nez v2, :cond_1b

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-static {v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$400(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-boolean v2, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_32

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-static {v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$400(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onReceiveDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment$DataChangeReceiver"

    const-string v6, "(Landroid/content/Context;Landroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
