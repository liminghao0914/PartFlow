.class LDialogeClass/MyTimePickerDialogForList$2;
.super Ljava/lang/Object;
.source "MyTimePickerDialogForList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDialogeClass/MyTimePickerDialogForList;->showPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDialogeClass/MyTimePickerDialogForList;

.field final synthetic val$myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(LDialogeClass/MyTimePickerDialogForList;Landroid/app/AlertDialog;)V
    .locals 0

    .line 70
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForList$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForList;->access$000(LDialogeClass/MyTimePickerDialogForList;)LDialogeClass/MyTimeDialogListenerForList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForList;->access$100(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForList;->access$200(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListenerForList;->timeListener(Ljava/lang/String;)V

    const-string p1, "MyTimePick"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForList;->access$100(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDialogeClass/MyTimePickerDialogForList$2;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialogForList;->access$200(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
