.class public Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private backImage:Landroid/widget/ImageView;

.field private deleteBtn:Landroid/widget/TextView;

.field private finishBtn:Landroid/widget/TextView;

.field private isStartDate:Z

.field private isStopDate:Z

.field private preStartTime:Ljava/lang/String;

.field private publicData:LListFluHelper/PublicData;

.field private recordData:LDBManager/Database/RecordData;

.field private recordEmoji:Landroid/widget/TextView;

.field private recordName:Landroid/widget/TextView;

.field private recordStartDate:Landroid/widget/TextView;

.field private recordStartTime:Landroid/widget/TextView;

.field private recordStopDate:Landroid/widget/TextView;

.field private recordStopTime:Landroid/widget/TextView;

.field private startDate:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private stopDate:Ljava/lang/String;

.field private stopTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStartDate:Z

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStopDate:Z

    return-void
.end method

.method private ChangeTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "ChangeTimeDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private ShowDateDialog(Ljava/lang/String;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "begin":J
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Landroid/app/DatePickerDialog;

    add-int/lit8 v4, v1, -0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ShowDateDialogDelta"

    const-string v3, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v4, "(Ljava/lang/String;)V"

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;

    invoke-direct {v2, p0, p3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$1;-><init>(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)V

    new-instance v3, LDialogeClass/MyTimePickerDialogForList;

    invoke-direct {v3, p1, p2, p3}, LDialogeClass/MyTimePickerDialogForList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LDialogeClass/MyTimePickerDialogForList;->GetMyTimeDialogListener(LDialogeClass/MyTimeDialogListenerForList;)V

    invoke-virtual {v3}, LDialogeClass/MyTimePickerDialogForList;->showPickerDialog()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ShowTimeDialogDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$102(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$102Delta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$302(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$302Delta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method static synthetic access$400(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finishBtn:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$400Delta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$500(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->preStartTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$500Delta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$600(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)LDBManager/Database/RecordData;
    .registers 2

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    return-object v0
.end method

.method private addZero(I)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/16 v2, 0xa

    if-ge p1, v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "addZeroDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(I)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method private compareTime(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "compareTimeDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Ljava/lang/String;Ljava/lang/String;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method private getRealDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_e} :catch_39

    move-result-object v2

    :goto_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRealDateDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :catch_39
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_f

    :cond_3f
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM dd, yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method private getRealTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const-string v2, "-"

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_33

    const-string v4, ":"

    :try_start_17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_33

    move-result-object v2

    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRealTimeDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :catch_33
    move-exception v2

    const-string v2, "00:00"

    goto :goto_24
.end method

.method private initView()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finishBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordEmoji:Landroid/widget/TextView;

    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordName:Landroid/widget/TextView;

    const v2, 0x7f090067

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartTime:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartTime:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopTime:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopTime:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090052

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->deleteBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->deleteBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->backImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->backImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartDate:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartDate:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopDate:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopDate:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordEmoji:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getRecordUnicode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordName:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v3}, LDBManager/Database/RecordData;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartTime:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v3}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startTime:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartDate:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopTime:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v3}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopTime:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_137

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    :goto_11d
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopDate:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_137
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, LDateHelper/DateHelper;->getSomeDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    goto :goto_11d
.end method

.method private removeZero(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "removeZeroDelta"

    const-string v6, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v7, "(Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_186

    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :sswitch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c5

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startTime:Ljava/lang/String;

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ChangeTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RecordData;->setStartTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopTime:Ljava/lang/String;

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ChangeTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RecordData;->setStopTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, LDBManager/Database/RecordData;->setRecordDate(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->preStartTime:Ljava/lang/String;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-static {v2, v3}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(Ljava/lang/String;LDBManager/Database/RecordData;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.example.mytime.dataChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finish()V

    goto/16 :goto_10

    :cond_c5
    const v2, 0x7f0f002d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :sswitch_d2
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7ed3\u675f"

    invoke-direct {p0, p0, v2, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_df
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5f00\u59cb"

    invoke-direct {p0, p0, v2, v3}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ShowTimeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_ec
    iput-boolean v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStopDate:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v5, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v5}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ShowDateDialog(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_11c
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, LDateHelper/DateHelper;->getSomeDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ShowDateDialog(Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_12b
    iput-boolean v3, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStartDate:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->ShowDateDialog(Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_138
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0013

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$3;-><init>(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)V

    const v5, 0x7f0f0011

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity$2;-><init>(Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;)V

    const v5, 0x7f0f0097

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "#8BC5A1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_10

    :sswitch_180
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finish()V

    goto/16 :goto_10

    nop

    :sswitch_data_186
    .sparse-switch
        0x7f090028 -> :sswitch_180
        0x7f090052 -> :sswitch_138
        0x7f090062 -> :sswitch_12b
        0x7f090063 -> :sswitch_ec
        0x7f090067 -> :sswitch_df
        0x7f090068 -> :sswitch_d2
        0x7f090077 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c001f

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "recordData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordData;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    if-nez v2, :cond_29

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finish()V

    :cond_29
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordData:LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->preStartTime:Ljava/lang/String;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int v4, p3, v3

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStartDate:Z

    if-eqz v4, :cond_3d

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->startDate:Ljava/lang/String;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStartDate:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v6, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStartDate:Z

    :cond_3d
    iget-boolean v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStopDate:Z

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->recordStopDate:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->getRealDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->stopDate:Ljava/lang/String;

    iput-boolean v6, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->isStopDate:Z

    :cond_4e
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->finishBtn:Landroid/widget/TextView;

    const-string v3, "#8BC5A1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDateSetDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "(Landroid/widget/DatePicker;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onDestroy()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.example.mytime.dataChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordTimeActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDestroyDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordTimeActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
