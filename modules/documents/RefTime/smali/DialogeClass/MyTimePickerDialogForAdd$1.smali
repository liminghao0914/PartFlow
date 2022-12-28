.class LDialogeClass/MyTimePickerDialogForAdd$1;
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

    .line 64
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$1;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForAdd$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$1;->this$0:LDialogeClass/MyTimePickerDialogForAdd;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForAdd;->access$000(LDialogeClass/MyTimePickerDialogForAdd;)LDialogeClass/MyTimeDialogListenerForAdd;

    move-result-object p1

    invoke-interface {p1}, LDialogeClass/MyTimeDialogListenerForAdd;->cancelDialog()V

    .line 68
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForAdd$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
