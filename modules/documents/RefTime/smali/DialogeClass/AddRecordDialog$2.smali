.class LDialogeClass/AddRecordDialog$2;
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

    .line 98
    iput-object p1, p0, LDialogeClass/AddRecordDialog$2;->this$0:LDialogeClass/AddRecordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, LDialogeClass/AddRecordDialog$2;->this$0:LDialogeClass/AddRecordDialog;

    iget-object p1, p1, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
