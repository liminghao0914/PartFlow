.class public Lwww/littlefoxes/reftime/sort/EditSortActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements LRecordSortHelper/EditRecordSortAdapterClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backToPrePage:Landroid/widget/ImageView;

.field private deleteSort:Landroid/widget/TextView;

.field private finishAddBtn:Landroid/widget/TextView;

.field preRecordSort:LDBManager/Database/RecordSort;

.field sortAdapter:LRecordSortHelper/EditRecordSortAdapter;

.field private sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private textFinish:Z

.field private tvSortName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->textFinish:Z

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->tvSortName:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$102(Lwww/littlefoxes/reftime/sort/EditSortActivity;Z)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->textFinish:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$102Delta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v6, "(Lwww/littlefoxes/reftime/sort/EditSortActivity;Z)Z"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v7, "(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;"

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

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->tvSortName:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->tvSortName:Landroid/widget/TextView;

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v4}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->backToPrePage:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->backToPrePage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->deleteSort:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->deleteSort:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ee

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_68
    sget-object v5, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_82

    new-instance v5, LDBManager/Database/RecordSort;

    const-string v6, ""

    sget-object v7, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v7, v7, v2

    sget-object v8, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR_TIMING:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-direct {v5, v3, v6, v7, v8}, LDBManager/Database/RecordSort;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_82
    new-instance v2, LRecordSortHelper/EditRecordSortAdapter;

    invoke-direct {v2, v4}, LRecordSortHelper/EditRecordSortAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortAdapter:LRecordSortHelper/EditRecordSortAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortAdapter:LRecordSortHelper/EditRecordSortAdapter;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, LRecycleViewHelper/SpacesItemDecoration;

    invoke-direct {v4, v3}, LRecycleViewHelper/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortAdapter:LRecordSortHelper/EditRecordSortAdapter;

    invoke-virtual {v2, p0}, LRecordSortHelper/EditRecordSortAdapter;->getEditRecordSortAdapterClickListener(LRecordSortHelper/EditRecordSortAdapterClickListener;)V

    :goto_9f
    sget-object v2, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_b4

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v2}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    :cond_b4
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->sortAdapter:LRecordSortHelper/EditRecordSortAdapter;

    invoke-virtual {v2, v3}, LRecordSortHelper/EditRecordSortAdapter;->InitAdapter(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->tvSortName:Landroid/widget/TextView;

    new-instance v3, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;-><init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f
.end method


# virtual methods
.method public itemClick(LDBManager/Database/RecordSort;)V
    .registers 4

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordSort;->setColor(Ljava/lang/String;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordSort;->setColorTiming(Ljava/lang/String;)V

    iget-boolean v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->textFinish:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const-string v1, "#8BC5A1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finishAddBtn:Landroid/widget/TextView;

    const-string v1, "#CCEDD2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_27
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090028

    if-eq v2, v3, :cond_fa

    const v3, 0x7f090053

    const/4 v4, -0x1

    if-eq v2, v3, :cond_ae

    const v3, 0x7f090077

    if-eq v2, v3, :cond_28

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_28
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->textFinish:Z

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->tvSortName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->recordSortExit(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_55

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v3, v2}, LDBManager/Database/RecordSort;->setName(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "addRecordSort"

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finish()V

    goto :goto_19

    :cond_55
    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v3}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v3, v2}, LDBManager/Database/RecordSort;->setName(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "addRecordSort"

    iget-object v4, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finish()V

    goto :goto_19

    :cond_79
    invoke-static {v2}, LDBManager/DBHelper/SortHelper;->recordSortExit(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8e

    const v2, 0x7f0f006e

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_19

    :cond_8e
    const v2, 0x7f0f006d

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    :cond_9e
    const v2, 0x7f0f008e

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_19

    :cond_ae
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0093

    invoke-virtual {p0, v3}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity$3;-><init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V

    const v5, 0x7f0f0011

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lwww/littlefoxes/reftime/sort/EditSortActivity$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity$2;-><init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V

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

    goto/16 :goto_19

    :cond_fa
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->finish()V

    goto/16 :goto_19
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c0020

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "recordSort"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordSort;

    iput-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity;->preRecordSort:LDBManager/Database/RecordSort;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
