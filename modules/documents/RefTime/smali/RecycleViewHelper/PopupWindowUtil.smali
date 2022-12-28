.class public LRecycleViewHelper/PopupWindowUtil;
.super Ljava/lang/Object;
.source "PopupWindowUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePopWindowPos(Landroid/view/View;Landroid/view/View;II)[I
    .locals 6

    const/4 v0, 0x2

    .line 17
    new-array v1, v0, [I

    .line 18
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, LRecycleViewHelper/PopupWindowUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LRecycleViewHelper/PopupWindowUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    .line 28
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 35
    aget v5, v2, p2

    sub-int/2addr p3, v5

    if-ge p3, v4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 38
    :goto_0
    aget v5, v2, v3

    sub-int/2addr p0, v5

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 41
    aget p3, v2, p2

    sub-int/2addr p3, v4

    aput p3, v1, p2

    goto :goto_2

    .line 44
    :cond_2
    aget p3, v2, p2

    div-int/2addr v4, v0

    add-int/2addr p3, v4

    add-int/lit8 p3, p3, -0x24

    aput p3, v1, p2

    :goto_2
    if-eqz p0, :cond_3

    .line 47
    aget p0, v2, v3

    aput p0, v1, v3

    goto :goto_3

    .line 50
    :cond_3
    aget p0, v2, v3

    sub-int/2addr p0, p1

    aput p0, v1, v3

    :goto_3
    return-object v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method
