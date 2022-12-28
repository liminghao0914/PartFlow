.class public Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;
.super Lcom/haibin/calendarview/WeekView;


# instance fields
.field private mPadding:I

.field private mRadio:F

.field private mSchemeBaseLine:F

.field private mSchemeBasicPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/haibin/calendarview/WeekView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    const v2, -0x12acad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mRadio:F

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mRadio:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBaseLine:F

    return-void
.end method

.method private static dipToPx(Landroid/content/Context;F)I
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "dipToPxDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyWeekView"

    const-string v7, "(Landroid/content/Context;F)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method private getTextWidth(Ljava/lang/String;)F
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getTextWidthDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyWeekView"

    const-string v7, "(Ljava/lang/String;)F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method


# virtual methods
.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V
    .registers 9

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mRadio:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v0, v4

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mItemWidth:I

    add-int/2addr v1, p3

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mRadio:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->getTextWidth(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    int-to-float v2, v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeBaseLine:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z
    .registers 9

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mItemHeight:I

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
    .registers 11

    const/4 v4, 0x0

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    invoke-virtual {p0, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz p5, :cond_1f

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v0, v0

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextBaseLine:F

    int-to-float v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1e
    return-void

    :cond_1f
    if-eqz p4, :cond_3f

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextBaseLine:F

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mSchemeTextPaint:Landroid/graphics/Paint;

    :goto_38
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    :cond_3c
    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_38

    :cond_3f
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mTextBaseLine:F

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz v1, :cond_5a

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mCurDayTextPaint:Landroid/graphics/Paint;

    :goto_56
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    :cond_5a
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_65

    if-eqz v1, :cond_65

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_56

    :cond_65
    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_56
.end method
