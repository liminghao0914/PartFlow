.class Lwww/littlefoxes/reftime/record/AddRecordActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/record/AddRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->editRecord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->nameFinish:Z

    iget-boolean v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->emojiFinish:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->finishBtn:Landroid/widget/TextView;

    const-string v4, "#8BC5A1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_38
    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "afterTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.record.AddRecordActivity$1"

    const-string v6, "(Landroid/text/Editable;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_47
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    iput-boolean v4, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->nameFinish:Z

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/AddRecordActivity$1;->this$0:Lwww/littlefoxes/reftime/record/AddRecordActivity;

    iget-object v2, v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->finishBtn:Landroid/widget/TextView;

    const-string v3, "#CCEDD2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_38
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "beforeTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.record.AddRecordActivity$1"

    const-string v6, "(Ljava/lang/CharSequence;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.record.AddRecordActivity$1"

    const-string v6, "(Ljava/lang/CharSequence;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
