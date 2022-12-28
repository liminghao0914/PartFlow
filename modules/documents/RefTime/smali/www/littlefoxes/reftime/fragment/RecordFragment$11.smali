.class Lwww/littlefoxes/reftime/fragment/RecordFragment$11;
.super Ljava/lang/Object;

# interfaces
.implements LDialogeClass/MyTimeDialogListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeListener(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iput-object p1, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_65

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "min"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_39
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, LDBManager/Database/UserSettingData;->setmMinute(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/UserSettingHelper;->UpdateTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->SetCounting(LDBManager/Database/UserSettingData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "timeListenerDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$11"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_65
    rem-int/lit8 v4, v2, 0x3c

    if-nez v4, :cond_83

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v4, v4, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    :cond_83
    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v5, v5, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v2, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "min"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method
