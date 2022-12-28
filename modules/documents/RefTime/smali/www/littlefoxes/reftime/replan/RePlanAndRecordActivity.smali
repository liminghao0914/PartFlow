.class public Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field addDate:Ljava/lang/String;

.field backImg:Landroid/widget/ImageView;

.field calendarLayout:Lcom/haibin/calendarview/CalendarLayout;

.field calendarView:Lcom/haibin/calendarview/CalendarView;

.field private dataChangeReceiver:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;

.field private intentFilter:Landroid/content/IntentFilter;

.field myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

.field planList:Ljava/util/List;

.field realList:Ljava/util/List;

.field showDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private ChangeText(I)Ljava/lang/String;
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

    const-string v3, "ChangeTextDelta"

    const-string v6, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

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

.method static synthetic access$000(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;I)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->ChangeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;I)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private initView()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->backImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->backImg:Landroid/widget/ImageView;

    new-instance v3, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$1;-><init>(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ae

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    if-nez v2, :cond_2e

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    :cond_2e
    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->planList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/GetListData;->getAllRecordListDetail(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->realList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setRealRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setIsPlan(Z)V

    const v2, 0x7f090116

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->showDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->showDate:Landroid/widget/TextView;

    add-int/2addr v2, v3

    invoke-static {v4, v2}, LDateHelper/DateHelper;->getPrPlanMonth(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090031

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/CalendarLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->calendarLayout:Lcom/haibin/calendarview/CalendarLayout;

    const v2, 0x7f090032

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/CalendarView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->calendarView:Lcom/haibin/calendarview/CalendarView;

    new-instance v3, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$2;-><init>(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;)V

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/CalendarView;->setOnCalendarSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->finish()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBackPressedDelta"

    const-string v5, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.example.mytime.dataChange"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;-><init>(Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;

    iget-object v3, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

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

    iget-object v2, p0, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity$DataChangeReceiver;

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/replan/RePlanAndRecordActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDestroyDelta"

    const-string v5, "www.littlefoxes.reftime.replan.RePlanAndRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
