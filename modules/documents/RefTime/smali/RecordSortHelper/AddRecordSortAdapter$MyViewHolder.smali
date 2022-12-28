.class LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AddRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRecordSortHelper/AddRecordSortAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field sortBtn:Landroid/widget/TextView;

.field final synthetic this$0:LRecordSortHelper/AddRecordSortAdapter;


# direct methods
.method public constructor <init>(LRecordSortHelper/AddRecordSortAdapter;Landroid/view/View;)V
    .locals 0

    .line 103
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    .line 104
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900f2

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    return-void
.end method
