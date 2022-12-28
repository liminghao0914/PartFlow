.class Lwww/littlefoxes/reftime/fragment/RecordFragment$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$200(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    :cond_f
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;->RefreshTimingData(Ljava/util/List;Ljava/lang/String;)V

    :cond_23
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_57

    :try_start_28
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, v4, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v3, v3, 0x3c

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$300(Lwww/littlefoxes/reftime/fragment/RecordFragment;IIZ)V
    :try_end_57
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_57} :catch_66

    :cond_57
    :goto_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "handleMessageDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$2"

    const-string v6, "(Landroid/os/Message;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catch_66
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_57
.end method
