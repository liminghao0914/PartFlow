.class final Lcom/haibin/calendarview/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field private static final ONE_DAY:J = 0x5265c00L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(IIIIII)I
    .locals 1

    .line 516
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 517
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 518
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 519
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 521
    new-instance p0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 522
    invoke-virtual {p0, p3}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 523
    invoke-virtual {p0, p4}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 524
    invoke-virtual {p0, p5}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 525
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p0

    return p0
.end method

.method static differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I
    .locals 4

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    if-nez p1, :cond_1

    const p0, 0x7fffffff

    return p0

    .line 490
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 494
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 496
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p1

    invoke-virtual {v0, p0, v3, p1}, Ljava/util/Calendar;->set(III)V

    .line 498
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/32 p0, 0x5265c00

    .line 500
    div-long/2addr v1, p0

    long-to-int p0, v1

    return p0
.end method

.method static dipToPx(Landroid/content/Context;F)I
    .locals 0

    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static getDate(Ljava/lang/String;Ljava/util/Date;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getFirstCalendarFromMonthViewPager(ILcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;
    .locals 4

    .line 729
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 730
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    add-int/2addr v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xc

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 731
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    add-int/2addr p0, v1

    sub-int/2addr p0, v2

    rem-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v2

    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 732
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDefaultCalendarSelectDay()I

    move-result p0

    if-eqz p0, :cond_3

    .line 733
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-static {p0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result p0

    .line 734
    iget-object v1, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_2

    .line 735
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    if-ge p0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 735
    :goto_1
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    goto :goto_2

    .line 738
    :cond_3
    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 740
    :goto_2
    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 741
    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isMinRangeEdge(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 742
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    goto :goto_3

    .line 744
    :cond_4
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 747
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p0

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    if-ne p0, v1, :cond_6

    .line 748
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p0

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 747
    :goto_4
    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 749
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 750
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    return-object v0
.end method

.method static getFirstCalendarStartWithMinCalendar(IIIII)Lcom/haibin/calendarview/Calendar;
    .locals 8

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 418
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 420
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x7

    int-to-long p2, p3

    const-wide/32 v2, 0x5265c00

    mul-long p2, p2, v2

    add-long/2addr p2, p0

    .line 427
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x2

    .line 430
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x5

    .line 431
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 429
    invoke-static {p0, v4, v6, p4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result p0

    int-to-long v6, p0

    mul-long v6, v6, v2

    sub-long/2addr p2, v6

    .line 434
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 436
    new-instance p0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 438
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 439
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    return-object p0
.end method

.method static getMonthDaysCount(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x1f

    :goto_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    :cond_2
    const/16 v0, 0x1e

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 72
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v0, 0x1d

    goto :goto_2

    :cond_4
    const/16 v0, 0x1c

    :cond_5
    :goto_2
    return v0
.end method

.method static getMonthEndDiff(III)I
    .locals 1

    .line 251
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(IIII)I

    move-result p0

    return p0
.end method

.method private static getMonthEndDiff(IIII)I
    .locals 2

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 267
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 268
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, v1, :cond_0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    if-ne p1, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p0, p1

    add-int/2addr p0, v1

    :goto_0
    return p0

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 p0, 0x6

    goto :goto_1

    :cond_3
    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    :goto_1
    return p0
.end method

.method static getMonthViewHeight(IIII)I
    .locals 3

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    .line 114
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 115
    invoke-static {p0, p1, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v0

    .line 116
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v1

    .line 117
    invoke-static {p0, p1, v1, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(IIII)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 118
    div-int/lit8 v0, v0, 0x7

    mul-int v0, v0, p2

    return v0
.end method

.method static getMonthViewHeight(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    mul-int/lit8 p2, p2, 0x6

    return p2

    .line 134
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result p0

    return p0
.end method

.method static getMonthViewLineCount(IIII)I
    .locals 0

    if-nez p3, :cond_0

    const/4 p0, 0x6

    return p0

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result p3

    .line 98
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result p2

    .line 99
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result p0

    add-int/2addr p2, p0

    add-int/2addr p2, p3

    .line 100
    div-int/lit8 p2, p2, 0x7

    return p2
.end method

.method static getMonthViewStartDiff(III)I
    .locals 2

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 228
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 229
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p2, v1, :cond_0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    if-ne p1, v1, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    sub-int p0, p1, p2

    :goto_0
    return p0

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 p1, 0x0

    :cond_3
    return p1
.end method

.method static getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I
    .locals 3

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    invoke-virtual {v0, v1, p0, v2}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 205
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v2, :cond_0

    sub-int/2addr v0, v2

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    sub-int p0, v0, p1

    :goto_0
    return p0

    :cond_2
    if-ne v0, p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method static getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;
    .locals 6

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v1, v4

    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    new-instance p0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    const/4 v1, 0x2

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v1, 0x5

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    return-object p0
.end method

.method static getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;
    .locals 6

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    .line 164
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v1, v4

    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    new-instance p0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {p0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    const/4 v1, 0x2

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v1, 0x5

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    return-object p0
.end method

.method static getRangeEdgeCalendar(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 763
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDefaultCalendarSelectDay()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 765
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object p0

    return-object p0

    .line 767
    :cond_0
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 770
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 771
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 772
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object p0

    return-object p0

    .line 774
    :cond_2
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object p0

    return-object p0
.end method

.method static getWeekCalendars(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haibin/calendarview/Calendar;",
            "Lcom/haibin/calendarview/CalendarViewDelegate;",
            ")",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 604
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v3

    .line 605
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 606
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    .line 604
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 607
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 609
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v5, :cond_0

    sub-int/2addr v2, v5

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    if-ne v3, v4, :cond_2

    if-ne v2, v5, :cond_1

    const/4 p0, 0x6

    const/4 v2, 0x6

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result p0

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_2
    if-ne v2, p0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    int-to-long v2, v2

    const-wide/32 v6, 0x5265c00

    mul-long v2, v2, v6

    sub-long/2addr v0, v2

    .line 618
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 619
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 620
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 621
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 622
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v1, 0x5

    .line 623
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 624
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForWeekView(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getWeekCountBetweenBothCalendar(IIIIIII)I
    .locals 3

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    .line 348
    invoke-virtual {v0, p0, v1, p2}, Ljava/util/Calendar;->set(III)V

    .line 349
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 350
    invoke-static {p0, p1, p2, p6}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result p0

    add-int/lit8 p1, p4, -0x1

    .line 352
    invoke-virtual {v0, p3, p1, p5}, Ljava/util/Calendar;->set(III)V

    .line 354
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 356
    invoke-static {p3, p4, p5, p6}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewEndDiff(IIII)I

    move-result p3

    add-int/2addr p0, p3

    sub-long/2addr p1, v1

    const-wide/32 p3, 0x5265c00

    .line 360
    div-long/2addr p1, p3

    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p0, p2

    .line 362
    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I
    .locals 3

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 288
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I
    .locals 4

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    .line 382
    invoke-virtual {v0, p1, v1, p3}, Ljava/util/Calendar;->set(III)V

    .line 383
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 385
    invoke-static {p1, p2, p3, p4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result p1

    .line 387
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p2

    .line 388
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p3

    .line 389
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    .line 387
    invoke-static {p2, p3, v3, p4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result p2

    .line 392
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p3

    .line 393
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-nez p2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    .line 392
    :goto_0
    invoke-virtual {v0, p3, p4, p0}, Ljava/util/Calendar;->set(III)V

    .line 396
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    const-wide/32 v0, 0x5265c00

    .line 398
    div-long/2addr p2, v0

    long-to-int p0, p2

    add-int/2addr p1, p0

    .line 402
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I
    .locals 4

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 149
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I

    move-result p1

    .line 150
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    add-int/2addr p0, p1

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v3

    return p0
.end method

.method private static getWeekViewEndDiff(IIII)I
    .locals 2

    .line 708
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 709
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 710
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, v1, :cond_0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    if-ne p1, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr p0, p1

    add-int/2addr p0, v1

    :goto_0
    return p0

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 p0, 0x6

    goto :goto_1

    :cond_3
    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    :goto_1
    return p0
.end method

.method static getWeekViewIndexFromCalendar(Lcom/haibin/calendarview/Calendar;I)I
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result p0

    return p0
.end method

.method private static getWeekViewStartDiff(IIII)I
    .locals 2

    .line 684
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 685
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    const/4 p0, 0x7

    .line 686
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, v1, :cond_0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    if-ne p1, v1, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    sub-int p0, p1, p3

    :goto_0
    return p0

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 p1, 0x0

    :cond_3
    return p1
.end method

.method static initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/haibin/calendarview/Calendar;",
            "I)",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 538
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    .line 540
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 542
    invoke-static {p0, p1, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result p3

    .line 544
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v0

    .line 551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, p0, -0x1

    add-int/lit8 v6, p1, 0x1

    if-nez p3, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 559
    :cond_0
    invoke-static {v1, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v7

    :goto_0
    move v8, v7

    move v7, v6

    move v6, p0

    goto :goto_3

    :cond_1
    if-ne p1, v4, :cond_3

    add-int/lit8 v4, p0, 0x1

    if-nez p3, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 565
    :cond_2
    invoke-static {p0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v6

    move v7, v6

    :goto_1
    move v6, v4

    move v8, v7

    const/4 v7, 0x1

    move v4, v1

    move v1, p0

    goto :goto_3

    :cond_3
    add-int/lit8 v4, p1, 0x1

    if-nez p3, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    .line 571
    :cond_4
    invoke-static {p0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v6

    move v7, v6

    :goto_2
    move v6, p0

    move v8, v7

    move v7, v4

    move v4, v1

    move v1, v6

    :goto_3
    const/4 v9, 0x1

    :goto_4
    const/16 v10, 0x2a

    if-ge v5, v10, :cond_8

    .line 575
    new-instance v10, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v10}, Lcom/haibin/calendarview/Calendar;-><init>()V

    if-ge v5, p3, :cond_5

    .line 577
    invoke-virtual {v10, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 578
    invoke-virtual {v10, v4}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    sub-int v11, v8, p3

    add-int/2addr v11, v5

    add-int/2addr v11, v2

    .line 579
    invoke-virtual {v10, v11}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    goto :goto_5

    :cond_5
    add-int v11, v0, p3

    if-lt v5, v11, :cond_6

    .line 581
    invoke-virtual {v10, v6}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 582
    invoke-virtual {v10, v7}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 583
    invoke-virtual {v10, v9}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 586
    :cond_6
    invoke-virtual {v10, p0}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 587
    invoke-virtual {v10, p1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 588
    invoke-virtual {v10, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    sub-int v11, v5, p3

    add-int/2addr v11, v2

    .line 589
    invoke-virtual {v10, v11}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 591
    :goto_5
    invoke-virtual {v10, p2}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 592
    invoke-virtual {v10, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 594
    :cond_7
    invoke-static {v10}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 595
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    return-object v3
.end method

.method static initCalendarForWeekView(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haibin/calendarview/Calendar;",
            "Lcom/haibin/calendarview/CalendarViewDelegate;",
            "I)",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 637
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/Calendar;->set(III)V

    .line 639
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 641
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v4

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v5

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-static {v4, v5, p0, p2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewEndDiff(IIII)I

    move-result p0

    .line 642
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 644
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 645
    new-instance v4, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v4}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 646
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    const/4 v5, 0x2

    .line 647
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v6}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v6, 0x5

    .line 648
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 649
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 650
    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 652
    :cond_0
    invoke-static {v4}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 653
    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 654
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p0, :cond_2

    int-to-long v7, v4

    const-wide/32 v9, 0x5265c00

    mul-long v7, v7, v9

    add-long/2addr v7, v1

    .line 658
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 659
    new-instance v7, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v7}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 660
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 661
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 662
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 663
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 664
    invoke-virtual {v7, v3}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 666
    :cond_1
    invoke-static {v7}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 667
    invoke-virtual {v7, v3}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 668
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method static isCalendarInRange(Lcom/haibin/calendarview/Calendar;IIIIII)Z
    .locals 2

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    .line 321
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 322
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    sub-int/2addr p5, v1

    .line 323
    invoke-virtual {v0, p4, p5, p6}, Ljava/util/Calendar;->set(III)V

    .line 324
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    .line 325
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p5

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p6

    sub-int/2addr p6, v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, p5, p6, p0}, Ljava/util/Calendar;->set(III)V

    .line 326
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    cmp-long p0, p5, p1

    if-ltz p0, :cond_0

    cmp-long p0, p5, p3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z
    .locals 7

    .line 454
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    .line 455
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    move-object v0, p0

    .line 453
    invoke-static/range {v0 .. v6}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;IIIIII)Z

    move-result p0

    return p0
.end method

.method static isLeapYear(I)Z
    .locals 1

    .line 89
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMinRangeEdge(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z
    .locals 5

    .line 784
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 785
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 786
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 787
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result p1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-virtual {v0, p1, v4, p0}, Ljava/util/Calendar;->set(III)V

    .line 788
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static isMonthInRange(IIIIII)Z
    .locals 0

    if-lt p0, p2, :cond_2

    if-gt p0, p4, :cond_2

    if-ne p0, p2, :cond_0

    if-lt p1, p3, :cond_2

    :cond_0
    if-ne p0, p4, :cond_1

    if-gt p1, p5, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isWeekend(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
