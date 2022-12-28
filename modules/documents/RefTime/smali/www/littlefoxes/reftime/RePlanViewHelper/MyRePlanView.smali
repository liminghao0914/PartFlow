.class public Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;
.super Landroid/view/View;


# static fields
.field public static final MARGIN_ALPHA:F = 2.8f

.field public static final SPEED:F = 40.0f

.field public static final TAG:Ljava/lang/String; = "MyRePlanView"

.field public static minTextHeight:F = 25.0f


# instance fields
.field private drawTextPaddingLeft:F

.field fmi:Landroid/graphics/Paint$FontMetricsInt;

.field private isFirstLoad:Z

.field private isInit:Z

.field private isPlan:Z

.field private isTail:Z

.field private isTop:Z

.field private mColorBackground:I

.field private mColorRect:I

.field private mColorText:I

.field private mColorTextTitle:I

.field private mColorTextWite:I

.field private mCurrentTop:I

.field private mDataList:Ljava/util/List;

.field private mDataPaint:Landroid/graphics/Paint;

.field private mDataTextPaint:Landroid/graphics/Paint;

.field private mDataTextPaintForName:Landroid/graphics/Paint;

.field private mDataTextPaintForTitle:Landroid/graphics/Paint;

.field private mDownPosition:F

.field private mLastDownY:F

.field private mLastTime:J

.field private mMoveLen:F

.field private mMoveRate:F

.field private mPaintBackground:Landroid/graphics/Paint;

.field private mRealRecordList:Ljava/util/List;

.field private mRecPaint:Landroid/graphics/Paint;

.field private mRecordList:Ljava/util/List;

.field private mSelectListener:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$onSelectListener;

.field private mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTitleTextSize:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private max:I

.field private maxNum:I

.field private maxTextLen:I

.field private moveLen:I

.field private myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

.field private radious:I

.field private rectPadding:I

.field private rectWidth:I

.field private textPadding:I

.field private textPaddingLeft:I

.field private textPaddingTop:I

.field private timer:Ljava/util/Timer;

.field private totalNum:I

.field updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mCurrentTop:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextSize:F

    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTitleTextSize:F

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextTitle:I

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorText:I

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextWite:I

    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorRect:I

    const-string v0, "#FAFAFA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorBackground:I

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isInit:Z

    const/16 v0, 0xc

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxNum:I

    const/16 v0, 0x18

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    const/16 v0, 0x14

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    const/16 v0, 0x64

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    const/4 v0, 0x5

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    const/16 v1, 0x32

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    const/16 v1, 0x8

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    neg-float v1, v1

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isFirstLoad:Z

    new-instance v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->updateHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mCurrentTop:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextSize:F

    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTitleTextSize:F

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextTitle:I

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorText:I

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextWite:I

    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorRect:I

    const-string v0, "#FAFAFA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorBackground:I

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isInit:Z

    const/16 v0, 0xc

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxNum:I

    const/16 v0, 0x18

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    const/16 v0, 0x14

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    const/16 v0, 0x64

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    const/4 v0, 0x5

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    const/16 v1, 0x32

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    const/16 v1, 0x8

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    neg-float v1, v1

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isFirstLoad:Z

    new-instance v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$1;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->updateHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->init()V

    return-void
.end method

.method private ChangeData(Ljava/util/List;)Ljava/util/List;
    .registers 15

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_166

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    const/4 v2, 0x1

    move v4, v2

    :goto_2a
    add-int v6, v3, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_63

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_63

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5f

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v5

    :cond_5f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2a

    :cond_63
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move v4, v2

    :goto_69
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_ce

    if-lez v5, :cond_95

    add-int/lit8 v2, v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v2

    :goto_76
    if-ltz v7, :cond_180

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v12

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v2

    cmpg-float v2, v12, v2

    if-gez v2, :cond_180

    add-float/2addr v6, v11

    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto :goto_76

    :cond_95
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_97
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_c6

    add-int/lit8 v7, v5, 0x1

    move v6, v2

    :goto_a1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_c5

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v12

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_c5

    add-float v2, v6, v11

    add-int/lit8 v7, v7, 0x1

    move v6, v2

    goto :goto_a1

    :cond_c5
    move v2, v6

    :cond_c6
    cmpl-float v6, v2, v4

    if-lez v6, :cond_17d

    :goto_ca
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    goto :goto_69

    :cond_ce
    const/4 v2, 0x0

    move v5, v2

    :goto_d0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_15b

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->setWidth(F)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-lez v5, :cond_11a

    add-int/lit8 v2, v5, -0x1

    const/4 v6, 0x0

    move v7, v2

    :goto_ea
    if-ltz v7, :cond_17b

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v8

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_17b

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getxOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v6, v11

    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto :goto_ea

    :cond_11a
    const/4 v2, 0x0

    :goto_11b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_179

    const/4 v8, 0x0

    move v7, v2

    :goto_123
    cmpg-float v2, v7, v4

    if-gez v2, :cond_147

    const/4 v2, 0x0

    move v6, v2

    :goto_129
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_177

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v7, v2

    if-nez v2, :cond_143

    const/4 v2, 0x1

    :goto_13e
    if-eqz v2, :cond_147

    add-float/2addr v7, v11

    move v8, v2

    goto :goto_123

    :cond_143
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_129

    :cond_147
    cmpl-float v2, v7, v4

    if-ltz v2, :cond_175

    const/4 v2, 0x0

    move v6, v2

    :goto_14d
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2, v6}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->setxOffset(F)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_d0

    :cond_15b
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    goto/16 :goto_b

    :cond_166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ChangeDataDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Ljava/util/List;)Ljava/util/List;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v9

    :cond_175
    move v6, v7

    goto :goto_14d

    :cond_177
    move v2, v8

    goto :goto_13e

    :cond_179
    move v6, v2

    goto :goto_14d

    :cond_17b
    move v2, v6

    goto :goto_11b

    :cond_17d
    move v2, v4

    goto/16 :goto_ca

    :cond_180
    move v2, v6

    goto/16 :goto_97
.end method

.method private MyViewOnClick(Landroid/view/MotionEvent;)V
    .registers 14

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mLastTime:J

    sub-long/2addr v6, v8

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    if-eqz v3, :cond_111

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDownPosition:F

    sub-float v4, v2, v3

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v4, v4, v8

    if-gez v4, :cond_111

    sub-float v3, v2, v3

    const/high16 v4, -0x3ee00000    # -10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_111

    const/16 v3, 0x14

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-lez v3, :cond_111

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;->RePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_111

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_111

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

    if-eqz v3, :cond_111

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    if-eqz v3, :cond_111

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v10, v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v3, v3

    div-float v6, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_86
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_109

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->setSelect(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStop()F

    move-result v7

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStart()F

    move-result v2

    const/4 v8, 0x1

    cmpg-float v7, v6, v7

    if-gez v7, :cond_120

    cmpl-float v2, v6, v2

    if-lez v2, :cond_120

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v7, v2

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getWidth()F

    move-result v2

    div-float/2addr v7, v2

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getxOffset()F

    move-result v2

    mul-float/2addr v2, v7

    iget v9, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    add-int/lit8 v10, v9, 0x64

    int-to-float v10, v10

    add-float/2addr v10, v2

    cmpg-float v10, v10, v5

    if-gez v10, :cond_120

    add-int/lit8 v9, v9, 0x64

    int-to-float v9, v9

    add-float/2addr v2, v9

    add-float/2addr v2, v7

    cmpl-float v2, v2, v5

    if-lez v2, :cond_120

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2, v8}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->setSelect(Z)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-interface {v3, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;->RePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    const/4 v2, 0x1

    :goto_104
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto/16 :goto_86

    :cond_109
    if-nez v3, :cond_111

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;->RePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    :cond_111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "MyViewOnClickDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Landroid/view/MotionEvent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_120
    move v2, v3

    goto :goto_104
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$000Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method static synthetic access$002(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$002Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$100Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method static synthetic access$102(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$102Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;F)F"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$200Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic access$202(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$202Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;)Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$300Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method static synthetic access$302(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$302Delta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Z)Z"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$400(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->max:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "access$400Delta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->cancel()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mLastDownY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mLastTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDownPosition:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "doDownDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Landroid/view/MotionEvent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mLastDownY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveLen:I

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveLen:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    if-lez v3, :cond_33

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveTailToHead()V

    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mLastDownY:F

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "doMoveDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Landroid/view/MotionEvent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_33
    if-gez v3, :cond_1b

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveHeadToTail()V

    goto :goto_1b
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "begin":J
    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveLen:I

    if-lez v0, :cond_2d

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveTailToHead()V

    :cond_b
    :goto_b
    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_33

    const/4 v0, 0x0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    :cond_1e
    :goto_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "doUpDelta"

    const-string v3, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v4, "(Landroid/view/MotionEvent;)V"

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2d
    if-gez v0, :cond_b

    invoke-direct {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->moveHeadToTail()V

    goto :goto_b

    :cond_33
    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    :cond_3d
    iget-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    if-eqz v0, :cond_1e

    :cond_45
    new-instance v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    iget-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;Landroid/os/Handler;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTask:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyTimerTask;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1e
.end method

.method private drawDataPlan(Landroid/graphics/Canvas;)V
    .registers 25

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "begin":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    int-to-float v9, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-ge v5, v4, :cond_257

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v8, v8

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getWidth()F

    move-result v12

    div-float/2addr v8, v12

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getxOffset()F

    move-result v12

    mul-float/2addr v12, v8

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getWidth()F

    move-result v13

    float-to-int v13, v13

    if-le v13, v7, :cond_183

    const-string v6, ""

    :cond_50
    :goto_50
    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStop()F

    move-result v7

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStart()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    int-to-float v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v13, v13, v17

    add-float/2addr v13, v15

    int-to-float v14, v14

    move/from16 v0, v16

    int-to-float v15, v0

    mul-float/2addr v7, v15

    add-float/2addr v7, v14

    float-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v10

    add-double v16, v16, v18

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v14

    move-wide/from16 v0, v16

    double-to-float v13, v0

    float-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    div-double v20, v20, v10

    add-double v18, v18, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v18, v10

    add-double v10, v10, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v14, v10

    double-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    if-eqz v11, :cond_1ea

    new-instance v11, Landroid/graphics/RectF;

    const/high16 v14, 0x42c80000    # 100.0f

    add-float/2addr v14, v9

    add-float/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    move/from16 v16, v0

    div-float v17, v15, v16

    add-float v13, v13, v17

    add-float/2addr v8, v14

    div-float v15, v15, v16

    add-float/2addr v7, v15

    invoke-direct {v11, v14, v13, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->isSelect()Z

    move-result v7

    if-eqz v7, :cond_1ae

    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v8, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v8, v7, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v7, v9

    add-float/2addr v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_159
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordUnicode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v7, v8

    add-float/2addr v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_17e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_e

    :cond_183
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    div-int/2addr v14, v13

    if-le v7, v14, :cond_50

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    div-int v13, v14, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_50

    :cond_1ae
    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v8, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v8, v7, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v7, v9

    add-float/2addr v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_159

    :cond_1ea
    new-instance v11, Landroid/graphics/RectF;

    const/high16 v14, 0x42c80000    # 100.0f

    add-float/2addr v14, v9

    add-float/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    move/from16 v16, v0

    div-float v17, v15, v16

    add-float v13, v13, v17

    add-float/2addr v8, v14

    div-float v15, v15, v16

    add-float/2addr v7, v15

    invoke-direct {v11, v14, v13, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v8, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v8, v7, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v7, v9

    add-float/2addr v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordUnicode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v7, v8

    add-float/2addr v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_17e

    :cond_257
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    if-nez v4, :cond_4ac

    const/4 v4, 0x0

    move v6, v7

    move v8, v4

    :goto_260
    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_430

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v7, v7

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getWidth()F

    move-result v12

    div-float/2addr v7, v12

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getxOffset()F

    move-result v12

    mul-float/2addr v12, v7

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getWidth()F

    move-result v13

    float-to-int v13, v13

    if-le v13, v6, :cond_405

    const-string v5, ""

    :cond_29f
    :goto_29f
    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStop()F

    move-result v6

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getShowStart()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    int-to-float v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v13, v13, v17

    add-float/2addr v13, v15

    int-to-float v14, v14

    move/from16 v0, v16

    int-to-float v15, v0

    mul-float/2addr v6, v15

    add-float/2addr v6, v14

    float-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v10

    add-double v16, v16, v18

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v14

    move-wide/from16 v0, v16

    double-to-float v13, v0

    float-to-double v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    div-double v20, v20, v10

    add-double v18, v18, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v10

    add-double v16, v16, v18

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v14, v16

    double-to-float v14, v14

    const/high16 v15, 0x41200000    # 10.0f

    add-float/2addr v14, v15

    new-instance v15, Landroid/graphics/RectF;

    const/high16 v16, 0x42c80000    # 100.0f

    add-float v16, v16, v9

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v16

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    add-float v18, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    move/from16 v21, v0

    div-float v22, v20, v21

    add-float v13, v13, v22

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v17, v17, v19

    add-float v17, v17, v12

    add-float v7, v7, v17

    div-float v17, v20, v21

    add-float v6, v6, v17

    move/from16 v0, v18

    invoke-direct {v15, v0, v13, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v7, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7, v6, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v7, v13

    add-float/2addr v7, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordUnicode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v4, v4

    add-float v4, v4, v16

    move-object/from16 v0, p0

    iget v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextPaddingLeft:F

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v6, v7

    add-float/2addr v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v8, 0x1

    const/4 v4, 0x3

    move v6, v4

    move v8, v5

    goto/16 :goto_260

    :cond_405
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    div-int/2addr v14, v13

    if-le v6, v14, :cond_29f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    div-int v13, v14, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_29f

    :cond_430
    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    sub-double v4, v6, v4

    double-to-float v4, v4

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    neg-int v7, v6

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewWidth:I

    int-to-float v8, v8

    add-int/lit8 v6, v6, -0x14

    int-to-float v6, v6

    const/4 v10, 0x0

    invoke-direct {v5, v7, v10, v8, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0023

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0f0086

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4ac
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "drawDataPlanDelta"

    const-string v7, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v8, "(Landroid/graphics/Canvas;)V"

    sub-long/2addr v4, v2

    invoke-static {v6, v7, v8, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private drawTextAndRect(Landroid/graphics/Canvas;)V
    .registers 20

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "begin":J
    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    int-to-float v7, v4

    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    int-to-float v6, v4

    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v5, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewHeight:I

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_2a
    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    if-ge v5, v4, :cond_13f

    float-to-double v8, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v12

    add-double/2addr v10, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v8, v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v16, v12

    add-double/2addr v12, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v12

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v9, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x41200000    # 10.0f

    if-eqz v4, :cond_d1

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v9, v7

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v12, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float v13, v11, v12

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v14, v14

    add-float/2addr v14, v9

    move-object/from16 v0, p0

    iget v15, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v15, v15

    add-float/2addr v8, v15

    sub-float/2addr v8, v10

    div-float v10, v11, v12

    add-float/2addr v8, v10

    invoke-direct {v4, v9, v13, v14, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v9, v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_c6
    move-object/from16 v0, p0

    iget v4, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v4, v4

    add-float/2addr v6, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_2a

    :cond_d1
    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v9, v7

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v12, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float v13, v11, v12

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v14, v14

    add-float/2addr v14, v9

    move-object/from16 v0, p0

    iget v15, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v15, v15

    add-float/2addr v15, v8

    sub-float/2addr v15, v10

    div-float/2addr v11, v12

    add-float/2addr v11, v15

    invoke-direct {v4, v9, v13, v14, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v12, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v11, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    int-to-float v12, v11

    add-float/2addr v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    int-to-float v14, v13

    add-float/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    move-object/from16 v0, p0

    iget v15, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float v16, v14, v15

    add-float v16, v16, v8

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v9, v11

    int-to-float v11, v13

    add-float/2addr v9, v11

    move-object/from16 v0, p0

    iget v11, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    sub-float/2addr v8, v10

    div-float v10, v14, v15

    add-float/2addr v8, v10

    move/from16 v0, v16

    invoke-direct {v4, v12, v0, v9, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v8, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->radious:I

    int-to-float v9, v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_c6

    :cond_13f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "drawTextAndRectDelta"

    const-string v7, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v8, "(Landroid/graphics/Canvas;)V"

    sub-long/2addr v4, v2

    invoke-static {v6, v7, v8, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->timer:Ljava/util/Timer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataList:Ljava/util/List;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorText:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForName:Landroid/graphics/Paint;

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextWite:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mPaintBackground:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mPaintBackground:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mPaintBackground:Landroid/graphics/Paint;

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorBackground:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTitleTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataTextPaintForTitle:Landroid/graphics/Paint;

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorTextTitle:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x0

    :goto_c3
    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    if-ge v2, v3, :cond_f7

    const/16 v3, 0x17

    if-le v2, v3, :cond_ef

    add-int/lit8 v3, v2, -0x18

    :goto_cd
    iget-object v5, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mDataList:Ljava/util/List;

    const/16 v4, 0xa

    if-ge v3, v4, :cond_f1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_dd
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":00"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    :cond_ef
    move v3, v2

    goto :goto_cd

    :cond_f1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_dd

    :cond_f7
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorText:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->fmi:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecPaint:Landroid/graphics/Paint;

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mColorRect:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private moveHeadToTail()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean v5, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxNum:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2e

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mCurrentTop:I

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    :goto_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "moveHeadToTailDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2e
    iput-boolean v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    goto :goto_1f
.end method

.method private moveTailToHead()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTail:Z

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2a

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mCurrentTop:I

    iput-boolean v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "moveTailToHeadDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isTop:Z

    goto :goto_1b
.end method


# virtual methods
.method public AddRecordList(LDBManager/MainActivityData/RecordList;)V
    .registers 4

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    new-instance v1, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-direct {v1, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;-><init>(LDBManager/MainActivityData/RecordList;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    return-void
.end method

.method public SetMyRePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->myRePlanClick:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SetMyRePlanClickDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public initMyView()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    if-eqz v2, :cond_32

    move v3, v4

    :goto_a
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_32

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->setSelect(Z)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    :cond_2e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initMyViewDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isInit:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawTextAndRect(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->drawDataPlan(Landroid/graphics/Canvas;)V

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isFirstLoad:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onDrawDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Landroid/graphics/Canvas;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewHeight:I

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewWidth:I

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewHeight:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxNum:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isFirstLoad:Z

    if-eqz v2, :cond_2e

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveRate:F

    neg-float v2, v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    mul-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mMoveLen:F

    :cond_2e
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPadding:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->totalNum:I

    add-int/lit8 v3, v3, -0x2

    mul-int/2addr v2, v3

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->max:I

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    if-eqz v2, :cond_5b

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewWidth:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x64

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    sub-int/2addr v2, v3

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    :goto_47
    iput-boolean v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isInit:Z

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onMeasureDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(II)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_5b
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mViewWidth:I

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingLeft:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x64

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->rectWidth:I

    goto :goto_47
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :goto_b
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "onTouchEventDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v7, "(Landroid/view/MotionEvent;)Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :pswitch_1b
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_b

    :pswitch_1f
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->doUp(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->MyViewOnClick(Landroid/view/MotionEvent;)V

    goto :goto_b

    :pswitch_26
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->doDown(Landroid/view/MotionEvent;)V

    goto :goto_b

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1f
        :pswitch_1b
    .end packed-switch
.end method

.method public setIsPlan(Z)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->isPlan:Z

    const/16 v2, 0x8

    if-nez p1, :cond_1f

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    const/16 v2, 0x64

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setIsPlanDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1f
    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->maxTextLen:I

    const/16 v2, 0x14

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->textPaddingTop:I

    goto :goto_10
.end method

.method public setRealRecordList(Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_25

    iget-object v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    new-instance v5, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-direct {v5, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;-><init>(LDBManager/MainActivityData/RecordList;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    :cond_25
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$2;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->ChangeData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRealRecordList:Ljava/util/List;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRealRecordListDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setmRecordList(Ljava/util/List;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_25

    iget-object v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    new-instance v5, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-direct {v5, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;-><init>(LDBManager/MainActivityData/RecordList;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    :cond_25
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    new-instance v3, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$3;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$3;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->ChangeData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->mRecordList:Ljava/util/List;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setmRecordListDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView"

    const-string v6, "(Ljava/util/List;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
