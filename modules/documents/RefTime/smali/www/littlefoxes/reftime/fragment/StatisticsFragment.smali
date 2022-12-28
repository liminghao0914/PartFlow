.class public Lwww/littlefoxes/reftime/fragment/StatisticsFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field allRecordData:Ljava/util/List;

.field private animationSet1:Landroid/view/animation/AnimationSet;

.field private animationSet2:Landroid/view/animation/AnimationSet;

.field blockView:Landroid/widget/TextView;

.field btnScale:F

.field changeNum:I

.field chartWebView:LJsonHelper/MyWebView;

.field checkedBtnNum:I

.field private dataChangeReceiver:Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;

.field dateTV:Landroid/widget/TextView;

.field dayBtn:Landroid/widget/Button;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private intentFilter:Landroid/content/IntentFilter;

.field isShowCircle:Z

.field jsonString:Ljava/lang/String;

.field leftChart:Landroid/widget/ImageView;

.field listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

.field mContext:Landroid/content/Context;

.field monthBtn:Landroid/widget/Button;

.field rightChart:Landroid/widget/ImageView;

.field rvShowCircle:Landroid/support/v7/widget/RecyclerView;

.field showCircle:Landroid/widget/TextView;

.field showList:Landroid/widget/TextView;

.field showListFrame:Landroid/widget/FrameLayout;

.field thisDate:Ljava/lang/String;

.field weekBtn:Landroid/widget/Button;

.field yearBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->btnScale:F

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    iput v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-static {v2}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$2;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private BtnAnimation(ILandroid/widget/Button;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_58

    :goto_b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet1:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ChangeBtnStyle(Landroid/widget/Button;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "BtnAnimationDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(ILandroid/widget/Button;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_23
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->yearBtn:Landroid/widget/Button;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->yearBtn:Landroid/widget/Button;

    invoke-direct {p0, v3, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ChangeBtnStyle(Landroid/widget/Button;Z)V

    goto :goto_b

    :pswitch_30
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->monthBtn:Landroid/widget/Button;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->monthBtn:Landroid/widget/Button;

    invoke-direct {p0, v3, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ChangeBtnStyle(Landroid/widget/Button;Z)V

    goto :goto_b

    :pswitch_3d
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->weekBtn:Landroid/widget/Button;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->weekBtn:Landroid/widget/Button;

    invoke-direct {p0, v3, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ChangeBtnStyle(Landroid/widget/Button;Z)V

    goto :goto_b

    :pswitch_4a
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    invoke-direct {p0, v3, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ChangeBtnStyle(Landroid/widget/Button;Z)V

    goto :goto_b

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
        :pswitch_23
    .end packed-switch
.end method

.method private ChangeBtnStyle(Landroid/widget/Button;Z)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    if-eqz p2, :cond_1e

    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ChangeBtnStyleDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Landroid/widget/Button;Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1e
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_f
.end method

.method private DateChange(II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    packed-switch p1, :pswitch_data_a2

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "DateChangeDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_19
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getThisYear(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showLoading()V

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$10;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :pswitch_3a
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getMonth(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullMonth(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showLoading()V

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$9;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$9;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :pswitch_5b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getLastWeekDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullWeekDate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$8;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$8;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :pswitch_79
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, LDBManager/DBHelper/GetListData;->getAllChartData(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, LDBManager/StatisticsActivityData/ChartDataHelper;->GetJsonString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showChart(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_79
        :pswitch_5b
        :pswitch_3a
        :pswitch_19
    .end packed-switch
.end method

.method private ListChange(II)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    if-nez v2, :cond_11

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->initList(Ljava/util/List;)V

    :cond_11
    packed-switch p1, :pswitch_data_98

    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ListChangeDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_23
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getThisYear(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    iput-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$7;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$7;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    :pswitch_3f
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getMonth(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullMonth(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    iput-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$6;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$6;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    :pswitch_5b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getLastWeekDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullWeekDate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    iput-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$5;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$5;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    :pswitch_77
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    invoke-static {p2}, LDateHelper/DateHelper;->getDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    iput-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->thisDate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, LDBManager/DBHelper/DataHelper;->GetAllRecordData(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->allRecordData:Ljava/util/List;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList(Ljava/util/List;)V

    goto/16 :goto_14

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_77
        :pswitch_5b
        :pswitch_3f
        :pswitch_23
    .end packed-switch
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showChart(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$000Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$100Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1, p2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$200Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1, p2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$300Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)Landroid/os/Handler;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->handler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$400Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)Landroid/os/Handler;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private initChart()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2}, LJsonHelper/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2}, LJsonHelper/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2}, LJsonHelper/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2, v5}, LJsonHelper/MyWebView;->setScrollContainer(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2, v5}, LJsonHelper/MyWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2, v5}, LJsonHelper/MyWebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2}, LJsonHelper/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, LJsonHelper/MyWebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2}, LJsonHelper/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initChartDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private initList(Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v2, LListFluHelper/DataListRecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v3}, LListFluHelper/DataListRecycleViewAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3c

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initListDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_3c
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method

.method private initView(Landroid/view/View;)V
    .registers 20

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "begin":J
    const v2, 0x7f09003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, LJsonHelper/MyWebView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const v2, 0x7f09004c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090170

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->weekBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->weekBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->monthBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->monthBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090174

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->yearBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->yearBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dateTV:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v3}, LDateHelper/DateHelper;->getDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090095

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->leftChart:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->leftChart:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ea

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rightChart:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rightChart:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f090114

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showCircle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showCircle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090117

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090118

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const v2, 0x7f090115

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showListFrame:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showListFrame:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v2, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet1:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->btnScale:F

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v6, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/16 v3, 0x64

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v5, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->btnScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move v7, v5

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet1:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet1:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->animationSet2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->BtnAnimation(ILandroid/widget/Button;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v14

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private showChart(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_28

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    const-string v3, "\u7a0b\u5e8f\u5f00\u5c0f\u5dee\u5566"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showChartDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x46

    const/4 v4, 0x1

    if-ge v2, v3, :cond_48

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2, v4}, LJsonHelper/MyWebView;->clearCache(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const-string v3, "file:///android_asset/echart_no_data.html"

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->loadUrl(Ljava/lang/String;)V

    :goto_3d
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;

    invoke-direct {v3, p0, p1}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_19

    :cond_48
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    invoke-virtual {v2, v4}, LJsonHelper/MyWebView;->clearCache(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const-string v3, "file:///android_asset/echart_new.html"

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private showList(Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    invoke-virtual {v2, p1}, LListFluHelper/DataListRecycleViewAdapter;->RefrashData(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_25

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showListDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_25
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16
.end method

.method private showLoading()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->clearCache(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const-string v3, "file:///android_asset/loading.html"

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$4;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$4;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showLoadingDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public FrashData()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->initChart()V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getTodayRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$1;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, LDBManager/DBHelper/GetListData;->getAllChartData(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, LDBManager/StatisticsActivityData/ChartDataHelper;->GetJsonString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->jsonString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showChart(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->callOnClick()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "FrashDataDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Lcom/injarctor/InJARctor;->DeviceInfoReader()V

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->intentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.example.mytime.dataChange"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;-><init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dataChangeReceiver:Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dataChangeReceiver:Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onAttachDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Landroid/content/Context;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_13c

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :sswitch_20
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->yearBtn:Landroid/widget/Button;

    invoke-direct {p0, v2, v4}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->BtnAnimation(ILandroid/widget/Button;)V

    iput v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_35

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto :goto_11

    :cond_35
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto :goto_11

    :sswitch_3d
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->weekBtn:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->BtnAnimation(ILandroid/widget/Button;)V

    const/4 v2, 0x2

    iput v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_53

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto :goto_11

    :cond_53
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto :goto_11

    :sswitch_5b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList:Landroid/widget/TextView;

    const-string v3, "#333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showCircle:Landroid/widget/TextView;

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto :goto_11

    :sswitch_85
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->rvShowCircle:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showList:Landroid/widget/TextView;

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->showCircle:Landroid/widget/TextView;

    const-string v3, "#333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->blockView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto/16 :goto_11

    :sswitch_b7
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    if-lez v2, :cond_cb

    sub-int/2addr v2, v4

    iput v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    :goto_be
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_d8

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto/16 :goto_11

    :cond_cb
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0009

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_be

    :cond_d8
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto/16 :goto_11

    :sswitch_e1
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->monthBtn:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->BtnAnimation(ILandroid/widget/Button;)V

    const/4 v2, 0x3

    iput v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_f8

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto/16 :goto_11

    :cond_f8
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto/16 :goto_11

    :sswitch_101
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_111

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    add-int/2addr v3, v4

    iput v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto/16 :goto_11

    :cond_111
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    add-int/2addr v3, v4

    iput v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto/16 :goto_11

    :sswitch_11d
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dayBtn:Landroid/widget/Button;

    invoke-direct {p0, v2, v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->BtnAnimation(ILandroid/widget/Button;)V

    iput v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_133

    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->DateChange(II)V

    goto/16 :goto_11

    :cond_133
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->checkedBtnNum:I

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->changeNum:I

    invoke-direct {p0, v2, v5}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->ListChange(II)V

    goto/16 :goto_11

    :sswitch_data_13c
    .sparse-switch
        0x7f09004c -> :sswitch_11d
        0x7f090095 -> :sswitch_101
        0x7f0900a9 -> :sswitch_e1
        0x7f0900ea -> :sswitch_b7
        0x7f090114 -> :sswitch_85
        0x7f090117 -> :sswitch_5b
        0x7f090170 -> :sswitch_3d
        0x7f090174 -> :sswitch_20
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f0c003b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->FrashData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "onCreateViewDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v7, "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public onDestroy()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->dataChangeReceiver:Lwww/littlefoxes/reftime/fragment/StatisticsFragment$DataChangeReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDestroyDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onResume()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onResumeDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-nez v2, :cond_15

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->isShowCircle:Z

    if-eqz v2, :cond_26

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onStartDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
