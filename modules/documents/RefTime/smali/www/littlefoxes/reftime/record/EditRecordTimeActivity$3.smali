.class Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$500(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    # getter for: Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;
    invoke-static {v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$600(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)LDBManager/Database/RecordData;

    move-result-object v3

    invoke-static {v2, v3}, LDBManager/DBHelper/DataHelper;->DeleteRecordDate(Ljava/lang/String;LDBManager/Database/RecordData;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    const v3, 0x7f0f0014

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.example.mytime.dataChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-virtual {v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finish()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity$3"

    const-string v6, "(Landroid/content/DialogInterface;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
