.class LListFluHelper/ListRecycleViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ListRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LListFluHelper/ListRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field recordIcon:Landroid/widget/TextView;

.field recordLayout:Landroid/widget/FrameLayout;

.field recordName:Landroid/widget/TextView;

.field recordTime:Landroid/widget/TextView;

.field startTimeTV:Landroid/widget/TextView;

.field stopTimeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const v0, 0x7f0900de

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    const v0, 0x7f0900e3

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const v0, 0x7f0900e1

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->startTimeTV:Landroid/widget/TextView;

    const v0, 0x7f0900e2

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->stopTimeTV:Landroid/widget/TextView;

    const v0, 0x7f0900df

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LListFluHelper/ListRecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    return-void
.end method
