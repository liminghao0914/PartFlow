.class public LRecordSortHelper/ShowRecordSortAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShowRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private addRecordSortAdapterClickListener:LRecordSortHelper/ShowRecordSortAdapterClickListener;

.field private mRecordSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;"
        }
    .end annotation
.end field

.field private pickedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, LRecordSortHelper/ShowRecordSortAdapter;->pickedPosition:I

    .line 23
    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter;->mRecordSort:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(LRecordSortHelper/ShowRecordSortAdapter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, LRecordSortHelper/ShowRecordSortAdapter;->mRecordSort:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(LRecordSortHelper/ShowRecordSortAdapter;)LRecordSortHelper/ShowRecordSortAdapterClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, LRecordSortHelper/ShowRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/ShowRecordSortAdapterClickListener;

    return-object p0
.end method


# virtual methods
.method public RefrashData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter;->mRecordSort:Ljava/util/List;

    .line 27
    invoke-virtual {p0}, LRecordSortHelper/ShowRecordSortAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, LRecordSortHelper/ShowRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShowRecordSortAdapterClickListener(LRecordSortHelper/ShowRecordSortAdapterClickListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/ShowRecordSortAdapterClickListener;

    return-void
.end method

.method public onBindViewHolder(LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;I)V
    .locals 3

    .line 37
    iget-object v0, p0, LRecordSortHelper/ShowRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    .line 38
    iget-object v1, p1, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p1, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 40
    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    iget-object v0, p1, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p1, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    new-instance v0, LRecordSortHelper/ShowRecordSortAdapter$1;

    invoke-direct {v0, p0, p2}, LRecordSortHelper/ShowRecordSortAdapter$1;-><init>(LRecordSortHelper/ShowRecordSortAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LRecordSortHelper/ShowRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;
    .locals 3

    .line 32
    new-instance p2, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;-><init>(LRecordSortHelper/ShowRecordSortAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, LRecordSortHelper/ShowRecordSortAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method
