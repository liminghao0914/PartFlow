.class Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;
.super Ljava/lang/Object;

# interfaces
.implements LDateHelper/PickerView$onSelectListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iget-object v2, v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minuteChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iget-object v2, v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->minuteChangeListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;

    invoke-interface {v2, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;->onMinuteChange(Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onSelectDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyTimePickView$1"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
