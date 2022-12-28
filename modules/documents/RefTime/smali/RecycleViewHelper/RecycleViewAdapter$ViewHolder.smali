.class LRecycleViewHelper/RecycleViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRecycleViewHelper/RecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field clockIM:Landroid/widget/ImageView;

.field recordIcon:Landroid/widget/TextView;

.field recordLayout:Landroid/widget/FrameLayout;

.field recordName:Landroid/widget/TextView;

.field recordTime:Landroid/widget/TextView;

.field recordView:LTimeProgressBar/TimeProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e0

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordName:Landroid/widget/TextView;

    const v0, 0x7f0900de

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordIcon:Landroid/widget/TextView;

    const v0, 0x7f0900e3

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordTime:Landroid/widget/TextView;

    const v0, 0x7f0900e5

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LTimeProgressBar/TimeProgressBar;

    iput-object v0, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordView:LTimeProgressBar/TimeProgressBar;

    const v0, 0x7f090042

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->clockIM:Landroid/widget/ImageView;

    const v0, 0x7f0900df

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$ViewHolder;->recordLayout:Landroid/widget/FrameLayout;

    return-void
.end method
