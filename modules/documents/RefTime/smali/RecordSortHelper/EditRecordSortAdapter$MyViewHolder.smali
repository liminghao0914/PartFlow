.class LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRecordSortHelper/EditRecordSortAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field sortBtn:Landroid/widget/TextView;

.field sortTV:Landroid/widget/TextView;

.field final synthetic this$0:LRecordSortHelper/EditRecordSortAdapter;


# direct methods
.method public constructor <init>(LRecordSortHelper/EditRecordSortAdapter;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->this$0:LRecordSortHelper/EditRecordSortAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900f2

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const p1, 0x7f0900f3

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LRecordSortHelper/EditRecordSortAdapter$MyViewHolder;->sortTV:Landroid/widget/TextView;

    return-void
.end method
