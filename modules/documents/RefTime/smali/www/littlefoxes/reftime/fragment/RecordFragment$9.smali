.class Lwww/littlefoxes/reftime/fragment/RecordFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$9;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$9;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$700(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$9"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
