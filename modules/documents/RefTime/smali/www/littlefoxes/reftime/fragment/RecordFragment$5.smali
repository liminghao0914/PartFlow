.class Lwww/littlefoxes/reftime/fragment/RecordFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

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
    :goto_4
    :try_start_4
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_11} :catch_35

    move-result v2

    if-lez v2, :cond_4d

    :try_start_14
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$400(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_48
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_35

    :goto_19
    :try_start_19
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v4}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$100(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$502(Lwww/littlefoxes/reftime/fragment/RecordFragment;Z)Z
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_4

    :catch_35
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "runDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$5"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catch_48
    move-exception v2

    :try_start_49
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    :cond_4d
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$502(Lwww/littlefoxes/reftime/fragment/RecordFragment;Z)Z
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_53} :catch_35

    goto :goto_39
.end method
