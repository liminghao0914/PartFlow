.class public Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field blockView:Landroid/widget/TextView;

.field private dataChangeReceiver:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;

.field dateTv:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field private intentFilter:Landroid/content/IntentFilter;

.field listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

.field recordId:I

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090118

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f09002c

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->blockView:Landroid/widget/TextView;

    const v2, 0x7f09004b

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->dateTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM\u6708dd\u65e5"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->dateTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "recordId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recordId:I

    iget v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recordId:I

    invoke-static {v2}, LDBManager/DBHelper/DataHelper;->GetAllRecordDataById(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_95

    :cond_73
    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->blockView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_78
    new-instance v3, LListFluHelper/DataListRecycleViewAdapter;

    invoke-direct {v3, v2, p0}, LListFluHelper/DataListRecycleViewAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->listRecycleViewAdapter:LListFluHelper/DataListRecycleViewAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_95
    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->blockView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_78
.end method


# virtual methods
.method public onBackPressed()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->finish()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBackPressedDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090028

    if-eq v2, v3, :cond_1c

    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->finish()V

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c0023

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.example.mytime.dataChange"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;

    invoke-direct {v2, p0}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;-><init>(Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity"

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

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->dataChangeReceiver:Lwww/littlefoxes/reftime/record/ShowAllRecordActivity$DataChangeReceiver;

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/ShowAllRecordActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDestroyDelta"

    const-string v5, "www.littlefoxes.reftime.record.ShowAllRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
