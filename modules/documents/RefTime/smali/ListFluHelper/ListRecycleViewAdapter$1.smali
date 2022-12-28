.class LListFluHelper/ListRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "ListRecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LListFluHelper/ListRecycleViewAdapter;->onBindViewHolder(LListFluHelper/ListRecycleViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LListFluHelper/ListRecycleViewAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(LListFluHelper/ListRecycleViewAdapter;I)V
    .locals 0

    .line 51
    iput-object p1, p0, LListFluHelper/ListRecycleViewAdapter$1;->this$0:LListFluHelper/ListRecycleViewAdapter;

    iput p2, p0, LListFluHelper/ListRecycleViewAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, LListFluHelper/ListRecycleViewAdapter$1;->this$0:LListFluHelper/ListRecycleViewAdapter;

    invoke-static {p1}, LListFluHelper/ListRecycleViewAdapter;->access$100(LListFluHelper/ListRecycleViewAdapter;)LListFluHelper/ListRVClick;

    move-result-object p1

    iget-object v0, p0, LListFluHelper/ListRecycleViewAdapter$1;->this$0:LListFluHelper/ListRecycleViewAdapter;

    invoke-static {v0}, LListFluHelper/ListRecycleViewAdapter;->access$000(LListFluHelper/ListRecycleViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LListFluHelper/ListRecycleViewAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordData;

    invoke-interface {p1, v0}, LListFluHelper/ListRVClick;->itemClick(LDBManager/Database/RecordData;)V

    return-void
.end method
