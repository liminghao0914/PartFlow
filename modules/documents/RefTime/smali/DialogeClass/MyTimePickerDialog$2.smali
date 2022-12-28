.class LDialogeClass/MyTimePickerDialog$2;
.super Ljava/lang/Object;
.source "MyTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDialogeClass/MyTimePickerDialog;->showPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDialogeClass/MyTimePickerDialog;

.field final synthetic val$myAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(LDialogeClass/MyTimePickerDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog$2;->this$0:LDialogeClass/MyTimePickerDialog;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialog$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog$2;->this$0:LDialogeClass/MyTimePickerDialog;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialog;->access$200(LDialogeClass/MyTimePickerDialog;)LDialogeClass/MyTimeDialogListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/MyTimePickerDialog$2;->this$0:LDialogeClass/MyTimePickerDialog;

    invoke-static {v1}, LDialogeClass/MyTimePickerDialog;->access$000(LDialogeClass/MyTimePickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, LDialogeClass/MyTimePickerDialog$2;->this$0:LDialogeClass/MyTimePickerDialog;

    invoke-static {v2}, LDialogeClass/MyTimePickerDialog;->access$100(LDialogeClass/MyTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListener;->timeListener(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog$2;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
