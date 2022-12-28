.class LDialogeClass/MyTimePickerDialogForList$3;
.super Ljava/lang/Object;
.source "MyTimePickerDialogForList.java"

# interfaces
.implements LDateHelper/PickerView$onSelectListener;


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

.field final synthetic val$certainBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(LDialogeClass/MyTimePickerDialogForList;Landroid/widget/TextView;)V
    .locals 0

    .line 83
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->this$0:LDialogeClass/MyTimePickerDialogForList;

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForList$3;->val$certainBtn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, LDialogeClass/MyTimePickerDialogForList$3;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {v0, p1}, LDialogeClass/MyTimePickerDialogForList;->access$102(LDialogeClass/MyTimePickerDialogForList;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForList;->access$100(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->this$0:LDialogeClass/MyTimePickerDialogForList;

    invoke-static {p1}, LDialogeClass/MyTimePickerDialogForList;->access$200(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->val$certainBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 91
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->val$certainBtn:Landroid/widget/TextView;

    const-string v0, "#CCEDD2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->val$certainBtn:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 94
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList$3;->val$certainBtn:Landroid/widget/TextView;

    const-string v0, "#8BC5A1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
