.class public Lwww/littlefoxes/reftime/sort/ShowSortActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements LRecordSortHelper/ShowRecordSortAdapterClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ImBack:Landroid/widget/ImageView;

.field linearLayout:Landroid/widget/LinearLayout;

.field sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

.field private sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field tvFinish:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->ImBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->ImBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->tvFinish:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->tvFinish:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ed

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v2

    new-instance v3, LRecordSortHelper/ShowRecordSortAdapter;

    invoke-direct {v3, v2}, LRecordSortHelper/ShowRecordSortAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, LRecycleViewHelper/SpacesItemDecoration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LRecycleViewHelper/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-virtual {v2, p0}, LRecordSortHelper/ShowRecordSortAdapter;->getShowRecordSortAdapterClickListener(LRecordSortHelper/ShowRecordSortAdapterClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.sort.ShowSortActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public itemClick(LDBManager/Database/RecordSort;)V
    .registers 4

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_16
    return-void

    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recordSort"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2b

    if-ne p2, v3, :cond_2b

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v4

    const-string v2, "addRecordSort"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordSort;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, LDBManager/Database/RecordSort;->setId(I)V

    invoke-virtual {v2}, LDBManager/Database/RecordSort;->save()Z

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-virtual {v2, v4}, LRecordSortHelper/ShowRecordSortAdapter;->RefrashData(Ljava/util/List;)V

    :cond_2b
    const/4 v4, 0x2

    if-ne p1, v4, :cond_53

    if-ne p2, v4, :cond_53

    const-string v2, "addRecordSort"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordSort;

    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->UpdateSort(LDBManager/Database/RecordSort;)V

    invoke-virtual {v2}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TestPlan"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateAllMenuForEditSort(LDBManager/Database/RecordSort;)V

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateAllPlanForEditSort(LDBManager/Database/RecordSort;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-virtual {v2, v5}, LRecordSortHelper/ShowRecordSortAdapter;->RefrashData(Ljava/util/List;)V

    :cond_53
    if-ne p1, v4, :cond_72

    if-ne p2, v3, :cond_72

    const-string v2, "addRecordSort"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordSort;

    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->DeleteSort(LDBManager/Database/RecordSort;)V

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, LDBManager/Database/RecordSort;->getId()I

    move-result v2

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateAllMenuForDeleteSort(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->sortAdapter:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-virtual {v2, v3}, LRecordSortHelper/ShowRecordSortAdapter;->RefrashData(Ljava/util/List;)V

    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onActivityResultDelta"

    const-string v5, "www.littlefoxes.reftime.sort.ShowSortActivity"

    const-string v6, "(IILandroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->finish()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBackPressedDelta"

    const-string v5, "www.littlefoxes.reftime.sort.ShowSortActivity"

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

    const v3, 0x7f090021

    const/4 v4, 0x1

    if-eq v2, v3, :cond_33

    const v3, 0x7f090028

    if-eq v2, v3, :cond_27

    const v3, 0x7f090077

    if-eq v2, v3, :cond_27

    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.sort.ShowSortActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v4, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->finish()V

    goto :goto_18

    :cond_33
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lwww/littlefoxes/reftime/sort/AddSortActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_18
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/sort/ShowSortActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.sort.ShowSortActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
