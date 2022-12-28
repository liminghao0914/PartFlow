.class Lwww/littlefoxes/reftime/sort/EditSortActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    iget-object v3, v3, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    const-string v4, "addRecordSort"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finish()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity$3"

    const-string v6, "(Landroid/content/DialogInterface;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
