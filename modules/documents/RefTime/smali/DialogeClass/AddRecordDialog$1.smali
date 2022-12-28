.class LDialogeClass/AddRecordDialog$1;
.super Ljava/lang/Object;
.source "AddRecordDialog.java"

# interfaces
.implements LEmojiHelper/EmojiItemClickForAdd;


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

    .line 84
    iput-object p1, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemClick(ILjava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v0, p2}, LDialogeClass/AddRecordDialog;->access$002(LDialogeClass/AddRecordDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object p2, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {p2, p1}, LDialogeClass/AddRecordDialog;->access$102(LDialogeClass/AddRecordDialog;I)I

    .line 91
    iget-object p1, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    new-instance p2, LDBManager/MainActivityData/RecordList;

    invoke-static {p1}, LDialogeClass/AddRecordDialog;->access$000(LDialogeClass/AddRecordDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    invoke-static {v1}, LDialogeClass/AddRecordDialog;->access$100(LDialogeClass/AddRecordDialog;)I

    move-result v1

    invoke-direct {p2, v0, v1}, LDBManager/MainActivityData/RecordList;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p2}, LDialogeClass/AddRecordDialog;->access$202(LDialogeClass/AddRecordDialog;LDBManager/MainActivityData/RecordList;)LDBManager/MainActivityData/RecordList;

    .line 92
    iget-object p1, p0, LDialogeClass/AddRecordDialog$1;->this$0:LDialogeClass/AddRecordDialog;

    const/4 p2, 0x1

    iput-boolean p2, p1, LDialogeClass/AddRecordDialog;->setStep:Z

    return-void
.end method
