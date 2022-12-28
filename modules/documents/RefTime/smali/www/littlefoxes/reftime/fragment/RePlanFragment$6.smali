.class Lwww/littlefoxes/reftime/fragment/RePlanFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$6;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHourChange(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$6;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iput-object p1, v2, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onHourChangeDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment$6"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
