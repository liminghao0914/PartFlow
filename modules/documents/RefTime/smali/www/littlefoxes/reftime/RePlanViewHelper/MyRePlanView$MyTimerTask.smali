.class Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;
.super Ljava/util/TimerTask;


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;


# direct methods
.method public constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "runDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView$MyTimerTask"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
