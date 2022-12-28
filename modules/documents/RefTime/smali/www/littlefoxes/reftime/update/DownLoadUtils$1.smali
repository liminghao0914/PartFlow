.class Lwww/littlefoxes/reftime/update/DownLoadUtils$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/update/DownLoadUtils;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/update/DownLoadUtils;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils$1;->this$0:Lwww/littlefoxes/reftime/update/DownLoadUtils;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils$1;->this$0:Lwww/littlefoxes/reftime/update/DownLoadUtils;

    invoke-static {v2}, Lwww/littlefoxes/reftime/update/DownLoadUtils;->access$000(Lwww/littlefoxes/reftime/update/DownLoadUtils;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onReceiveDelta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils$1"

    const-string v6, "(Landroid/content/Context;Landroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
