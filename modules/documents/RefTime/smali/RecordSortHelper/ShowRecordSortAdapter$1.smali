.class LRecordSortHelper/ShowRecordSortAdapter$1;
.super Ljava/lang/Object;
.source "ShowRecordSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecordSortHelper/ShowRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecordSortHelper/ShowRecordSortAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LRecordSortHelper/ShowRecordSortAdapter;I)V
    .locals 0

    .line 42
    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter$1;->this$0:LRecordSortHelper/ShowRecordSortAdapter;

    iput p2, p0, LRecordSortHelper/ShowRecordSortAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter$1;->this$0:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-static {p1}, LRecordSortHelper/ShowRecordSortAdapter;->access$100(LRecordSortHelper/ShowRecordSortAdapter;)LRecordSortHelper/ShowRecordSortAdapterClickListener;

    move-result-object p1

    iget-object v0, p0, LRecordSortHelper/ShowRecordSortAdapter$1;->this$0:LRecordSortHelper/ShowRecordSortAdapter;

    invoke-static {v0}, LRecordSortHelper/ShowRecordSortAdapter;->access$000(LRecordSortHelper/ShowRecordSortAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LRecordSortHelper/ShowRecordSortAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    invoke-interface {p1, v0}, LRecordSortHelper/ShowRecordSortAdapterClickListener;->itemClick(LDBManager/Database/RecordSort;)V

    return-void
.end method
