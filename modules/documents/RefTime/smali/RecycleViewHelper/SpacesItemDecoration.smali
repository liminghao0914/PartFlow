.class public LRecycleViewHelper/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 11
    iput p1, p0, LRecycleViewHelper/SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 17
    iget p4, p0, LRecycleViewHelper/SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 18
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 19
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 23
    iget p2, p0, LRecycleViewHelper/SpacesItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
