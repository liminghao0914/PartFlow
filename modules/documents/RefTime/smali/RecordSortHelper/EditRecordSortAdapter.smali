.class public LRecordSortHelper/EditRecordSortAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private addRecordSortAdapterClickListener:LRecordSortHelper/EditRecordSortAdapterClickListener;

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

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, LRecordSortHelper/EditRecordSortAdapter;->pickedPosition:I

    .line 29
    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter;->mRecordSort:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(LRecordSortHelper/EditRecordSortAdapter;I)I
    .locals 0

    .line 17
    iput p1, p0, LRecordSortHelper/EditRecordSortAdapter;->pickedPosition:I

    return p1
.end method

.method static synthetic access$100(LRecordSortHelper/EditRecordSortAdapter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, LRecordSortHelper/EditRecordSortAdapter;->mRecordSort:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(LRecordSortHelper/EditRecordSortAdapter;)LRecordSortHelper/EditRecordSortAdapterClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, LRecordSortHelper/EditRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/EditRecordSortAdapterClickListener;

    return-object p0
.end method


# virtual methods
.method public InitAdapter(I)V
    .locals 0

    .line 24
    iput p1, p0, LRecordSortHelper/EditRecordSortAdapter;->pickedPosition:I

    .line 25
    invoke-virtual {p0}, LRecordSortHelper/EditRecordSortAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getEditRecordSortAdapterClickListener(LRecordSortHelper/EditRecordSortAdapterClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/EditRecordSortAdapterClickListener;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, LRecordSortHelper/EditRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;I)V
    .locals 2

    .line 39
    iget-object v0, p0, LRecordSortHelper/EditRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    .line 40
    iget v1, p0, LRecordSortHelper/EditRecordSortAdapter;->pickedPosition:I

    if-ne v1, p2, :cond_0

    .line 41
    iget-object v1, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 42
    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    iget-object v0, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v0, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 47
    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    iget-object v0, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortTV:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_0
    iget-object p1, p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    new-instance v0, LRecordSortHelper/EditRecordSortAdapter$1;

    invoke-direct {v0, p0, p2}, LRecordSortHelper/EditRecordSortAdapter$1;-><init>(LRecordSortHelper/EditRecordSortAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LRecordSortHelper/EditRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;
    .locals 3

    .line 34
    new-instance p2, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;-><init>(LRecordSortHelper/EditRecordSortAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, LRecordSortHelper/EditRecordSortAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method
