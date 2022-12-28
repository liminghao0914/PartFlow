.class LRecycleViewHelper/RecycleViewAdapter$3;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecycleViewHelper/RecycleViewAdapter;->onBindViewHolder(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecycleViewHelper/RecycleViewAdapter;

.field final synthetic val$finalI:I

.field final synthetic val$viewHolder:LRecycleViewHelper/RecycleViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(LRecycleViewHelper/RecycleViewAdapter;ILRecycleViewHelper/RecycleViewAdapter$ViewHolder;)V
    .locals 0

    .line 259
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$3;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    iput p2, p0, LRecycleViewHelper/RecycleViewAdapter$3;->val$finalI:I

    iput-object p3, p0, LRecycleViewHelper/RecycleViewAdapter$3;->val$viewHolder:LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 262
    iget v0, p0, LRecycleViewHelper/RecycleViewAdapter$3;->val$finalI:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 263
    new-array v0, v0, [I

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    iget-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$3;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    iget-object p1, p1, LRecycleViewHelper/RecycleViewAdapter;->rvItemClick:LRecycleViewHelper/RVItemClick;

    iget-object v2, p0, LRecycleViewHelper/RecycleViewAdapter$3;->val$viewHolder:LRecycleViewHelper/RecycleViewAdapter$ViewHolder;

    iget-object v2, v2, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, LRecycleViewHelper/RecycleViewAdapter$3;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    invoke-static {v3}, LRecycleViewHelper/RecycleViewAdapter;->access$000(LRecycleViewHelper/RecycleViewAdapter;)I

    move-result v3

    aget v0, v0, v1

    iget v4, p0, LRecycleViewHelper/RecycleViewAdapter$3;->val$finalI:I

    sub-int/2addr v4, v1

    invoke-interface {p1, v2, v3, v0, v4}, LRecycleViewHelper/RVItemClick;->itemLongClick(Landroid/view/View;III)V

    :cond_0
    return v1
.end method
