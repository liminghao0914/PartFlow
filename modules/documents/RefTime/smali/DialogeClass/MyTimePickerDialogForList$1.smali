.class LDialogeClass/MyTimePickerDialogForList$1;
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

    .line 63
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList$1;->this$0:LDialogeClass/MyTimePickerDialogForList;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForList$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$1;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForList;->access$000(LDialogeClass/MyTimePickerDialogForList;)LDialogeClass/MyTimeDialogListenerForList;

    move-result-object p1

    invoke-interface {p1}, LDialogeClass/MyTimeDialogListenerForList;->cancelDialog()V

    .line 67
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
