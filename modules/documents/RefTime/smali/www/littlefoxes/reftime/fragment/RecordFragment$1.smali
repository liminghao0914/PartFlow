.class Lwww/littlefoxes/reftime/fragment/RecordFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$1;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$1;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    const-string v3, "https://littlefoxes.cn/RefTimeSystem/GetApkVersion"

    invoke-static {v3}, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/ConnectService;->GetConnJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lwww/littlefoxes/reftime/ServerHelper/JsonHelper/JsonObjHelper;->GetJsonVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$002(Lwww/littlefoxes/reftime/fragment/RecordFragment;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x6f

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$1;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$100(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "runDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$1"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
