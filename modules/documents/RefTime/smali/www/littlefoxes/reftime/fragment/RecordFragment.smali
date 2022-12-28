.class public Lwww/littlefoxes/reftime/fragment/RecordFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements LRecycleViewHelper/RVItemClick;
.implements LDialogeClass/DialogCallBack;


# static fields
.field public static final DATA_CHANGE_BROADCAST:Ljava/lang/String; = "com.example.mytime.dataChange"


# instance fields
.field adapter:LRecycleViewHelper/RecycleViewAdapter;

.field addRecordImg:Landroid/widget/ImageView;

.field allRecordLists:Ljava/util/List;

.field private currentVersion:Ljava/lang/String;

.field drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private isRecordTiming:Z

.field isToday:Z

.field private mContext:Landroid/content/Context;

.field mMinute:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mReceiver:Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;

.field private mVibrator:Landroid/os/Vibrator;

.field menuImg:Landroid/widget/ImageView;

.field myNotification:Ljava/util/List;

.field navView:Landroid/support/design/widget/NavigationView;

.field private newVersionShow:Landroid/widget/TextView;

.field notificationManager:Landroid/app/NotificationManager;

.field private nvCurrentVersion:Landroid/widget/TextView;

.field nvSetPercentage:Landroid/widget/Switch;

.field nvSetTime:Landroid/widget/TextView;

.field nvSetTiming:Landroid/widget/Switch;

.field radioButton21:Landroid/widget/RadioButton;

.field radioButton22:Landroid/widget/RadioButton;

.field rePlanImg:Landroid/widget/ImageView;

.field recordLists:Ljava/util/List;

.field recycleView:Landroid/support/v7/widget/RecyclerView;

.field segmented:Linfo/hoang8f/android/segmented/SegmentedGroup;

.field private serverVersion:Ljava/lang/String;

.field timingPosition:Ljava/util/List;

.field private updateVersionBtn:Landroid/widget/FrameLayout;

.field userSettingDataMessage:LDBManager/Database/UserSettingData;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "30min"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    new-instance v1, LDBManager/Database/UserSettingData;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, LDBManager/Database/UserSettingData;-><init>(ZZLjava/lang/String;)V

    iput-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isRecordTiming:Z

    const-string v0, "1.3.0"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    new-instance v0, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$2;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private GetHttps()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$1;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "GetHttpsDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private ShowUpdateCircle()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->serverVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3b

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->newVersionShow:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "Bundle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->serverVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u6700\u65b0\u7248\u672c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ShowUpdateCircleDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_3b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->newVersionShow:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "Bundle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u7248\u672c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private SortMyLists()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$4;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$4;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SortMyListsDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->serverVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$002(Lwww/littlefoxes/reftime/fragment/RecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->serverVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$002Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/os/Handler;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->handler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$100Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/os/Handler;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$1000(Lwww/littlefoxes/reftime/fragment/RecordFragment;II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1, p2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->stopPreRecord(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$1000Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->ShowUpdateCircle()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$200Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/fragment/RecordFragment;IIZ)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1, p2, p3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->stopCountingRecord(IIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$300Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;IIZ)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingDateCheck()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$400Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$502(Lwww/littlefoxes/reftime/fragment/RecordFragment;Z)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isRecordTiming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$502Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;Z)Z"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$600Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$700(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->showTimePickDialog()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$700Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$800Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$900(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/widget/PopupWindow;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$900Delta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/widget/PopupWindow;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getVersionNameDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(Landroid/content/Context;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private initAllData()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$3;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$3;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initAllDataDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private initData()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    if-eqz v2, :cond_26

    move v3, v4

    :goto_f
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_26

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->cancel()V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    :cond_26
    const/4 v7, 0x1

    invoke-static {v7}, LDBManager/DBHelper/DataHelper;->SearchDataByStatus(Z)Ljava/util/List;

    move-result-object v8

    move v5, v4

    :goto_2c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7b

    move v6, v4

    :goto_33
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_77

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v3, v2, :cond_73

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v7}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    :cond_73
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_33

    :cond_77
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2c

    :cond_7b
    move v3, v4

    :goto_7c
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_160

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v2

    const/4 v5, 0x3

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v5, v6, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v5, v5, 0x3c

    if-le v2, v5, :cond_ca

    :try_start_c7
    invoke-direct {p0, v3, v5, v7}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->stopCountingRecord(IIZ)V
    :try_end_ca
    .catch Ljava/text/ParseException; {:try_start_c7 .. :try_end_ca} :catch_f0

    :cond_ca
    :goto_ca
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->showNotification(LDBManager/MainActivityData/RecordList;)V

    :cond_ec
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7c

    :catch_f0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_ca

    :cond_f5
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v6

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v6, v5, v2

    if-gt v6, v7, :cond_12b

    invoke-static {}, LDateHelper/DateHelper;->GetLastMounthDays()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    if-le v6, v7, :cond_ca

    if-ge v5, v2, :cond_ca

    :cond_12b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v4}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    const v5, 0x15180

    invoke-virtual {v2, v5}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {v2}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;)V

    goto/16 :goto_ca

    :cond_160
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isRecordTiming:Z

    if-nez v2, :cond_167

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timeRefresh()V

    :cond_167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initDataDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f0900e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->rePlanImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->rePlanImg:Landroid/widget/ImageView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$6;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$6;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mVibrator:Landroid/os/Vibrator;

    const v2, 0x7f09010b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Linfo/hoang8f/android/segmented/SegmentedGroup;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->segmented:Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v2, 0x7f09009e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->menuImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->menuImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->addRecordImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->addRecordImg:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recycleView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    new-instance v2, LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-direct {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;-><init>(Ljava/util/List;LDBManager/Database/UserSettingData;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recycleView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, p0}, LRecycleViewHelper/RecycleViewAdapter;->ItemClick(LRecycleViewHelper/RVItemClick;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->segmented:Linfo/hoang8f/android/segmented/SegmentedGroup;

    const-string v3, "#666666"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->segmented:Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->check(I)V

    const v2, 0x7f09005d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x7f0900b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/NavigationView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->navView:Landroid/support/design/widget/NavigationView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->navView:Landroid/support/design/widget/NavigationView;

    const v4, 0x7f0c0048

    invoke-virtual {v2, v4}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v4

    invoke-static {}, LDBManager/DBHelper/UserSettingHelper;->getUserSetting()LDBManager/Database/UserSettingData;

    move-result-object v5

    const v2, 0x7f0900c5

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTiming:Landroid/widget/Switch;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTiming:Landroid/widget/Switch;

    invoke-virtual {v5}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    const v2, 0x7f0900c3

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetPercentage:Landroid/widget/Switch;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetPercentage:Landroid/widget/Switch;

    invoke-virtual {v5}, LDBManager/Database/UserSettingData;->isShowPercentage()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    const v2, 0x7f0900c4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    invoke-virtual {v5}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x3c

    if-ge v2, v5, :cond_19e

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "min"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_129
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetPercentage:Landroid/widget/Switch;

    new-instance v5, Lwww/littlefoxes/reftime/fragment/RecordFragment$7;

    invoke-direct {v5, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$7;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTiming:Landroid/widget/Switch;

    new-instance v5, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;

    invoke-direct {v5, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v5, Lwww/littlefoxes/reftime/fragment/RecordFragment$9;

    invoke-direct {v5, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$9;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->radioButton21:Landroid/widget/RadioButton;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->radioButton21:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0900d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->radioButton22:Landroid/widget/RadioButton;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->radioButton22:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0900bb

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->newVersionShow:Landroid/widget/TextView;

    const v2, 0x7f0900c2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvCurrentVersion:Landroid/widget/TextView;

    const v2, 0x7f090169

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->updateVersionBtn:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->updateVersionBtn:Landroid/widget/FrameLayout;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$10;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$10;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_19e
    rem-int/lit8 v6, v2, 0x3c

    if-nez v6, :cond_1bb

    iget-object v6, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v2, v5

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_129

    :cond_1bb
    iget-object v7, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvSetTime:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v2, v5

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "min"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_129
.end method

.method private showNotification(LDBManager/MainActivityData/RecordList;)V
    .registers 6

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    new-instance v1, Lwww/littlefoxes/reftime/notification/MyNotification;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lwww/littlefoxes/reftime/notification/MyNotification;-><init>(Landroid/app/NotificationManager;LDBManager/MainActivityData/RecordList;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.example.mytime.notification.MyTime-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mReceiver:Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showTimePickDialog()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$11;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    new-instance v3, LDialogeClass/MyTimePickerDialog;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mMinute:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, LDialogeClass/MyTimePickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LDialogeClass/MyTimePickerDialog;->GetMyTimeDialogListener(LDialogeClass/MyTimeDialogListener;)V

    invoke-virtual {v3}, LDialogeClass/MyTimePickerDialog;->showDialog()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showTimePickDialogDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private startNewRecord(LDBManager/MainActivityData/RecordList;I)V
    .registers 11

    const/4 v7, 0x1

    const/16 v6, 0x64

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v0}, LDBManager/Database/UserSettingData;->isShowPercentage()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    int-to-long v4, v6

    aput-wide v4, v1, v2

    int-to-long v2, v6

    aput-wide v2, v1, v7

    const/4 v2, 0x2

    int-to-long v4, v6

    aput-wide v4, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1f
    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->showNotification(LDBManager/MainActivityData/RecordList;)V

    iget-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, LRecycleViewHelper/RecycleViewAdapter;->StartTiming(ILjava/lang/String;)V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LDBManager/DBHelper/DataHelper;->recordDataExist(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V

    :goto_43
    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isRecordTiming:Z

    if-nez v0, :cond_53

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timeRefresh()V

    :cond_53
    return-void

    :cond_54
    new-instance v1, LDBManager/Database/RecordData;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v3

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LDBManager/Database/RecordData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, LDBManager/Database/RecordData;->setStartTime(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, LDBManager/Database/RecordData;->setStatus(Z)V

    const-string v0, ""

    invoke-virtual {v1, v0}, LDBManager/Database/RecordData;->setStopTime(Ljava/lang/String;)V

    invoke-virtual {v1}, LDBManager/Database/RecordData;->save()Z

    goto :goto_43
.end method

.method private stopCountingRecord(IIZ)V
    .registers 15

    .prologue
    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v2, "HH-mm-ss-dd"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v3}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v10}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v2, v2, v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V

    :goto_75
    if-nez p3, :cond_91

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, p1, v3}, LRecycleViewHelper/RecycleViewAdapter;->StartTiming(ILjava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.example.mytime.dataChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "stopCountingRecordDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(IIZ)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_a0
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    const/4 v4, 0x1

    invoke-static {v4}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V

    goto :goto_75
.end method

.method private stopPreRecord(II)V
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x64

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->isShowPercentage()Z

    move-result v2

    const/4 v6, 0x3

    if-eqz v2, :cond_27

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mVibrator:Landroid/os/Vibrator;

    new-array v3, v6, [J

    int-to-long v8, v10

    aput-wide v8, v3, v4

    int-to-long v8, v10

    aput-wide v8, v3, v11

    const/4 v7, 0x2

    int-to-long v8, v10

    aput-wide v8, v3, v7

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_27
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    if-eqz v2, :cond_62

    move v3, v4

    :goto_2c
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_62

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->getNotificationId()I

    move-result v7

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v7, v2, :cond_5e

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->cancel()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2c

    :cond_62
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v5}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_c0

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f002e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v4}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LDBManager/DBHelper/DataHelper;->DeleteRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, p1, v5}, LRecycleViewHelper/RecycleViewAdapter;->StartTiming(ILjava/lang/String;)V

    :goto_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "stopPreRecordDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_c0
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v4}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v2, v6

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V

    :goto_fc
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, p1, v5}, LRecycleViewHelper/RecycleViewAdapter;->StartTiming(ILjava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.example.mytime.dataChange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_b1

    :cond_117
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {v11}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, LDBManager/DBHelper/DataHelper;->UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V

    goto :goto_fc
.end method

.method private timeRefresh()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$5;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "timeRefreshDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private timingDateCheck()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->getmMinute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, v4

    :goto_1a
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5c

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v2

    if-eqz v2, :cond_6b

    mul-int/lit8 v2, v7, 0x3c

    if-le v8, v2, :cond_6b

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput v6, v2, Landroid/os/Message;->what:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "timingDateCheckDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_6b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_af

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->getNotificationId()I

    move-result v5

    iget-object v9, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v5, v2, :cond_af

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v5}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v5

    invoke-virtual {v2, v8, v5, v7}, Lwww/littlefoxes/reftime/notification/MyNotification;->RefreshNotification(IZI)V

    :cond_aa
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1a

    :cond_af
    move v5, v4

    :goto_b0
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_aa

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_f7

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->getNotificationId()I

    move-result v9

    iget-object v10, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    if-ne v9, v2, :cond_f7

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->myNotification:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/notification/MyNotification;

    iget-object v9, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v9}, LDBManager/Database/UserSettingData;->isCountdownTime()Z

    move-result v9

    invoke-virtual {v2, v8, v9, v7}, Lwww/littlefoxes/reftime/notification/MyNotification;->RefreshNotification(IZI)V

    :cond_f7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_b0
.end method


# virtual methods
.method public RefreshData()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getTodayRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->SortMyLists()V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    invoke-virtual {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    :goto_26
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2, p0}, LRecycleViewHelper/RecycleViewAdapter;->ItemClick(LRecycleViewHelper/RVItemClick;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RefreshDataDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_3a
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getAllRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initAllData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    iget-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    invoke-virtual {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    goto :goto_26
.end method

.method public dialogFinish(LDBManager/MainActivityData/RecordList;Z)V
    .registers 5

    if-eqz p2, :cond_14

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v0, p1}, LRecycleViewHelper/RecycleViewAdapter;->AddRecord(LDBManager/MainActivityData/RecordList;)V

    :cond_7
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.example.mytime.dataChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_14
    iget-boolean v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v0, p1}, LRecycleViewHelper/RecycleViewAdapter;->AddRecord(LDBManager/MainActivityData/RecordList;)V

    goto :goto_7
.end method

.method public getPopupWindowContentView(I)Landroid/view/View;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c003a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    invoke-direct {v3, p0, p1}, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;I)V

    const v4, 0x7f09005f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09005e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getPopupWindowContentViewDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v7, "(I)Landroid/view/View;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public itemClick(I)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/4 v6, 0x1

    if-nez p1, :cond_23

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-class v4, Lwww/littlefoxes/reftime/record/AddRecordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v6}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_14
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "itemClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_23
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_37

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "Error"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_14

    :cond_37
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    if-eqz v2, :cond_74

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    sub-int v7, p1, v6

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    if-eqz v3, :cond_6a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6a

    move v4, v5

    :goto_50
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_6a

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->timingPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v7, v3, :cond_70

    invoke-direct {p0, v7, v4}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->stopPreRecord(II)V

    move v5, v6

    :cond_6a
    if-nez v5, :cond_14

    invoke-direct {p0, v2, v7}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->startNewRecord(LDBManager/MainActivityData/RecordList;I)V

    goto :goto_14

    :cond_70
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_50

    :cond_74
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-class v4, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "recordId"

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    sub-int v5, p1, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14
.end method

.method public itemLongClick(Landroid/view/View;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p0, p1, p2, p3, p4}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->showPopupWindow(Landroid/view/View;III)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "itemLongClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/view/View;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_26

    if-ne p2, v3, :cond_26

    const-string v2, "recordMenu"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordMenu;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->GetRecordList(LDBManager/Database/RecordMenu;)LDBManager/MainActivityData/RecordList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->GetRecordList(LDBManager/Database/RecordMenu;)LDBManager/MainActivityData/RecordList;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->AddItem(LDBManager/MainActivityData/RecordList;Z)V

    :cond_26
    const/4 v4, 0x2

    if-ne p1, v3, :cond_45

    if-ne p2, v4, :cond_45

    const-string v2, "recordMenu"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordMenu;

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->GetRecordList(LDBManager/Database/RecordMenu;)LDBManager/MainActivityData/RecordList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->GetRecordList(LDBManager/Database/RecordMenu;)LDBManager/MainActivityData/RecordList;

    move-result-object v2

    invoke-virtual {v5, v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->AddItem(LDBManager/MainActivityData/RecordList;Z)V

    :cond_45
    const/4 v5, 0x3

    if-ne p1, v3, :cond_4d

    if-ne p2, v5, :cond_4d

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->RefreshData()V

    :cond_4d
    if-ne p1, v4, :cond_d3

    if-ne p2, v3, :cond_d3

    const-string v2, "recordMenu"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordMenu;

    const-string v3, "position"

    const/4 v6, 0x0

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v7

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordUnicode()I

    move-result v8

    invoke-virtual {v3, v8}, LDBManager/MainActivityData/RecordList;->setRecordUnicode(I)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, LDBManager/MainActivityData/RecordList;->setRecordName(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordSort()I

    move-result v8

    invoke-virtual {v3, v8}, LDBManager/MainActivityData/RecordList;->setRecordSort(I)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordSortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, LDBManager/MainActivityData/RecordList;->setRecordSortName(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordSortColor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, LDBManager/MainActivityData/RecordList;->setRecordSortColor(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, LDBManager/MainActivityData/RecordList;->setRecordSortColorTiming(Ljava/lang/String;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3, v2, v7}, LRecycleViewHelper/RecycleViewAdapter;->EditItem(LDBManager/MainActivityData/RecordList;I)V

    :cond_d3
    if-ne p1, v4, :cond_f3

    if-ne p2, v4, :cond_f3

    const-string v2, "recordMenu"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordMenu;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->GetRecordList(LDBManager/Database/RecordMenu;)LDBManager/MainActivityData/RecordList;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    if-eqz v2, :cond_118

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v6, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-virtual {v3, v6, v2}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    :cond_f3
    :goto_f3
    if-ne p1, v4, :cond_fa

    if-ne p2, v5, :cond_fa

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->RefreshData()V

    :cond_fa
    if-ne p1, v5, :cond_101

    if-ne p2, v5, :cond_101

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->RefreshData()V

    :cond_101
    const/4 v2, 0x4

    if-ne p1, v2, :cond_109

    if-ne p1, v2, :cond_109

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->RefreshData()V

    :cond_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onActivityResultDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(IILandroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_118
    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v6, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    invoke-virtual {v3, v6, v2}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    goto :goto_f3
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Lcom/injarctor/InJARctor;->DeviceInfoReader()V

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->notificationManager:Landroid/app/NotificationManager;

    new-instance v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mReceiver:Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onAttachDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/content/Context;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_60

    :cond_10
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCheckedChangedDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/widget/CompoundButton;Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_1f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getAllRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initAllData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->allRecordLists:Ljava/util/List;

    iget-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    invoke-virtual {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    goto :goto_10

    :pswitch_3e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getTodayRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->SortMyLists()V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    invoke-virtual {v2, v3, v4}, LRecycleViewHelper/RecycleViewAdapter;->UpdateAllData(Ljava/util/List;Z)V

    goto :goto_10

    :pswitch_data_60
    .packed-switch 0x7f0900d8
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09001e

    if-eq v2, v3, :cond_41

    const v3, 0x7f09009e

    if-eq v2, v3, :cond_21

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_21
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :try_start_29
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->nvCurrentVersion:Landroid/widget/TextView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->currentVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->GetHttps()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_3c

    goto :goto_12

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_41
    new-instance v2, LDialogeClass/AddRecordDialog;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-direct {v2, v3, v4}, LDialogeClass/AddRecordDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2}, LDialogeClass/AddRecordDialog;->showAddRecordDialog()V

    invoke-virtual {v2, p0}, LDialogeClass/AddRecordDialog;->DialogFinish(LDialogeClass/DialogCallBack;)V

    goto :goto_12
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, LDBManager/DBHelper/UserSettingHelper;->CreatDB(Landroid/content/Context;)V

    invoke-static {}, LDBManager/DBHelper/UserSettingHelper;->initUserSetting()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateAllMenu(Landroid/content/Context;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "isFirstApply"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_be

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "isFirstApply"

    invoke-interface {v3, v5, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v5, 0x6

    new-array v6, v5, [I

    const v3, 0x1f340

    aput v3, v6, v4

    const v3, 0x1f60a

    aput v3, v6, v11

    const/16 v3, 0x231b

    aput v3, v6, v8

    const v3, 0x1f4ca

    aput v3, v6, v9

    const v3, 0x1f4cb

    aput v3, v6, v10

    const/4 v3, 0x5

    const v7, 0x1f3c3

    aput v7, v6, v3

    new-array v7, v5, [Ljava/lang/String;

    const v3, 0x7f0f0078

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const v3, 0x7f0f0079

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    const v3, 0x7f0f007a

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    const v3, 0x7f0f007b

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    const v3, 0x7f0f007d

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v3, 0x5

    const v8, 0x7f0f007c

    invoke-virtual {p0, v8}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v8

    move v3, v4

    :goto_a4
    if-ge v3, v5, :cond_be

    new-instance v9, LDBManager/Database/RecordMenu;

    invoke-direct {v9}, LDBManager/Database/RecordMenu;-><init>()V

    aget v10, v6, v3

    invoke-virtual {v9, v10}, LDBManager/Database/RecordMenu;->setRecordUnicode(I)V

    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, LDBManager/Database/RecordMenu;->setRecordName(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, LDBManager/Database/RecordMenu;->setAddRecordDate(Ljava/lang/String;)V

    invoke-virtual {v9}, LDBManager/Database/RecordMenu;->save()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    :cond_be
    const-string v3, "isFirstApplySort"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e7

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    const-string v3, "data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstApplySort"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateAllDataForUpdate(Landroid/content/Context;)V

    :cond_e7
    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getTodayRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->SortMyLists()V

    invoke-static {}, LDBManager/DBHelper/UserSettingHelper;->getUserSetting()LDBManager/Database/UserSettingData;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

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
    const v2, 0x7f0c003d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->initView(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "onCreateViewDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RecordFragment"

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
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mReceiver:Lwww/littlefoxes/reftime/fragment/RecordFragment$NotificationReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDestroyDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

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
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->RefreshData()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onStartDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public showPopupWindow(Landroid/view/View;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p0, p4}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->getPopupWindowContentView(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v3, v2, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v2, p2, p3}, LRecycleViewHelper/PopupWindowUtil;->calculatePopWindowPos(Landroid/view/View;Landroid/view/View;II)[I

    move-result-object v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    aget v5, v2, v5

    aget v2, v2, v4

    const v4, 0x800033

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showPopupWindowDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment"

    const-string v6, "(Landroid/view/View;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
