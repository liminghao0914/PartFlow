.class Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

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
    const-string v2, "MyTime"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_58

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v5, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v4, v2, :cond_54

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v5, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v2, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$1000(Lwww/littlefoxes/reftime/fragment/RecordFragment;II)V

    :cond_54
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1b

    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onReceiveDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$NotificationReceiver"

    const-string v6, "(Landroid/content/Context;Landroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
