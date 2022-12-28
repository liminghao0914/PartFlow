.class public Linfo/hoang8f/android/segmented/SegmentedGroup;
.super Landroid/widget/RadioGroup;
.source "SegmentedGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;
    }
.end annotation


# instance fields
.field private mCheckedTextColor:I

.field private mCornerRadius:Ljava/lang/Float;

.field private mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

.field private mMarginDp:I

.field private mTintColor:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 30
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 31
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    sget v0, Linfo/hoang8f/android/segmented/R$color;->radio_button_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 32
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_stroke_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    .line 33
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_conner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    .line 34
    new-instance p1, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    iget-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p1, p0, v0}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;-><init>(Linfo/hoang8f/android/segmented/SegmentedGroup;F)V

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 68
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    .line 69
    iget-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    sget v0, Linfo/hoang8f/android/segmented/R$color;->radio_button_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 70
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_stroke_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    .line 71
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_conner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    .line 72
    invoke-direct {p0, p2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->initAttrs(Landroid/util/AttributeSet;)V

    .line 73
    new-instance p1, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    iget-object p2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p1, p0, p2}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;-><init>(Linfo/hoang8f/android/segmented/SegmentedGroup;F)V

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Linfo/hoang8f/android/segmented/R$styleable;->SegmentedGroup:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    :try_start_0
    sget v0, Linfo/hoang8f/android/segmented/R$styleable;->SegmentedGroup_sc_border_width:I

    .line 47
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_stroke_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    .line 49
    sget v0, Linfo/hoang8f/android/segmented/R$styleable;->SegmentedGroup_sc_corner_radius:I

    .line 51
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Linfo/hoang8f/android/segmented/R$dimen;->radio_button_conner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCornerRadius:Ljava/lang/Float;

    .line 53
    sget v0, Linfo/hoang8f/android/segmented/R$styleable;->SegmentedGroup_sc_tint_color:I

    .line 55
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Linfo/hoang8f/android/segmented/R$color;->radio_button_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 57
    sget v0, Linfo/hoang8f/android/segmented/R$styleable;->SegmentedGroup_sc_checked_text_color:I

    .line 59
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private updateBackground(Landroid/view/View;)V
    .locals 9

    .line 116
    iget-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    invoke-virtual {v0}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;->getSelected()I

    move-result v0

    .line 117
    iget-object v1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    invoke-virtual {v1}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;->getUnselected()I

    move-result v1

    .line 119
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    const v8, 0x10100a7

    aput v8, v6, v7

    aput-object v6, v4, v7

    const/4 v6, 0x2

    new-array v8, v6, [I

    fill-array-data v8, :array_0

    aput-object v8, v4, v5

    new-array v8, v6, [I

    fill-array-data v8, :array_1

    aput-object v8, v4, v6

    new-array v3, v3, [I

    const v8, -0x777778

    aput v8, v3, v7

    iget v8, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    aput v8, v3, v5

    iget v8, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    aput v8, v3, v6

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 124
    move-object v3, p1

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    iget-object v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 130
    iget v3, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 131
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    iget v6, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 133
    iget-object v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    invoke-virtual {v4, p1}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 134
    iget-object v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mLayoutSelector:Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;

    invoke-virtual {v2, p1}, Linfo/hoang8f/android/segmented/SegmentedGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 137
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 138
    new-array v3, v5, [I

    const v4, -0x10100a0

    aput v4, v3, v7

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 139
    new-array v1, v5, [I

    const v3, 0x10100a0

    aput v3, v1, v7

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x10100a0
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 80
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 84
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 85
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(II)V
    .locals 0

    .line 89
    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    .line 90
    iput p2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    .line 91
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public updateBackground()V
    .locals 8

    .line 95
    invoke-super {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 97
    invoke-virtual {p0, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 98
    invoke-direct {p0, v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;)V

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 104
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v6, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 106
    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->getOrientation()I

    move-result v4

    if-nez v4, :cond_1

    .line 107
    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    neg-int v4, v4

    invoke-virtual {v5, v1, v1, v4, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 109
    :cond_1
    iget v4, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mMarginDp:I

    neg-int v4, v4

    invoke-virtual {v5, v1, v1, v1, v4}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 111
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
