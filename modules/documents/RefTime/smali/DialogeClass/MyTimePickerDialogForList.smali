.class public LDialogeClass/MyTimePickerDialogForList;
.super Ljava/lang/Object;
.source "MyTimePickerDialogForList.java"


# instance fields
.field private mContex:Landroid/content/Context;

.field private myTimeDialogListenerForAdd:LDialogeClass/MyTimeDialogListenerForList;

.field private pickedHour:Ljava/lang/String;

.field private pickedMinute:Ljava/lang/String;

.field private preTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20"

    .line 22
    iput-object v0, p0, LDialogeClass/MyTimePickerDialogForList;->pickedMinute:Ljava/lang/String;

    const-string v0, "1"

    .line 23
    iput-object v0, p0, LDialogeClass/MyTimePickerDialogForList;->pickedHour:Ljava/lang/String;

    .line 27
    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForList;->preTime:Ljava/lang/String;

    .line 28
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->mContex:Landroid/content/Context;

    .line 29
    iput-object p3, p0, LDialogeClass/MyTimePickerDialogForList;->type:Ljava/lang/String;

    .line 30
    iget-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->preTime:Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 31
    aget-object p2, p1, p2

    iput-object p2, p0, LDialogeClass/MyTimePickerDialogForList;->pickedHour:Ljava/lang/String;

    const/4 p2, 0x1

    .line 32
    aget-object p1, p1, p2

    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->pickedMinute:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(LDialogeClass/MyTimePickerDialogForList;)LDialogeClass/MyTimeDialogListenerForList;
    .locals 0

    .line 19
    iget-object p0, p0, LDialogeClass/MyTimePickerDialogForList;->myTimeDialogListenerForAdd:LDialogeClass/MyTimeDialogListenerForList;

    return-object p0
.end method

.method static synthetic access$100(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, LDialogeClass/MyTimePickerDialogForList;->pickedHour:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(LDialogeClass/MyTimePickerDialogForList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->pickedHour:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(LDialogeClass/MyTimePickerDialogForList;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, LDialogeClass/MyTimePickerDialogForList;->pickedMinute:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(LDialogeClass/MyTimePickerDialogForList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->pickedMinute:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public GetMyTimeDialogListener(LDialogeClass/MyTimeDialogListenerForList;)V
    .locals 0

    .line 122
    iput-object p1, p0, LDialogeClass/MyTimePickerDialogForList;->myTimeDialogListenerForAdd:LDialogeClass/MyTimeDialogListenerForList;

    return-void
.end method

.method public showPickerDialog()V
    .locals 12

    .line 36
    iget-object v0, p0, LDialogeClass/MyTimePickerDialogForList;->mContex:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, LDialogeClass/MyTimePickerDialogForList;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0900a3

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, LDateHelper/PickerView;

    const v4, 0x7f090109

    .line 39
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, LDateHelper/PickerView;

    const v5, 0x7f09003b

    .line 40
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090035

    .line 41
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09014a

    .line 42
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u9009\u62e9\u8bb0\u5f55"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, LDialogeClass/MyTimePickerDialogForList;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u65f6\u95f4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v7, p0, LDialogeClass/MyTimePickerDialogForList;->type:Ljava/lang/String;

    const-string v8, "\u5f00\u59cb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Select start time"

    .line 47
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v7, "Select end time"

    .line 49
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x18

    const/16 v10, 0xa

    if-ge v8, v9, :cond_3

    if-ge v8, v10, :cond_2

    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x3c

    if-ge v8, v9, :cond_5

    if-ge v8, v10, :cond_4

    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    :goto_4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 63
    :cond_5
    new-instance v8, LDialogeClass/MyTimePickerDialogForList$1;

    invoke-direct {v8, p0, v2}, LDialogeClass/MyTimePickerDialogForList$1;-><init>(LDialogeClass/MyTimePickerDialogForList;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v6, LDialogeClass/MyTimePickerDialogForList$2;

    invoke-direct {v6, p0, v2}, LDialogeClass/MyTimePickerDialogForList$2;-><init>(LDialogeClass/MyTimePickerDialogForList;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v6, p0, LDialogeClass/MyTimePickerDialogForList;->preTime:Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v3, v0}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    .line 81
    aget-object v0, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, LDateHelper/PickerView;->setSelected(I)V

    .line 82
    new-instance v0, LDialogeClass/MyTimePickerDialogForList$3;

    invoke-direct {v0, p0, v5}, LDialogeClass/MyTimePickerDialogForList$3;-><init>(LDialogeClass/MyTimePickerDialogForList;Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    .line 98
    invoke-virtual {v4, v7}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 99
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    invoke-virtual {v4, v0}, LDateHelper/PickerView;->setSelected(I)V

    .line 101
    new-instance v0, LDialogeClass/MyTimePickerDialogForList$4;

    invoke-direct {v0, p0, v5}, LDialogeClass/MyTimePickerDialogForList$4;-><init>(LDialogeClass/MyTimePickerDialogForList;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    .line 118
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
