.class Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v2, :cond_71

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_53

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$102(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    move-result-object v2

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->cancel()Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2, v6}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$202(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2, v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$002(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z

    :cond_3f
    :goto_3f
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    :cond_44
    :goto_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "handleMessageDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView$1"

    const-string v6, "(Landroid/os/Message;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_53
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v4

    iget-object v5, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v5

    iget-object v6, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v6}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    sub-float v3, v4, v3

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$102(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F

    goto :goto_3f

    :cond_71
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$300(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$400(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_ba

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$400(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$102(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    move-result-object v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    move-result-object v2

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->cancel()Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2, v6}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$202(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2, v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$302(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z

    :cond_b4
    :goto_b4
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    goto :goto_44

    :cond_ba
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v4

    iget-object v5, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v5

    iget-object v6, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-static {v6}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    sub-float v3, v4, v3

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->access$102(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F

    goto :goto_b4
.end method
