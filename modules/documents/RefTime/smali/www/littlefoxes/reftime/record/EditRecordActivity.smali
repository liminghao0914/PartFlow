.class public Lwww/littlefoxes/reftime/record/EditRecordActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements LEmojiHelper/EmojiItemClick;
.implements Landroid/view/View$OnClickListener;
.implements LRecordSortHelper/AddRecordSortAdapterClickListener;


# instance fields
.field editRecord:Landroid/widget/EditText;

.field emojiFinish:Z

.field emojiView:Landroid/widget/TextView;

.field finishBtn:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field nameFinish:Z

.field position:I

.field preRecordMenuId:I

.field recordMenu:LDBManager/Database/RecordMenu;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sortAdapter:LRecordSortHelper/AddRecordSortAdapter;

.field sortRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiFinish:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->nameFinish:Z

    new-instance v0, LDBManager/Database/RecordMenu;

    invoke-direct {v0}, LDBManager/Database/RecordMenu;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    iput v1, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    iput v1, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->position:I

    return-void
.end method

.method private initView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f0900ef

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v2, LEmojiHelper/EmojiAdapter;

    const-string v4, "emoji.json"

    invoke-static {p0, v4}, LJsonHelper/FileUtil;->ReadAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LEmojiHelper/JsonParseUtil;->parseEmojiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4, p0}, LEmojiHelper/EmojiAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v2, p0}, LEmojiHelper/EmojiAdapter;->EmojiItemClick(LEmojiHelper/EmojiItemClick;)V

    const v2, 0x7f09006b

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiView:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v5}, LDBManager/Database/RecordMenu;->getRecordUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->editRecord:Landroid/widget/EditText;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->editRecord:Landroid/widget/EditText;

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v4}, LDBManager/Database/RecordMenu;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setClickable(Z)V

    iput-boolean v8, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiFinish:Z

    iput-boolean v8, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->nameFinish:Z

    const v2, 0x7f0900f1

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c7

    new-instance v4, LDBManager/Database/RecordSort;

    const-string v5, "\u65e0"

    sget-object v6, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v6, v6, v8

    sget-object v7, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR_TIMING:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-direct {v4, v8, v5, v6, v7}, LDBManager/Database/RecordSort;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, LDBManager/Database/RecordSort;->save()Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c7
    new-instance v4, LRecordSortHelper/AddRecordSortAdapter;

    iget-object v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v5}, LDBManager/Database/RecordMenu;->getRecordSort()I

    move-result v5

    sub-int v3, v5, v3

    invoke-direct {v4, v2, v3, p0}, LRecordSortHelper/AddRecordSortAdapter;-><init>(Ljava/util/List;ILandroid/content/Context;)V

    iput-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortAdapter:LRecordSortHelper/AddRecordSortAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortAdapter:LRecordSortHelper/AddRecordSortAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, LRecycleViewHelper/SpacesItemDecoration;

    invoke-direct {v3, v8}, LRecycleViewHelper/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortAdapter:LRecordSortHelper/AddRecordSortAdapter;

    invoke-virtual {v2, p0}, LRecordSortHelper/AddRecordSortAdapter;->getAddRecordSortAdapterClickListener(LRecordSortHelper/AddRecordSortAdapterClickListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->editRecord:Landroid/widget/EditText;

    new-instance v3, Lwww/littlefoxes/reftime/record/EditRecordActivity$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity$1;-><init>(Lwww/littlefoxes/reftime/record/EditRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public addSort()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lwww/littlefoxes/reftime/sort/ShowSortActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "addSortDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public itemClick(II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v2, p2}, LDBManager/Database/RecordMenu;->setRecordUnicode(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->emojiFinish:Z

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    const-string v4, "#8BC5A1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "itemClickDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "(II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public itemPick(LDBManager/Database/RecordSort;)V
    .registers 4

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordMenu;->setRecordSort(I)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordMenu;->setRecordSortName(Ljava/lang/String;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordMenu;->setRecordSortColor(Ljava/lang/String;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LDBManager/Database/RecordMenu;->setRecordSortColorTiming(Ljava/lang/String;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    const-string v1, "#8BC5A1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finishBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_15

    if-ne p2, v2, :cond_15

    invoke-static {}, LDBManager/DBHelper/SortHelper;->getAllSortList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->sortAdapter:LRecordSortHelper/AddRecordSortAdapter;

    invoke-virtual {v3, v2}, LRecordSortHelper/AddRecordSortAdapter;->RefrashData(Ljava/util/List;)V

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onActivityResultDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

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

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onBackPressedDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
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

    if-eq v2, v3, :cond_f1

    const v3, 0x7f090077

    if-eq v2, v3, :cond_22

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_22
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    iget-object v3, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->editRecord:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RecordMenu;->setRecordName(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->recordNameSameAsSortName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const v2, 0x7f0f008a

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_48
    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->recordExist(LDBManager/Database/RecordMenu;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordUnicode()I

    move-result v2

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v4}, LDBManager/Database/RecordMenu;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LDBManager/DBHelper/MenuHelper;->SearchDataByID(ILjava/lang/String;)LDBManager/Database/RecordMenu;

    move-result-object v2

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getDeleteRecordDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    iget v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v4}, LDBManager/Database/RecordMenu;->getRecordId()I

    move-result v4

    if-ne v2, v4, :cond_99

    iget v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-static {v2, v4}, LDBManager/DBHelper/MenuHelper;->UpdateRecordMenu(ILDBManager/Database/RecordMenu;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    const-string v5, "recordMenu"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "position"

    iget v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->position:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finish()V

    goto/16 :goto_13

    :cond_99
    const v2, 0x7f0f005b

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_13

    :cond_a5
    iget v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    iget-object v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-static {v4, v5}, LDBManager/DBHelper/MenuHelper;->DeleteRecordMenu(ILDBManager/Database/RecordMenu;)V

    const-string v4, ""

    invoke-virtual {v2, v4}, LDBManager/Database/RecordMenu;->setDeleteRecordDate(Ljava/lang/String;)V

    invoke-static {v2}, LDBManager/DBHelper/MenuHelper;->UpdateRecordMenuForDelete(LDBManager/Database/RecordMenu;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    const-string v5, "recordMenu"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "position"

    iget v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->position:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finish()V

    goto/16 :goto_13

    :cond_cf
    iget v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-static {v2, v4}, LDBManager/DBHelper/MenuHelper;->UpdateRecordMenu(ILDBManager/Database/RecordMenu;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    const-string v5, "recordMenu"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "position"

    iget v5, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->position:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finish()V

    goto/16 :goto_13

    :cond_f1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->finish()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto/16 :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c001e

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v2, "recordMenu"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordMenu;

    iput-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    const-string v2, "position"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->position:I

    iget-object v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->recordMenu:LDBManager/Database/RecordMenu;

    invoke-virtual {v2}, LDBManager/Database/RecordMenu;->getRecordId()I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/record/EditRecordActivity;->preRecordMenuId:I

    invoke-direct {p0}, Lwww/littlefoxes/reftime/record/EditRecordActivity;->initView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.record.EditRecordActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
