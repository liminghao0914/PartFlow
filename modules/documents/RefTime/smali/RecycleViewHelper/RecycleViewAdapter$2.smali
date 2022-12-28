.class LRecycleViewHelper/RecycleViewAdapter$2;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(LRecycleViewHelper/RecycleViewAdapter;I)V
    .locals 0

    .line 253
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$2;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    iput p2, p0, LRecycleViewHelper/RecycleViewAdapter$2;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$2;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    iget-object p1, p1, LRecycleViewHelper/RecycleViewAdapter;->rvItemClick:LRecycleViewHelper/RVItemClick;

    iget v0, p0, LRecycleViewHelper/RecycleViewAdapter$2;->val$finalI:I

    invoke-interface {p1, v0}, LRecycleViewHelper/RVItemClick;->itemClick(I)V

    return-void
.end method
