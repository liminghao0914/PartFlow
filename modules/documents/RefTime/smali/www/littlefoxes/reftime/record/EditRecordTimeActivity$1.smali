.class Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements LDialogeClass/MyTimeDialogListenerForList;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    iput-object p2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDialog()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "cancelDialogDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity$1"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public timeListener(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->val$type:Ljava/lang/String;

    const-string v3, "\u5f00\u59cb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$000(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2, p1}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$102(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_1c
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$400(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$400(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "#8BC5A1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "timeListenerDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity$1"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_44
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$200(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;->this$0:Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;

    invoke-static {v2, p1}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->access$302(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c
.end method
