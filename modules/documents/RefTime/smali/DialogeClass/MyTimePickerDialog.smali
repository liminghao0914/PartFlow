.class public LDialogeClass/MyTimePickerDialog;
.super Ljava/lang/Object;
.source "MyTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private imageView1:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private imageView3:Landroid/widget/ImageView;

.field private imageView4:Landroid/widget/ImageView;

.field private imageView5:Landroid/widget/ImageView;

.field private mContex:Landroid/content/Context;

.field private myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

.field private pickedHour:Ljava/lang/String;

.field private pickedMinute:Ljava/lang/String;

.field private preTime:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private textView1:Landroid/widget/FrameLayout;

.field private textView2:Landroid/widget/FrameLayout;

.field private textView3:Landroid/widget/FrameLayout;

.field private textView4:Landroid/widget/FrameLayout;

.field private textView5:Landroid/widget/FrameLayout;

.field private time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20"

    .line 35
    iput-object v0, p0, LDialogeClass/MyTimePickerDialog;->pickedMinute:Ljava/lang/String;

    const-string v0, "1"

    .line 36
    iput-object v0, p0, LDialogeClass/MyTimePickerDialog;->pickedHour:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, LDialogeClass/MyTimePickerDialog;->time:I

    .line 41
    iput-object p2, p0, LDialogeClass/MyTimePickerDialog;->preTime:Ljava/lang/String;

    .line 42
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog;->mContex:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(LDialogeClass/MyTimePickerDialog;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, LDialogeClass/MyTimePickerDialog;->pickedHour:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(LDialogeClass/MyTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog;->pickedHour:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(LDialogeClass/MyTimePickerDialog;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, LDialogeClass/MyTimePickerDialog;->pickedMinute:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(LDialogeClass/MyTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog;->pickedMinute:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(LDialogeClass/MyTimePickerDialog;)LDialogeClass/MyTimeDialogListener;
    .locals 0

    .line 21
    iget-object p0, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    return-object p0
.end method

.method private showPickerDialog()V
    .locals 12

    .line 45
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->mContex:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0045

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, LDialogeClass/MyTimePickerDialog;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0900a3

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, LDateHelper/PickerView;

    const v4, 0x7f090109

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, LDateHelper/PickerView;

    const v5, 0x7f09003b

    .line 49
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090035

    .line 50
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x18

    const/16 v10, 0xa

    if-ge v8, v9, :cond_1

    if-ge v8, v10, :cond_0

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/16 v9, 0x3c

    if-ge v8, v9, :cond_3

    if-ge v8, v10, :cond_2

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    :goto_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 62
    :cond_3
    new-instance v8, LDialogeClass/MyTimePickerDialog$1;

    invoke-direct {v8, p0, v2}, LDialogeClass/MyTimePickerDialog$1;-><init>(LDialogeClass/MyTimePickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, LDialogeClass/MyTimePickerDialog$2;

    invoke-direct {v0, p0, v2}, LDialogeClass/MyTimePickerDialog$2;-><init>(LDialogeClass/MyTimePickerDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :try_start_0
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->preTime:Ljava/lang/String;

    iget-object v8, p0, LDialogeClass/MyTimePickerDialog;->preTime:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LDialogeClass/MyTimePickerDialog;->time:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LDialogeClass/MyTimePickerDialog;->time:I

    div-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDialogeClass/MyTimePickerDialog;->pickedHour:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LDialogeClass/MyTimePickerDialog;->time:I

    rem-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDialogeClass/MyTimePickerDialog;->pickedMinute:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_4
    invoke-virtual {v3, v6}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    .line 86
    iget v0, p0, LDialogeClass/MyTimePickerDialog;->time:I

    div-int/2addr v0, v9

    invoke-virtual {v3, v0}, LDateHelper/PickerView;->setSelected(I)V

    .line 87
    new-instance v0, LDialogeClass/MyTimePickerDialog$3;

    invoke-direct {v0, p0, v5}, LDialogeClass/MyTimePickerDialog$3;-><init>(LDialogeClass/MyTimePickerDialog;Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    .line 103
    invoke-virtual {v4, v7}, LDateHelper/PickerView;->setData(Ljava/util/List;)V

    .line 104
    iget v0, p0, LDialogeClass/MyTimePickerDialog;->time:I

    rem-int/2addr v0, v9

    invoke-virtual {v4, v0}, LDateHelper/PickerView;->setSelected(I)V

    .line 105
    new-instance v0, LDialogeClass/MyTimePickerDialog$4;

    invoke-direct {v0, p0, v5}, LDialogeClass/MyTimePickerDialog$4;-><init>(LDialogeClass/MyTimePickerDialog;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, LDateHelper/PickerView;->setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public GetMyTimeDialogListener(LDialogeClass/MyTimeDialogListener;)V
    .locals 0

    .line 255
    iput-object p1, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 244
    :pswitch_0
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->imageView5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->textView5:Landroid/widget/FrameLayout;

    const-string v0, "#CCCCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 247
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    invoke-direct {p0}, LDialogeClass/MyTimePickerDialog;->showPickerDialog()V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->imageView4:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    const-string v0, "45min"

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListener;->timeListener(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->textView4:Landroid/widget/FrameLayout;

    const-string v0, "#CCCCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 241
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    const-string v0, "30min"

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListener;->timeListener(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->textView3:Landroid/widget/FrameLayout;

    const-string v0, "#CCCCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 225
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    const-string v1, "25min"

    invoke-interface {p1, v1}, LDialogeClass/MyTimeDialogListener;->timeListener(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->textView2:Landroid/widget/FrameLayout;

    const-string v0, "#CCCCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 210
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->myTimeDialogListener:LDialogeClass/MyTimeDialogListener;

    const-string v0, "15min"

    invoke-interface {p1, v0}, LDialogeClass/MyTimeDialogListener;->timeListener(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->textView1:Landroid/widget/FrameLayout;

    const-string v0, "#CCCCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 195
    iget-object p1, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090155
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog()V
    .locals 6

    .line 126
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->mContex:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c005b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, LDialogeClass/MyTimePickerDialog;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    const v2, 0x7f090155

    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView1:Landroid/widget/FrameLayout;

    .line 129
    iget-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView1:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090150

    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->imageView1:Landroid/widget/ImageView;

    const v2, 0x7f090156

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView2:Landroid/widget/FrameLayout;

    .line 132
    iget-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090151

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f090157

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView3:Landroid/widget/FrameLayout;

    .line 135
    iget-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView3:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090152

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->imageView3:Landroid/widget/ImageView;

    const v2, 0x7f090158

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView4:Landroid/widget/FrameLayout;

    .line 138
    iget-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView4:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090153

    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->imageView4:Landroid/widget/ImageView;

    const v2, 0x7f090159

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView5:Landroid/widget/FrameLayout;

    .line 141
    iget-object v2, p0, LDialogeClass/MyTimePickerDialog;->textView5:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090154

    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LDialogeClass/MyTimePickerDialog;->imageView5:Landroid/widget/ImageView;

    const v2, 0x7f090143

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->preTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2cc3dae

    const/4 v4, 0x3

    if-eq v2, v3, :cond_3

    const v3, 0x2da552f

    if-eq v2, v3, :cond_2

    const v3, 0x2e626d5

    if-eq v2, v3, :cond_1

    const v3, 0x2f68431

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "45min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v2, "30min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "25min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "15min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 149
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->preTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3c

    if-eqz v1, :cond_7

    if-ge v0, v2, :cond_5

    .line 153
    iget-object v1, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u5b9a\u4e49("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 148
    :pswitch_0
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    :pswitch_1
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 146
    :pswitch_2
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 145
    :pswitch_3
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 154
    :cond_5
    rem-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_6

    .line 155
    iget-object v1, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u81ea\u5b9a\u4e49("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 157
    :cond_6
    iget-object v3, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u81ea\u5b9a\u4e49("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-ge v0, v2, :cond_8

    .line 161
    iget-object v1, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Customize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 162
    :cond_8
    rem-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_9

    .line 163
    iget-object v1, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Customize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 165
    :cond_9
    iget-object v3, p0, LDialogeClass/MyTimePickerDialog;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Customize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    iget-object v0, p0, LDialogeClass/MyTimePickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
