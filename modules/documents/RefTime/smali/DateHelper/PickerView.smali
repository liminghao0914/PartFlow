.class public LDateHelper/PickerView;
.super Landroid/view/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDateHelper/PickerView$onSelectListener;,
        LDateHelper/PickerView$MyTimerTask;
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

.field private mSelectListener:LDateHelper/PickerView$onSelectListener;

.field private mTask:LDateHelper/PickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 38
    iput p1, p0, LDateHelper/PickerView;->mMaxTextSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 39
    iput p1, p0, LDateHelper/PickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 41
    iput p1, p0, LDateHelper/PickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 42
    iput p1, p0, LDateHelper/PickerView;->mMinTextAlpha:F

    const p1, 0x333333

    .line 44
    iput p1, p0, LDateHelper/PickerView;->mColorText:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, LDateHelper/PickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, LDateHelper/PickerView;->isInit:Z

    .line 59
    new-instance p1, LDateHelper/PickerView$1;

    invoke-direct {p1, p0}, LDateHelper/PickerView$1;-><init>(LDateHelper/PickerView;)V

    iput-object p1, p0, LDateHelper/PickerView;->updateHandler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, LDateHelper/PickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 38
    iput p1, p0, LDateHelper/PickerView;->mMaxTextSize:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 39
    iput p1, p0, LDateHelper/PickerView;->mMinTextSize:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 41
    iput p1, p0, LDateHelper/PickerView;->mMaxTextAlpha:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 42
    iput p1, p0, LDateHelper/PickerView;->mMinTextAlpha:F

    const p1, 0x333333

    .line 44
    iput p1, p0, LDateHelper/PickerView;->mColorText:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, LDateHelper/PickerView;->mMoveLen:F

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, LDateHelper/PickerView;->isInit:Z

    .line 59
    new-instance p1, LDateHelper/PickerView$1;

    invoke-direct {p1, p0}, LDateHelper/PickerView$1;-><init>(LDateHelper/PickerView;)V

    iput-object p1, p0, LDateHelper/PickerView;->updateHandler:Landroid/os/Handler;

    .line 85
    invoke-direct {p0}, LDateHelper/PickerView;->init()V

    return-void
.end method

.method static synthetic access$000(LDateHelper/PickerView;)F
    .locals 0

    .line 19
    iget p0, p0, LDateHelper/PickerView;->mMoveLen:F

    return p0
.end method

.method static synthetic access$002(LDateHelper/PickerView;F)F
    .locals 0

    .line 19
    iput p1, p0, LDateHelper/PickerView;->mMoveLen:F

    return p1
.end method

.method static synthetic access$100(LDateHelper/PickerView;)LDateHelper/PickerView$MyTimerTask;
    .locals 0

    .line 19
    iget-object p0, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    return-object p0
.end method

.method static synthetic access$102(LDateHelper/PickerView;LDateHelper/PickerView$MyTimerTask;)LDateHelper/PickerView$MyTimerTask;
    .locals 0

    .line 19
    iput-object p1, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$200(LDateHelper/PickerView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, LDateHelper/PickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 229
    iget-object v0, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, LDateHelper/PickerView$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LDateHelper/PickerView;->mLastDownY:F

    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 238
    iget v0, p0, LDateHelper/PickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, LDateHelper/PickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LDateHelper/PickerView;->mMoveLen:F

    .line 240
    iget v0, p0, LDateHelper/PickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/PickerView;->mMinTextSize:F

    const v2, 0x40333333    # 2.8f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 242
    invoke-direct {p0}, LDateHelper/PickerView;->moveTailToHead()V

    .line 243
    iget v0, p0, LDateHelper/PickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/PickerView;->mMinTextSize:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, LDateHelper/PickerView;->mMoveLen:F

    goto :goto_0

    :cond_0
    const v3, -0x3fcccccd    # -2.8f

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 246
    invoke-direct {p0}, LDateHelper/PickerView;->moveHeadToTail()V

    .line 247
    iget v0, p0, LDateHelper/PickerView;->mMoveLen:F

    iget v1, p0, LDateHelper/PickerView;->mMinTextSize:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LDateHelper/PickerView;->mMoveLen:F

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LDateHelper/PickerView;->mLastDownY:F

    .line 251
    invoke-virtual {p0}, LDateHelper/PickerView;->invalidate()V

    return-void
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .locals 7

    .line 256
    iget p1, p0, LDateHelper/PickerView;->mMoveLen:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 257
    iput p1, p0, LDateHelper/PickerView;->mMoveLen:F

    return-void

    .line 260
    :cond_0
    iget-object p1, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, LDateHelper/PickerView$MyTimerTask;->cancel()Z

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    .line 264
    :cond_1
    new-instance p1, LDateHelper/PickerView$MyTimerTask;

    iget-object v0, p0, LDateHelper/PickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, LDateHelper/PickerView$MyTimerTask;-><init>(LDateHelper/PickerView;Landroid/os/Handler;)V

    iput-object p1, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    .line 265
    iget-object v1, p0, LDateHelper/PickerView;->timer:Ljava/util/Timer;

    iget-object v2, p0, LDateHelper/PickerView;->mTask:LDateHelper/PickerView$MyTimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .locals 11

    .line 152
    iget v0, p0, LDateHelper/PickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, LDateHelper/PickerView;->mMoveLen:F

    invoke-direct {p0, v0, v1}, LDateHelper/PickerView;->parabola(FF)F

    move-result v0

    .line 153
    iget v1, p0, LDateHelper/PickerView;->mMaxTextSize:F

    iget v2, p0, LDateHelper/PickerView;->mMinTextSize:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    .line 154
    iget-object v2, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    iget-object v1, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, LDateHelper/PickerView;->mMaxTextAlpha:F

    iget v3, p0, LDateHelper/PickerView;->mMinTextAlpha:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget v0, p0, LDateHelper/PickerView;->mViewWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 158
    iget v1, p0, LDateHelper/PickerView;->mViewHeight:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    iget v1, p0, LDateHelper/PickerView;->mMoveLen:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 159
    iget-object v4, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    float-to-double v5, v1

    .line 160
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

    .line 162
    iget-object v2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    iget v3, p0, LDateHelper/PickerView;->mCurrentSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    :goto_0
    iget v2, p0, LDateHelper/PickerView;->mCurrentSelected:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    .line 165
    invoke-direct {p0, p1, v1, v3}, LDateHelper/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    :goto_1
    iget v1, p0, LDateHelper/PickerView;->mCurrentSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 169
    invoke-direct {p0, p1, v0, v1}, LDateHelper/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 180
    iget v0, p0, LDateHelper/PickerView;->mMinTextSize:F

    const v1, 0x40333333    # 2.8f

    mul-float v0, v0, v1

    int-to-float v1, p2

    mul-float v0, v0, v1

    int-to-float v1, p3

    iget v2, p0, LDateHelper/PickerView;->mMoveLen:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 182
    iget v2, p0, LDateHelper/PickerView;->mViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, LDateHelper/PickerView;->parabola(FF)F

    move-result v2

    .line 183
    iget v3, p0, LDateHelper/PickerView;->mMaxTextSize:F

    iget v4, p0, LDateHelper/PickerView;->mMinTextSize:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v4

    .line 184
    iget-object v4, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    iget-object v3, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, LDateHelper/PickerView;->mMaxTextAlpha:F

    iget v5, p0, LDateHelper/PickerView;->mMinTextAlpha:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    iget v2, p0, LDateHelper/PickerView;->mViewHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 187
    iget-object v1, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    float-to-double v2, v0

    .line 188
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

    .line 189
    iget v1, p0, LDateHelper/PickerView;->mCurrentSelected:I

    mul-int p3, p3, p2

    add-int/2addr v1, p3

    if-gez v1, :cond_0

    .line 191
    iget-object p2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v1, p2

    .line 193
    :cond_0
    iget-object p2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le v1, p2, :cond_1

    .line 194
    iget-object p2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr v1, p2

    .line 196
    :cond_1
    iget-object p2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, LDateHelper/PickerView;->mViewWidth:I

    int-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    double-to-float p3, v1

    iget-object v1, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, LDateHelper/PickerView;->timer:Ljava/util/Timer;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 139
    iget-object v0, p0, LDateHelper/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, LDateHelper/PickerView;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private moveHeadToTail()V
    .locals 3

    .line 110
    iget-object v0, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    iget-object v2, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private moveTailToHead()V
    .locals 3

    .line 116
    iget-object v0, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    iget-object v1, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private parabola(FF)F
    .locals 2

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 208
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

    .line 93
    iget-object v0, p0, LDateHelper/PickerView;->mSelectListener:LDateHelper/PickerView$onSelectListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, LDateHelper/PickerView;->mCurrentSelected:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, LDateHelper/PickerView$onSelectListener;->onSelect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-boolean v0, p0, LDateHelper/PickerView;->isInit:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, LDateHelper/PickerView;->drawData(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 124
    invoke-virtual {p0}, LDateHelper/PickerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, LDateHelper/PickerView;->mViewHeight:I

    .line 125
    invoke-virtual {p0}, LDateHelper/PickerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, LDateHelper/PickerView;->mViewWidth:I

    .line 127
    iget p1, p0, LDateHelper/PickerView;->mViewHeight:I

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, LDateHelper/PickerView;->mMaxTextSize:F

    .line 128
    iget p1, p0, LDateHelper/PickerView;->mMaxTextSize:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, LDateHelper/PickerView;->mMinTextSize:F

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, LDateHelper/PickerView;->isInit:Z

    .line 130
    invoke-virtual {p0}, LDateHelper/PickerView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-direct {p0, p1}, LDateHelper/PickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0, p1}, LDateHelper/PickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-direct {p0, p1}, LDateHelper/PickerView;->doDown(Landroid/view/MotionEvent;)V

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
    iput-object p1, p0, LDateHelper/PickerView;->mDataList:Ljava/util/List;

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, LDateHelper/PickerView;->mCurrentSelected:I

    .line 101
    invoke-virtual {p0}, LDateHelper/PickerView;->invalidate()V

    return-void
.end method

.method public setOnSelectListener(LDateHelper/PickerView$onSelectListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, LDateHelper/PickerView;->mSelectListener:LDateHelper/PickerView$onSelectListener;

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 105
    iput p1, p0, LDateHelper/PickerView;->mCurrentSelected:I

    .line 106
    invoke-virtual {p0}, LDateHelper/PickerView;->invalidate()V

    return-void
.end method
