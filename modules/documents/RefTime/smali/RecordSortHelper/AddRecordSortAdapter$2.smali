.class LRecordSortHelper/AddRecordSortAdapter$2;
.super Ljava/lang/Object;
.source "AddRecordSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecordSortHelper/AddRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecordSortHelper/AddRecordSortAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LRecordSortHelper/AddRecordSortAdapter;I)V
    .locals 0

    .line 84
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$2;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    iput p2, p0, LRecordSortHelper/AddRecordSortAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$2;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    iget v0, p0, LRecordSortHelper/AddRecordSortAdapter$2;->val$position:I

    invoke-static {p1, v0}, LRecordSortHelper/AddRecordSortAdapter;->access$102(LRecordSortHelper/AddRecordSortAdapter;I)I

    .line 88
    iget-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$2;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    invoke-virtual {p1}, LRecordSortHelper/AddRecordSortAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$2;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    invoke-static {p1}, LRecordSortHelper/AddRecordSortAdapter;->access$000(LRecordSortHelper/AddRecordSortAdapter;)LRecordSortHelper/AddRecordSortAdapterClickListener;

    move-result-object p1

    iget-object v0, p0, LRecordSortHelper/AddRecordSortAdapter$2;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    invoke-static {v0}, LRecordSortHelper/AddRecordSortAdapter;->access$200(LRecordSortHelper/AddRecordSortAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LRecordSortHelper/AddRecordSortAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    invoke-interface {p1, v0}, LRecordSortHelper/AddRecordSortAdapterClickListener;->itemPick(LDBManager/Database/RecordSort;)V

    return-void
.end method
