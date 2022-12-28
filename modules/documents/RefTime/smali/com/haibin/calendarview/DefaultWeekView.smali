.class public final Lcom/haibin/calendarview/DefaultWeekView;
.super Lcom/haibin/calendarview/WeekView;
.source "DefaultWeekView.java"


# instance fields
.field private mPadding:I

.field private mRadio:F

.field private mSchemeBaseLine:F

.field private mSchemeBasicPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/WeekView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 42
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    const v1, -0x12acad

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    .line 48
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    .line 49
    iget-object p1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 50
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBaseLine:F

    return-void
.end method

.method private getTextWidth(Ljava/lang/String;)F
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v0, v4

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr p3, v1

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    div-float/2addr v1, v3

    sub-float/2addr p3, v1

    .line 78
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/haibin/calendarview/DefaultWeekView;->getTextWidth(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, v3

    sub-float/2addr p3, p2

    iget p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    int-to-float p2, p2

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBaseLine:F

    add-float/2addr p2, v1

    iget-object v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z
    .locals 6

    .line 65
    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    add-int p4, p3, p2

    int-to-float v1, p4

    int-to-float v2, p2

    iget p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr p3, p2

    iget p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr p3, p2

    int-to-float v3, p3

    iget p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    iget p3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr p2, p3

    int-to-float v4, p2

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
    .locals 1

    .line 94
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 95
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x6

    if-eqz p5, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v0, v0

    add-float/2addr p5, v0

    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 p5, p5, 0xa

    int-to-float p5, p5

    add-float/2addr p4, p5

    iget-object p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_0
    if-eqz p4, :cond_4

    .line 102
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v0, v0

    add-float/2addr p5, v0

    .line 103
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 102
    :goto_0
    invoke-virtual {p1, p4, p3, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    add-float/2addr p5, v0

    .line 107
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 106
    :goto_1
    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v0, v0

    add-float/2addr p5, v0

    .line 111
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 110
    :goto_2
    invoke-virtual {p1, p4, p3, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    add-float/2addr p5, v0

    .line 114
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 115
    :cond_7
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 113
    :goto_3
    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method
