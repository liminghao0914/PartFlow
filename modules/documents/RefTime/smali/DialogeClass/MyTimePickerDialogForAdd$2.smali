.class LDialogeClass/MyTimePickerDialogForAdd$2;
.super Ljava/lang/Object;
.source "MyTimePickerDialogForAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDialogeClass/MyTimePickerDialogForAdd;->showPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDialogeClass/MyTimePickerDialogForAdd;

.field final synthetic val$myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(LDialogeClass/MyTimePickerDialogForAdd;Landroid/app/AlertDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForAdd;->access$000(LDialogeClass/MyTimePickerDialogForAdd;)LDialogeClass/MyTimeDialogListenerForAdd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForAdd;->access$100(LDialogeClass/MyTimePickerDialogForAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForAdd;->access$200(LDialogeClass/MyTimePickerDialogForAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListenerForAdd;->timeListener(Ljava/lang/String;)V

    const-string p1, "MyTimePick"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForAdd;->access$100(LDialogeClass/MyTimePickerDialogForAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForAdd;->access$200(LDialogeClass/MyTimePickerDialogForAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
