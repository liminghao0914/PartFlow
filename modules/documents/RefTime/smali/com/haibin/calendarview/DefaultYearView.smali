.class public Lcom/haibin/calendarview/DefaultYearView;
.super Lcom/haibin/calendarview/YearView;
.source "DefaultYearView.java"


# instance fields
.field private mTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 32
    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextPadding:I

    return-void
.end method


# virtual methods
.method protected onDrawMonth(Landroid/graphics/Canvas;IIIIII)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultYearView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p6, Lcom/haibin/calendarview/R$array;->month_string_array:I

    .line 40
    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    .line 42
    iget p3, p0, Lcom/haibin/calendarview/DefaultYearView;->mItemWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    iget p3, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextPadding:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    int-to-float p4, p5

    iget p5, p0, Lcom/haibin/calendarview/DefaultYearView;->mMonthTextBaseLine:F

    add-float/2addr p4, p5

    iget-object p5, p0, Lcom/haibin/calendarview/DefaultYearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
    .locals 0

    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextBaseLine:F

    int-to-float p4, p4

    add-float/2addr v0, p4

    .line 71
    iget p4, p0, Lcom/haibin/calendarview/DefaultYearView;->mItemWidth:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p6, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    int-to-float p3, p3

    if-eqz p5, :cond_0

    iget-object p4, p0, Lcom/haibin/calendarview/DefaultYearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/haibin/calendarview/DefaultYearView;->mSelectTextPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_1
    if-eqz p5, :cond_4

    .line 79
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    .line 82
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 79
    :goto_1
    invoke-virtual {p1, p4, p3, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    .line 87
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result p5

    if-eqz p5, :cond_5

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/haibin/calendarview/DefaultYearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 86
    :goto_2
    invoke-virtual {p1, p4, p3, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method protected onDrawWeek(Landroid/graphics/Canvas;IIIII)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultYearView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v0, Lcom/haibin/calendarview/R$array;->year_view_week_string_array:I

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    aget-object p2, p6, p2

    .line 51
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    int-to-float p3, p3

    int-to-float p4, p4

    iget p5, p0, Lcom/haibin/calendarview/DefaultYearView;->mWeekTextBaseLine:F

    add-float/2addr p4, p5

    iget-object p5, p0, Lcom/haibin/calendarview/DefaultYearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
