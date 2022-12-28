.class LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShowRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRecordSortHelper/ShowRecordSortAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field sortBtn:Landroid/widget/TextView;

.field final synthetic this$0:LRecordSortHelper/ShowRecordSortAdapter;


# direct methods
.method public constructor <init>(LRecordSortHelper/ShowRecordSortAdapter;Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->this$0:LRecordSortHelper/ShowRecordSortAdapter;

    .line 59
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900f2

    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LRecordSortHelper/ShowRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    return-void
.end method
