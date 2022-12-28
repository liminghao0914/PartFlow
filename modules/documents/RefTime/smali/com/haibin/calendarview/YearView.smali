.class public abstract Lcom/haibin/calendarview/YearView;
.super Landroid/view/View;
.source "YearView.java"


# instance fields
.field protected mCurDayLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurDayTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthTextPaint:Landroid/graphics/Paint;

.field mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineCount:I

.field protected mMonth:I

.field protected mMonthTextBaseLine:F

.field protected mMonthTextPaint:Landroid/graphics/Paint;

.field protected mNextDiff:I

.field protected mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mOtherMonthTextPaint:Landroid/graphics/Paint;

.field protected mSchemeLunarTextPaint:Landroid/graphics/Paint;

.field protected mSchemePaint:Landroid/graphics/Paint;

.field protected mSchemeTextPaint:Landroid/graphics/Paint;

.field protected mSelectTextPaint:Landroid/graphics/Paint;

.field protected mSelectedLunarTextPaint:Landroid/graphics/Paint;

.field protected mSelectedPaint:Landroid/graphics/Paint;

.field protected mTextBaseLine:F

.field protected mWeekStart:I

.field protected mWeekTextBaseLine:F

.field protected mWeekTextPaint:Landroid/graphics/Paint;

.field protected mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    .line 170
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->initPaint()V

    return-void
.end method

.method private addSchemesFromMap()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 330
    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 332
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 334
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 336
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V
    .locals 7

    .line 441
    iget p5, p0, Lcom/haibin/calendarview/YearView;->mItemWidth:I

    mul-int p4, p4, p5

    iget-object p5, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {p5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result p5

    add-int/2addr p4, p5

    .line 442
    iget p5, p0, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    mul-int p3, p3, p5

    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result p5

    add-int/2addr p3, p5

    .line 444
    iget-object p5, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object p5, p5, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p2, p5}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 445
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    .line 451
    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/YearView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    if-nez v6, :cond_4

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/haibin/calendarview/YearView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    .line 460
    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/YearView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    :cond_4
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    move v5, p5

    .line 463
    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/YearView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    return-void
.end method

.method private getMonthViewTop()I
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginTop()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 369
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 370
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 371
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initPaint()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0xeeeeef

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 183
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0x1e1e1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 188
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 191
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 194
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 204
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 207
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 210
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    const v2, -0x12acad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 213
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 216
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 219
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    const v3, -0x101011

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 226
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 229
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 234
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private onDrawMonth(Landroid/graphics/Canvas;)V
    .locals 8

    .line 358
    iget v2, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget v3, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 360
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 361
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginTop()I

    move-result v5

    .line 362
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 363
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 364
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginTop()I

    move-result v1

    add-int v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 358
    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/YearView;->onDrawMonth(Landroid/graphics/Canvas;IIIIII)V

    return-void
.end method

.method private onDrawMonthView(Landroid/graphics/Canvas;)V
    .locals 10

    .line 412
    iget v0, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 414
    :goto_0
    iget v2, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    if-ge v7, v2, :cond_3

    move v9, v1

    const/4 v8, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v8, v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/haibin/calendarview/Calendar;

    .line 417
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/YearView;->mNextDiff:I

    sub-int/2addr v1, v2

    if-le v9, v1, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v4, v7

    move v5, v8

    move v6, v9

    .line 424
    invoke-direct/range {v1 .. v6}, Lcom/haibin/calendarview/YearView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v1, v9

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onDrawWeek(Landroid/graphics/Canvas;)V
    .locals 12

    .line 380
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x7

    div-int/2addr v1, v2

    const/4 v10, 0x0

    move v11, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 389
    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 391
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result v3

    mul-int v4, v0, v1

    add-int v6, v3, v4

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 392
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 393
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 394
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthMarginBottom()I

    move-result v4

    add-int v7, v3, v4

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 396
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v9

    move-object v3, p0

    move-object v4, p1

    move v5, v11

    move v8, v1

    .line 389
    invoke-virtual/range {v3 .. v9}, Lcom/haibin/calendarview/YearView;->onDrawWeek(Landroid/graphics/Canvas;IIIII)V

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v2, :cond_2

    const/4 v11, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method final init(II)V
    .locals 2

    .line 277
    iput p1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    .line 278
    iput p2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    .line 279
    iget p1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget p2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result p1

    iput p1, p0, Lcom/haibin/calendarview/YearView;->mNextDiff:I

    .line 280
    iget p1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget p2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    .line 282
    iget p1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget p2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    const/4 p1, 0x6

    .line 284
    iput p1, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    .line 285
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->addSchemesFromMap()V

    return-void
.end method

.method final measureSize(II)V
    .locals 5

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    .line 300
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x6

    iput p2, p0, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    .line 308
    iget-object p1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 309
    iget p2, p0, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/haibin/calendarview/YearView;->mTextBaseLine:F

    .line 311
    iget-object p2, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, p2

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextBaseLine:F

    .line 315
    iget-object p2, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 316
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, p2

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextBaseLine:F

    .line 319
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/haibin/calendarview/YearView;->mItemWidth:I

    .line 346
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->onPreviewHook()V

    .line 347
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawMonth(Landroid/graphics/Canvas;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawWeek(Landroid/graphics/Canvas;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawMonthView(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract onDrawMonth(Landroid/graphics/Canvas;IIIIII)V
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method protected abstract onDrawWeek(Landroid/graphics/Canvas;IIIII)V
.end method

.method protected onPreviewHook()V
    .locals 0

    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 246
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->updateStyle()V

    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewSchemeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewCurDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewSelectTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
