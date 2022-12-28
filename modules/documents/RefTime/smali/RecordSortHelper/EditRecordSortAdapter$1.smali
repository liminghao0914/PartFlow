.class LRecordSortHelper/EditRecordSortAdapter$1;
.super Ljava/lang/Object;
.source "EditRecordSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecordSortHelper/EditRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecordSortHelper/EditRecordSortAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LRecordSortHelper/EditRecordSortAdapter;I)V
    .locals 0

    .line 51
    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$1;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    iput p2, p0, LRecordSortHelper/EditRecordSortAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$1;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    iget v0, p0, LRecordSortHelper/EditRecordSortAdapter$1;->val$position:I

    invoke-static {p1, v0}, LRecordSortHelper/EditRecordSortAdapter;->access$002(LRecordSortHelper/EditRecordSortAdapter;I)I

    .line 55
    iget-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$1;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    invoke-virtual {p1}, LRecordSortHelper/EditRecordSortAdapter;->notifyDataSetChanged()V

    .line 56
    iget-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$1;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    invoke-static {p1}, LRecordSortHelper/EditRecordSortAdapter;->access$200(LRecordSortHelper/EditRecordSortAdapter;)LRecordSortHelper/EditRecordSortAdapterClickListener;

    move-result-object p1

    iget-object v0, p0, LRecordSortHelper/EditRecordSortAdapter$1;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    invoke-static {v0}, LRecordSortHelper/EditRecordSortAdapter;->access$100(LRecordSortHelper/EditRecordSortAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LRecordSortHelper/EditRecordSortAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    invoke-interface {p1, v0}, LRecordSortHelper/EditRecordSortAdapterClickListener;->itemClick(LDBManager/Database/RecordSort;)V

    return-void
.end method
