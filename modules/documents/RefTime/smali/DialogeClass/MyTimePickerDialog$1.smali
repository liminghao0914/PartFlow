.class LDialogeClass/MyTimePickerDialog$1;
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

    .line 62
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog$1;->this$0:LDialogeClass/MyTimePickerDialog;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialog$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog$1;->val$myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
