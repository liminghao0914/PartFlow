.class public Lwww/littlefoxes/reftime/sort/AddSortActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements LRecordSortHelper/EditRecordSortAdapterClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private addRecordSort:LDBManager/Database/RecordSort;

.field private backToPrePage:Landroid/widget/ImageView;

.field private colorFinish:Z

.field private finishAddBtn:Landroid/widget/TextView;

.field private sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private textFinish:Z

.field private tvSortName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->textFinish:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->addRecordSort:LDBManager/Database/RecordSort;

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->colorFinish:Z

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->tvSortName:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$102(Lwww/littlefoxes/reftime/sort/AddSortActivity;Z)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->textFinish:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$102Delta"

    const-string v5, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v6, "(Lwww/littlefoxes/reftime/sort/AddSortActivity;Z)Z"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->colorFinish:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$300Delta"

    const-string v6, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/sort/AddSortActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private initView()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090124

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->tvSortName:Landroid/widget/TextView;

    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->backToPrePage:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->backToPrePage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const-string v4, "#CCEDD2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0900ee

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_5d
    sget-object v5, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_77

    new-instance v5, LDBManager/Database/RecordSort;

    const-string v6, ""

    sget-object v7, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v7, v7, v2

    sget-object v8, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR_TIMING:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-direct {v5, v3, v6, v7, v8}, LDBManager/Database/RecordSort;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_77
    new-instance v2, LRecordSortHelper/EditRecordSortAdapter;

    invoke-direct {v2, v4}, LRecordSortHelper/EditRecordSortAdapter;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, LRecycleViewHelper/SpacesItemDecoration;

    invoke-direct {v5, v3}, LRecycleViewHelper/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v2, p0}, LRecordSortHelper/EditRecordSortAdapter;->getEditRecordSortAdapterClickListener(LRecordSortHelper/EditRecordSortAdapterClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->tvSortName:Landroid/widget/TextView;

    new-instance v3, Lwww/littlefoxes/reftime/sort/AddSortActivity$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/sort/AddSortActivity$1;-><init>(Lwww/littlefoxes/reftime/sort/AddSortActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public itemClick(LDBManager/Database/RecordSort;)V
    .registers 5

    iput-object p1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->addRecordSort:LDBManager/Database/RecordSort;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->colorFinish:Z

    iget-boolean v1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->textFinish:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const-string v2, "#8BC5A1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const-string v1, "#CCEDD2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090028

    if-eq v2, v3, :cond_83

    const v3, 0x7f090077

    if-eq v2, v3, :cond_22

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_22
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->textFinish:Z

    if-eqz v2, :cond_74

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->colorFinish:Z

    if-eqz v2, :cond_74

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->tvSortName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->recordSortExit(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->addRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v3, v2}, LDBManager/Database/RecordSort;->setName(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "addRecordSort"

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/AddSortActivity;->addRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finish()V

    goto :goto_13

    :cond_53
    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->recordSortExit(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_65

    const v2, 0x7f0f006e

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_65
    const v2, 0x7f0f006d

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_74
    const v2, 0x7f0f008e

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_83
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->finish()V

    goto :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c001d

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/sort/AddSortActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.sort.AddSortActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
