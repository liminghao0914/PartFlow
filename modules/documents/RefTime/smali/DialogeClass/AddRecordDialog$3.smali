.class LDialogeClass/AddRecordDialog$3;
.super Ljava/lang/Object;
.source "AddRecordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDialogeClass/AddRecordDialog;->showAddRecordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDialogeClass/AddRecordDialog;


# direct methods
.method constructor <init>(LDialogeClass/AddRecordDialog;)V
    .locals 0

    .line 106
    iput-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 109
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-boolean p1, p1, LDialogeClass/AddRecordDialog;->setStep:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v1, v1, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 111
    iget-object v1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v1}, LDialogeClass/AddRecordDialog;->access$300(LDialogeClass/AddRecordDialog;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-ge p1, v3, :cond_0

    .line 112
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    const v1, 0x7f0f002d

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 113
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    const-string v0, "0min"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 117
    :cond_0
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {p1}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v4, v4, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v4, v4, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    .line 120
    new-instance p1, LDBManager/Database/RecordData;

    iget-object v1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v1}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object v1

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v2}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object v2

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v2

    iget-object v4, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v4, v4, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    invoke-direct {p1, v1, v2, v4}, LDBManager/Database/RecordData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    iget-object v1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v1}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object v1

    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v1

    invoke-virtual {p1, v1}, LDBManager/Database/RecordData;->setRecordTime(I)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LDBManager/Database/RecordData;->setStartTime(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v2, v2, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LDBManager/Database/RecordData;->setStopTime(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, LDBManager/Database/RecordData;->save()Z

    .line 125
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {p1}, LDialogeClass/AddRecordDialog;->access$300(LDialogeClass/AddRecordDialog;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 126
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->dialogCallBack:LDialogeClass/DialogCallBack;

    iget-object v0, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v0}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object v0

    invoke-interface {p1, v0, v3}, LDialogeClass/DialogCallBack;->dialogFinish(LDBManager/MainActivityData/RecordList;Z)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->dialogCallBack:LDialogeClass/DialogCallBack;

    iget-object v1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v1}, LDialogeClass/AddRecordDialog;->access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;

    move-result-object v1

    invoke-interface {p1, v1, v0}, LDialogeClass/DialogCallBack;->dialogFinish(LDBManager/MainActivityData/RecordList;Z)V

    .line 130
    :goto_0
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 133
    :cond_2
    iget-object p1, p0, LDialogeClass/AddRecordDialog$3;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    const v1, 0x7f0f0021

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
