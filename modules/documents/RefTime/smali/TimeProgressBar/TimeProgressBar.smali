.class public LTimeProgressBar/TimeProgressBar;
.super Landroid/view/View;
.source "TimeProgressBar.java"


# instance fields
.field EmptyPartColor:I

.field FinishedPartColor:I

.field FinishedPartPercent:I

.field LoadingPartColor:I

.field LoadingPartPercent:I

.field private handler:Landroid/os/Handler;

.field private isLoading:Z

.field mPaintEmpty:Landroid/graphics/Paint;

.field mPaintFinish:Landroid/graphics/Paint;

.field mPaintLoading:Landroid/graphics/Paint;

.field r1:I

.field r2:I

.field private strPercent:Ljava/lang/String;

.field viewHeight:I

.field viewWeight:I

.field x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "#8BC5A1"

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    const-string p1, "#CCEDD2"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    const-string p1, "#FFFFFF"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->EmptyPartColor:I

    const/16 p1, 0x50

    .line 22
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    const-string v0, "12h35m"

    .line 27
    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->strPercent:Ljava/lang/String;

    .line 28
    iput-boolean p1, p0, LTimeProgressBar/TimeProgressBar;->isLoading:Z

    .line 29
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    .line 30
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    .line 31
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->x:I

    const/16 v0, 0xa

    .line 32
    iput v0, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    .line 33
    iput v0, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    .line 34
    new-instance v0, LTimeProgressBar/TimeProgressBar$1;

    invoke-direct {v0, p0}, LTimeProgressBar/TimeProgressBar$1;-><init>(LTimeProgressBar/TimeProgressBar;)V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, p1}, LTimeProgressBar/TimeProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#8BC5A1"

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    const-string p1, "#CCEDD2"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    const-string p1, "#FFFFFF"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->EmptyPartColor:I

    const/16 p1, 0x50

    .line 22
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    const-string v0, "12h35m"

    .line 27
    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->strPercent:Ljava/lang/String;

    .line 28
    iput-boolean p1, p0, LTimeProgressBar/TimeProgressBar;->isLoading:Z

    .line 29
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    .line 30
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    .line 31
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->x:I

    const/16 v0, 0xa

    .line 32
    iput v0, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    .line 33
    iput v0, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    .line 34
    new-instance v0, LTimeProgressBar/TimeProgressBar$1;

    invoke-direct {v0, p0}, LTimeProgressBar/TimeProgressBar$1;-><init>(LTimeProgressBar/TimeProgressBar;)V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->handler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0, p2, p1}, LTimeProgressBar/TimeProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#8BC5A1"

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    const-string p1, "#CCEDD2"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    const-string p1, "#FFFFFF"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->EmptyPartColor:I

    const/16 p1, 0x50

    .line 22
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    const-string v0, "12h35m"

    .line 27
    iput-object v0, p0, LTimeProgressBar/TimeProgressBar;->strPercent:Ljava/lang/String;

    .line 28
    iput-boolean p1, p0, LTimeProgressBar/TimeProgressBar;->isLoading:Z

    .line 29
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    .line 30
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    .line 31
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->x:I

    const/16 p1, 0xa

    .line 32
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    .line 33
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    .line 34
    new-instance p1, LTimeProgressBar/TimeProgressBar$1;

    invoke-direct {p1, p0}, LTimeProgressBar/TimeProgressBar$1;-><init>(LTimeProgressBar/TimeProgressBar;)V

    iput-object p1, p0, LTimeProgressBar/TimeProgressBar;->handler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0, p2, p3}, LTimeProgressBar/TimeProgressBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(LTimeProgressBar/TimeProgressBar;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, LTimeProgressBar/TimeProgressBar;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private drawView(Landroid/graphics/Canvas;)V
    .locals 7

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingLeft()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    iget v1, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    int-to-float v1, v1

    iget v2, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    int-to-float v2, v2

    iget-object v3, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 145
    iget-boolean v0, p0, LTimeProgressBar/TimeProgressBar;->isLoading:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 149
    iget v1, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    int-to-float v1, v1

    iget v2, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    int-to-float v2, v2

    iget-object v3, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    iget v5, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    iget v1, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    int-to-float v1, v1

    iget v2, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    int-to-float v2, v2

    iget-object v3, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 158
    :goto_0
    iget v0, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    if-lez v0, :cond_1

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    iget v5, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    mul-int v5, v5, v4

    iget v6, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    mul-int v4, v4, v6

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x64

    int-to-float v4, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 161
    iget v1, p0, LTimeProgressBar/TimeProgressBar;->r1:I

    int-to-float v1, v1

    iget v2, p0, LTimeProgressBar/TimeProgressBar;->r2:I

    int-to-float v2, v2

    iget-object v3, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 118
    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lwww/littlefoxes/reftime/R$styleable;->MyProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 123
    iget p2, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    .line 124
    iget p2, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartPercent:I

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->EmptyPartColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintEmpty:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    iget p2, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 102
    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 106
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, LTimeProgressBar/TimeProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v1, v2}, LTimeProgressBar/TimeProgressBar;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 83
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-direct {p0, p1}, LTimeProgressBar/TimeProgressBar;->drawView(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 66
    invoke-direct {p0, p2}, LTimeProgressBar/TimeProgressBar;->measureHeight(I)I

    move-result p2

    iput p2, p0, LTimeProgressBar/TimeProgressBar;->viewHeight:I

    .line 67
    invoke-direct {p0, p1}, LTimeProgressBar/TimeProgressBar;->measureWidth(I)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->viewWeight:I

    return-void
.end method

.method public setFinishedPartColor(Ljava/lang/String;)V
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    .line 175
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintFinish:Landroid/graphics/Paint;

    iget v0, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFinishedPartPercent(I)V
    .locals 0

    .line 170
    iput p1, p0, LTimeProgressBar/TimeProgressBar;->FinishedPartPercent:I

    return-void
.end method

.method public setLoadingPartColor(Ljava/lang/String;)V
    .locals 1

    .line 178
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    .line 179
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar;->mPaintLoading:Landroid/graphics/Paint;

    iget v0, p0, LTimeProgressBar/TimeProgressBar;->LoadingPartColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, LTimeProgressBar/TimeProgressBar;->isLoading:Z

    return-void
.end method

.method public setStrPercent(I)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LTimeProgressBar/TimeProgressBar;->strPercent:Ljava/lang/String;

    return-void
.end method
