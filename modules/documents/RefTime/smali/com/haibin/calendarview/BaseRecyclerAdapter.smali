.class abstract Lcom/haibin/calendarview/BaseRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;,
        Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

.field private onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    new-instance p1, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;

    invoke-direct {p1, p0}, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;-><init>(Lcom/haibin/calendarview/BaseRecyclerAdapter;)V

    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/BaseRecyclerAdapter;)Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method final addItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method final getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method abstract onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method setOnItemClickListener(Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    return-void
.end method
