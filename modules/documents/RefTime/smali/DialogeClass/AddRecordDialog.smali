.class public LDialogeClass/AddRecordDialog;
.super Ljava/lang/Object;
.source "AddRecordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Name:Ljava/lang/String;

.field TwoDayBtn:Landroid/widget/TextView;

.field private Unicode:I

.field alertDialog:Landroid/app/AlertDialog;

.field private checkedBtnNum:I

.field context:Landroid/content/Context;

.field dialogCallBack:LDialogeClass/DialogCallBack;

.field fullDate:Ljava/lang/String;

.field private recordList:LDBManager/MainActivityData/RecordList;

.field recordLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation
.end field

.field recordStartTime:Landroid/widget/TextView;

.field recordStopTime:Landroid/widget/TextView;

.field recordTimeShow:Landroid/widget/TextView;

.field setStep:Z

.field startDate:Ljava/lang/String;

.field startTime:Ljava/lang/String;

.field stopDate:Ljava/lang/String;

.field stopTime:Ljava/lang/String;

.field textViewCertain:Landroid/widget/TextView;

.field todayBtn:Landroid/widget/TextView;

.field yesterdayBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, LDialogeClass/AddRecordDialog;->recordList:LDBManager/MainActivityData/RecordList;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, LDialogeClass/AddRecordDialog;->setStep:Z

    const-string v1, "12-30-00"

    .line 46
    iput-object v1, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    const-string v1, "13-00-00"

    .line 47
    iput-object v1, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    iput v1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 55
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, LDialogeClass/AddRecordDialog;->recordLists:Ljava/util/List;

    .line 57
    invoke-direct {p0, v0}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    .line 58
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    .line 59
    invoke-static {v0}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    .line 60
    invoke-static {}, LDateHelper/DateHelper;->getRealTime()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 62
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x1e

    if-nez v0, :cond_0

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

    const/4 p2, 0x3

    .line 64
    iput p2, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 65
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    .line 66
    invoke-static {v2}, LDateHelper/DateHelper;->getBeforTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    .line 70
    invoke-static {v2}, LDateHelper/DateHelper;->getBeforTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private BtnAnimation(ILandroid/widget/TextView;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 282
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 283
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 284
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f8ccccd    # 1.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f8ccccd    # 1.1f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v5, 0x64

    .line 288
    invoke-virtual {v14, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 289
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const v16, 0x3f8ccccd    # 1.1f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f8ccccd    # 1.1f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v22, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    move-object v15, v7

    invoke-direct/range {v15 .. v23}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 293
    invoke-virtual {v14, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 294
    invoke-virtual {v2, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 295
    invoke-virtual {v4, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 296
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 297
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object v5, v0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v4, v0, LDialogeClass/AddRecordDialog;->TwoDayBtn:Landroid/widget/TextView;

    invoke-direct {v0, v4, v3}, LDialogeClass/AddRecordDialog;->ChangeBtnStyle(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v5, v0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v4, v0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    invoke-direct {v0, v4, v3}, LDialogeClass/AddRecordDialog;->ChangeBtnStyle(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v5, v0, LDialogeClass/AddRecordDialog;->todayBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v4, v0, LDialogeClass/AddRecordDialog;->todayBtn:Landroid/widget/TextView;

    invoke-direct {v0, v4, v3}, LDialogeClass/AddRecordDialog;->ChangeBtnStyle(Landroid/widget/TextView;Z)V

    .line 313
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x0

    .line 314
    invoke-direct {v0, v1, v2}, LDialogeClass/AddRecordDialog;->ChangeBtnStyle(Landroid/widget/TextView;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ChangeBtnStyle(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 318
    iget-object p2, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0800a5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p2, "#707070"

    .line 320
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p2, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0800a3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p2, "#FFFFFF"

    .line 323
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private GeShiHua(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private PhraseTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ShowTextViewTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 224
    new-instance v0, LDialogeClass/AddRecordDialog$4;

    invoke-direct {v0, p0, p3}, LDialogeClass/AddRecordDialog$4;-><init>(LDialogeClass/AddRecordDialog;Ljava/lang/String;)V

    .line 245
    new-instance v1, LDialogeClass/MyTimePickerDialogForAdd;

    invoke-direct {v1, p1, p2, p3}, LDialogeClass/MyTimePickerDialogForAdd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v0}, LDialogeClass/MyTimePickerDialogForAdd;->GetMyTimeDialogListener(LDialogeClass/MyTimeDialogListenerForAdd;)V

    .line 247
    invoke-virtual {v1}, LDialogeClass/MyTimePickerDialogForAdd;->showPickerDialog()V

    return-void
.end method

.method static synthetic access$000(LDialogeClass/AddRecordDialog;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, LDialogeClass/AddRecordDialog;->Name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(LDialogeClass/AddRecordDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->Name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(LDialogeClass/AddRecordDialog;)I
    .locals 0

    .line 31
    iget p0, p0, LDialogeClass/AddRecordDialog;->Unicode:I

    return p0
.end method

.method static synthetic access$102(LDialogeClass/AddRecordDialog;I)I
    .locals 0

    .line 31
    iput p1, p0, LDialogeClass/AddRecordDialog;->Unicode:I

    return p1
.end method

.method static synthetic access$200(LDialogeClass/AddRecordDialog;)LDBManager/MainActivityData/RecordList;
    .locals 0

    .line 31
    iget-object p0, p0, LDialogeClass/AddRecordDialog;->recordList:LDBManager/MainActivityData/RecordList;

    return-object p0
.end method

.method static synthetic access$202(LDialogeClass/AddRecordDialog;LDBManager/MainActivityData/RecordList;)LDBManager/MainActivityData/RecordList;
    .locals 0

    .line 31
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->recordList:LDBManager/MainActivityData/RecordList;

    return-object p1
.end method

.method static synthetic access$300(LDialogeClass/AddRecordDialog;)I
    .locals 0

    .line 31
    iget p0, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    return p0
.end method

.method static synthetic access$400(LDialogeClass/AddRecordDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, LDialogeClass/AddRecordDialog;->PhraseTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(LDialogeClass/AddRecordDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, LDialogeClass/AddRecordDialog;->showRecordTime()V

    return-void
.end method

.method private getDate(I)Ljava/lang/String;
    .locals 3

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 278
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEmojiList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;)",
            "Ljava/util/List<",
            "LEmojiHelper/EmojiEntity;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 168
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 169
    new-instance v2, LEmojiHelper/EmojiEntity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v4}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LEmojiHelper/EmojiEntity;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09014c

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->todayBtn:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->todayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090175

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090176

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->TwoDayBtn:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->TwoDayBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09001f

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->recordStartTime:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->recordStartTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->recordStartTime:Landroid/widget/TextView;

    iget-object v1, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    invoke-direct {p0, v1}, LDialogeClass/AddRecordDialog;->ShowTextViewTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090020

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->recordStopTime:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->recordStopTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->recordStopTime:Landroid/widget/TextView;

    iget-object v1, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    invoke-direct {p0, v1}, LDialogeClass/AddRecordDialog;->ShowTextViewTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900e4

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    .line 155
    iget p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 157
    invoke-direct {p0, p1}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, v1}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    .line 159
    invoke-static {p1}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    .line 160
    iget-object v1, p0, LDialogeClass/AddRecordDialog;->TwoDayBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, LDialogeClass/AddRecordDialog;->BtnAnimation(ILandroid/widget/TextView;)V

    .line 161
    iput v0, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 162
    invoke-direct {p0}, LDialogeClass/AddRecordDialog;->showRecordTime()V

    :cond_0
    return-void
.end method

.method private showRecordTime()V
    .locals 6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 330
    iget v1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v1, 0x15180

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    const v2, 0x7f0f002d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 335
    iget-object v1, p0, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    const-string v2, "0min"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/16 v1, 0xe10

    if-ge v0, v1, :cond_2

    .line 341
    iget-object v1, p0, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 342
    :cond_2
    rem-int/lit16 v2, v0, 0xe10

    if-nez v2, :cond_3

    .line 343
    iget-object v2, p0, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 345
    :cond_3
    iget-object v3, p0, LDialogeClass/AddRecordDialog;->recordTimeShow:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "min"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public DialogFinish(LDialogeClass/DialogCallBack;)V
    .locals 0

    .line 350
    iput-object p1, p0, LDialogeClass/AddRecordDialog;->dialogCallBack:LDialogeClass/DialogCallBack;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 204
    :sswitch_0
    invoke-direct {p0, v1}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    .line 205
    invoke-direct {p0, v0}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    .line 206
    invoke-static {v1}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    .line 207
    iget p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    iget-object v0, p0, LDialogeClass/AddRecordDialog;->TwoDayBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, LDialogeClass/AddRecordDialog;->BtnAnimation(ILandroid/widget/TextView;)V

    const/4 p1, 0x3

    .line 208
    iput p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 209
    invoke-direct {p0}, LDialogeClass/AddRecordDialog;->showRecordTime()V

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-direct {p0, v1}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    .line 197
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    .line 198
    invoke-static {v1}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    .line 199
    iget p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    iget-object v0, p0, LDialogeClass/AddRecordDialog;->yesterdayBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, LDialogeClass/AddRecordDialog;->BtnAnimation(ILandroid/widget/TextView;)V

    const/4 p1, 0x2

    .line 200
    iput p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 201
    invoke-direct {p0}, LDialogeClass/AddRecordDialog;->showRecordTime()V

    goto :goto_0

    .line 188
    :sswitch_2
    invoke-direct {p0, v0}, LDialogeClass/AddRecordDialog;->getDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    .line 189
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->startDate:Ljava/lang/String;

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->stopDate:Ljava/lang/String;

    .line 190
    invoke-static {v0}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDialogeClass/AddRecordDialog;->fullDate:Ljava/lang/String;

    .line 191
    iget p1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    iget-object v0, p0, LDialogeClass/AddRecordDialog;->todayBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, LDialogeClass/AddRecordDialog;->BtnAnimation(ILandroid/widget/TextView;)V

    .line 192
    iput v1, p0, LDialogeClass/AddRecordDialog;->checkedBtnNum:I

    .line 193
    invoke-direct {p0}, LDialogeClass/AddRecordDialog;->showRecordTime()V

    goto :goto_0

    .line 184
    :sswitch_3
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    iget-object v0, p0, LDialogeClass/AddRecordDialog;->stopTime:Ljava/lang/String;

    const-string v1, "\u7ed3\u675f"

    invoke-direct {p0, p1, v0, v1}, LDialogeClass/AddRecordDialog;->ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 180
    :sswitch_4
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    iget-object v0, p0, LDialogeClass/AddRecordDialog;->startTime:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb"

    invoke-direct {p0, p1, v0, v1}, LDialogeClass/AddRecordDialog;->ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->hide()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09001f -> :sswitch_4
        0x7f090020 -> :sswitch_3
        0x7f09014c -> :sswitch_2
        0x7f090175 -> :sswitch_1
        0x7f090176 -> :sswitch_0
    .end sparse-switch
.end method

.method public showAddRecordDialog()V
    .locals 6

    .line 74
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0027

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f09006a

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 77
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 79
    new-instance v1, LEmojiHelper/EmojiAdapterForAdd;

    iget-object v4, p0, LDialogeClass/AddRecordDialog;->recordLists:Ljava/util/List;

    invoke-direct {p0, v4}, LDialogeClass/AddRecordDialog;->getEmojiList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, LDialogeClass/AddRecordDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v4, v5}, LEmojiHelper/EmojiAdapterForAdd;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-direct {p0, v0}, LDialogeClass/AddRecordDialog;->initView(Landroid/view/View;)V

    .line 84
    new-instance v2, LDialogeClass/AddRecordDialog$1;

    invoke-direct {v2, p0}, LDialogeClass/AddRecordDialog$1;-><init>(LDialogeClass/AddRecordDialog;)V

    invoke-virtual {v1, v2}, LEmojiHelper/EmojiAdapterForAdd;->EmojiItemClickForAdd(LEmojiHelper/EmojiItemClickForAdd;)V

    const v1, 0x7f09013d

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09013e

    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LDialogeClass/AddRecordDialog;->textViewCertain:Landroid/widget/TextView;

    .line 98
    new-instance v0, LDialogeClass/AddRecordDialog$2;

    invoke-direct {v0, p0}, LDialogeClass/AddRecordDialog$2;-><init>(LDialogeClass/AddRecordDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->textViewCertain:Landroid/widget/TextView;

    new-instance v1, LDialogeClass/AddRecordDialog$3;

    invoke-direct {v1, p0}, LDialogeClass/AddRecordDialog$3;-><init>(LDialogeClass/AddRecordDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, LDialogeClass/AddRecordDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
