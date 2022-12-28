.class Lwww/littlefoxes/reftime/fragment/RecordFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$6;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$6;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$6;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-virtual {v3, v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$6"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
