.class public LDateHelper/DatePickerView;
.super Landroid/view/View;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDateHelper/DatePickerView$onSelectListener;,
        LDateHelper/DatePickerView$MyTimerTask;
    }
.end annotation


# static fields
.field public static final MARGIN_ALPHA:F = 2.8f

.field public static final SPEED:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PickerView"


# instance fields
.field private isInit:Z

.field private mColorText:I

.field private mCurrentSelected:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDownY:F

.field private mMaxTextAlpha:F

.field private mMaxTextSize:F

.field private mMinTextAlpha:F

.field private mMinTextSize:F

.field private mMoveLen:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectListener:LDateHelper/DatePickerView$onSelectListener;

.field private mTask:LDateHelper/DatePickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 39
    iput p1, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    iput p1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 42
    iput p1, p0, LDateHelper/DatePickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 43
    iput p1, p0, LDateHelper/DatePickerView;->mMinTextAlpha:F

    const p1, 0x333333

    .line 45
    iput p1, p0, LDateHelper/DatePickerView;->mColorText:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, LDateHelper/DatePickerView;->isInit:Z

    .line 60
    new-instance p1, LDateHelper/DatePickerView$1;

    invoke-direct {p1, p0}, LDateHelper/DatePickerView$1;-><init>(LDateHelper/DatePickerView;)V

    iput-object p1, p0, LDateHelper/DatePickerView;->updateHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, LDateHelper/DatePickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 39
    iput p1, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    iput p1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 42
    iput p1, p0, LDateHelper/DatePickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 43
    iput p1, p0, LDateHelper/DatePickerView;->mMinTextAlpha:F

    const p1, 0x333333

    .line 45
    iput p1, p0, LDateHelper/DatePickerView;->mColorText:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, LDateHelper/DatePickerView;->isInit:Z

    .line 60
    new-instance p1, LDateHelper/DatePickerView$1;

    invoke-direct {p1, p0}, LDateHelper/DatePickerView$1;-><init>(LDateHelper/DatePickerView;)V

    iput-object p1, p0, LDateHelper/DatePickerView;->updateHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, LDateHelper/DatePickerView;->init()V

    return-void
.end method

.method static synthetic access$000(LDateHelper/DatePickerView;)F
    .locals 0

    .line 20
    iget p0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    return p0
.end method

.method static synthetic access$002(LDateHelper/DatePickerView;F)F
    .locals 0

    .line 20
    iput p1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    return p1
.end method

.method static synthetic access$100(LDateHelper/DatePickerView;)LDateHelper/DatePickerView$MyTimerTask;
    .locals 0

    .line 20
    iget-object p0, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    return-object p0
.end method

.method static synthetic access$102(LDateHelper/DatePickerView;LDateHelper/DatePickerView$MyTimerTask;)LDateHelper/DatePickerView$MyTimerTask;
    .locals 0

    .line 20
    iput-object p1, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$200(LDateHelper/DatePickerView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, LDateHelper/DatePickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 228
    iget-object v0, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, LDateHelper/DatePickerView$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LDateHelper/DatePickerView;->mLastDownY:F

    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 237
    iget v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, LDateHelper/DatePickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    .line 239
    iget v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    const v2, 0x40333333    # 2.8f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 241
    invoke-direct {p0}, LDateHelper/DatePickerView;->moveTailToHead()V

    .line 242
    iget v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    goto :goto_0

    :cond_0
    const v3, -0x3fcccccd    # -2.8f

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 245
    invoke-direct {p0}, LDateHelper/DatePickerView;->moveHeadToTail()V

    .line 246
    iget v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LDateHelper/DatePickerView;->mMoveLen:F

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LDateHelper/DatePickerView;->mLastDownY:F

    .line 250
    invoke-virtual {p0}, LDateHelper/DatePickerView;->invalidate()V

    return-void
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .locals 7

    .line 255
    iget p1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 256
    iput p1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    return-void

    .line 259
    :cond_0
    iget-object p1, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, LDateHelper/DatePickerView$MyTimerTask;->cancel()Z

    const/4 p1, 0x0

    .line 261
    iput-object p1, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    .line 263
    :cond_1
    new-instance p1, LDateHelper/DatePickerView$MyTimerTask;

    iget-object v0, p0, LDateHelper/DatePickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, LDateHelper/DatePickerView$MyTimerTask;-><init>(LDateHelper/DatePickerView;Landroid/os/Handler;)V

    iput-object p1, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    .line 264
    iget-object v1, p0, LDateHelper/DatePickerView;->timer:Ljava/util/Timer;

    iget-object v2, p0, LDateHelper/DatePickerView;->mTask:LDateHelper/DatePickerView$MyTimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .locals 11

    .line 151
    iget v0, p0, LDateHelper/DatePickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    invoke-direct {p0, v0, v1}, LDateHelper/DatePickerView;->parabola(FF)F

    move-result v0

    .line 152
    iget v1, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    iget v2, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    .line 153
    iget-object v2, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget-object v1, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, LDateHelper/DatePickerView;->mMaxTextAlpha:F

    iget v3, p0, LDateHelper/DatePickerView;->mMinTextAlpha:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget v0, p0, LDateHelper/DatePickerView;->mViewWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 157
    iget v1, p0, LDateHelper/DatePickerView;->mViewHeight:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    iget v1, p0, LDateHelper/DatePickerView;->mMoveLen:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 158
    iget-object v4, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    float-to-double v5, v1

    .line 159
    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v2

    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v2

    add-double/2addr v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v1, v5

    .line 161
    iget-object v2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    iget v3, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    :goto_0
    iget v2, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    .line 164
    invoke-direct {p0, p1, v1, v3}, LDateHelper/DatePickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    :goto_1
    iget v1, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 168
    invoke-direct {p0, p1, v0, v1}, LDateHelper/DatePickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 179
    iget v0, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    const v1, 0x40333333    # 2.8f

    mul-float v0, v0, v1

    int-to-float v1, p2

    mul-float v0, v0, v1

    int-to-float v1, p3

    iget v2, p0, LDateHelper/DatePickerView;->mMoveLen:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 181
    iget v2, p0, LDateHelper/DatePickerView;->mViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, LDateHelper/DatePickerView;->parabola(FF)F

    move-result v2

    .line 182
    iget v3, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    iget v4, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v4

    .line 183
    iget-object v4, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    iget-object v3, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, LDateHelper/DatePickerView;->mMaxTextAlpha:F

    iget v5, p0, LDateHelper/DatePickerView;->mMinTextAlpha:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget v2, p0, LDateHelper/DatePickerView;->mViewHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 186
    iget-object v1, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    float-to-double v2, v0

    .line 187
    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    add-double/2addr v6, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v6

    double-to-float v0, v2

    .line 188
    iget v1, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    mul-int p3, p3, p2

    add-int/2addr v1, p3

    if-gez v1, :cond_0

    .line 190
    iget-object p2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v1, p2

    .line 192
    :cond_0
    iget-object p2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le v1, p2, :cond_1

    .line 193
    iget-object p2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr v1, p2

    .line 195
    :cond_1
    iget-object p2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, LDateHelper/DatePickerView;->mViewWidth:I

    int-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    double-to-float p3, v1

    iget-object v1, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 133
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, LDateHelper/DatePickerView;->timer:Ljava/util/Timer;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 138
    iget-object v0, p0, LDateHelper/DatePickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, LDateHelper/DatePickerView;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .line 109
    iget-object v0, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v2, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .line 115
    iget-object v0, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    iget-object v1, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private parabola(FF)F
    .locals 2

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 207
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private performSelect()V
    .locals 3

    .line 94
    iget-object v0, p0, LDateHelper/DatePickerView;->mSelectListener:LDateHelper/DatePickerView$onSelectListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    iget v2, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, LDateHelper/DatePickerView$onSelectListener;->onSelect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, LDateHelper/DatePickerView;->isInit:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, LDateHelper/DatePickerView;->drawData(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, LDateHelper/DatePickerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, LDateHelper/DatePickerView;->mViewHeight:I

    .line 124
    invoke-virtual {p0}, LDateHelper/DatePickerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, LDateHelper/DatePickerView;->mViewWidth:I

    .line 126
    iget p1, p0, LDateHelper/DatePickerView;->mViewHeight:I

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    .line 127
    iget p1, p0, LDateHelper/DatePickerView;->mMaxTextSize:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, LDateHelper/DatePickerView;->mMinTextSize:F

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, LDateHelper/DatePickerView;->isInit:Z

    .line 129
    invoke-virtual {p0}, LDateHelper/DatePickerView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    invoke-direct {p0, p1}, LDateHelper/DatePickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-direct {p0, p1}, LDateHelper/DatePickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0, p1}, LDateHelper/DatePickerView;->doDown(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, LDateHelper/DatePickerView;->mDataList:Ljava/util/List;

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    .line 101
    invoke-virtual {p0}, LDateHelper/DatePickerView;->invalidate()V

    return-void
.end method

.method public setOnSelectListener(LDateHelper/DatePickerView$onSelectListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, LDateHelper/DatePickerView;->mSelectListener:LDateHelper/DatePickerView$onSelectListener;

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 105
    iput p1, p0, LDateHelper/DatePickerView;->mCurrentSelected:I

    return-void
.end method
