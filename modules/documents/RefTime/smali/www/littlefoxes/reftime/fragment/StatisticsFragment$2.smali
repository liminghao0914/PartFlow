.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

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

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$000(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/lang/String;)V

    :cond_10
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$100(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/util/List;)V

    :cond_1c
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget v4, v4, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-static {v2, v3, v4}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$200(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V

    :cond_2c
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget v3, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget v4, v4, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-static {v2, v3, v4}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->access$300(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V

    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "handleMessageDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment$2"

    const-string v6, "(Landroid/os/Message;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
