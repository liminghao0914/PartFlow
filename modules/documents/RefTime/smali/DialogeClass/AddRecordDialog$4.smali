.class LDialogeClass/AddRecordDialog$4;
.super Ljava/lang/Object;
.source "AddRecordDialog.java"

# interfaces
.implements LDialogeClass/MyTimeDialogListenerForAdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDialogeClass/AddRecordDialog;->ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDialogeClass/AddRecordDialog;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(LDialogeClass/AddRecordDialog;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iput-object p2, p0, LDialogeClass/AddRecordDialog$4;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .line 242
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v0, v0, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public timeListener(Ljava/lang/String;)V
    .locals 3

    .line 227
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->val$type:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v0, v0, LDialogeClass/AddRecordDialog;->recordStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v2, p1}, LDialogeClass/AddRecordDialog;->access$400(LDialogeClass/AddRecordDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    .line 230
    iget-object p1, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {p1}, LDialogeClass/AddRecordDialog;->access$500(LDialogeClass/AddRecordDialog;)V

    .line 231
    iget-object p1, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iget-object v0, v0, LDialogeClass/AddRecordDialog;->recordStopTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v2, p1}, LDialogeClass/AddRecordDialog;->access$400(LDialogeClass/AddRecordDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    .line 235
    iget-object p1, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {p1}, LDialogeClass/AddRecordDialog;->access$500(LDialogeClass/AddRecordDialog;)V

    .line 236
    iget-object p1, p0, LDialogeClass/AddRecordDialog$4;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
