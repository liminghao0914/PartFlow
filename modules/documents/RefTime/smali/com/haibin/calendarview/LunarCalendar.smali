.class public final Lcom/haibin/calendarview/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DAY_STR:[Ljava/lang/String;

.field private static final LUNAR_INFO:[I

.field private static MONTH_STR:[Ljava/lang/String;

.field private static SOLAR_CALENDAR:[Ljava/lang/String;

.field private static final SOLAR_TERMS:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_FESTIVAL:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

.field private static TRADITION_FESTIVAL_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    const/16 v0, 0xc9

    .line 148
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->LUNAR_INFO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6b20
        0x1a6c4
        0xaae0
        0xa2e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
        0xd520
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dateToString(III)Ljava/lang/String;
    .locals 1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static daysInLunarMonth(II)I
    .locals 1

    .line 181
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/high16 v0, 0x10000

    shr-int p1, v0, p1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0
.end method

.method public static getLunarText(III)Ljava/lang/String;
    .locals 3

    .line 246
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->gregorianFestival(II)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 250
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 252
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/LunarUtil;->solarToLunar(III)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 253
    aget p1, p0, p1

    const/4 p2, 0x1

    aget v0, p0, p2

    const/4 v1, 0x2

    aget v2, p0, v1

    invoke-static {p1, v0, v2}, Lcom/haibin/calendarview/LunarCalendar;->getTraditionFestival(III)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 256
    :cond_2
    aget p1, p0, p2

    aget p2, p0, v1

    const/4 v0, 0x3

    aget p0, p0, v0

    invoke-static {p1, p2, p0}, Lcom/haibin/calendarview/LunarCalendar;->numToChinese(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLunarText(Lcom/haibin/calendarview/Calendar;)Ljava/lang/String;
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/haibin/calendarview/LunarCalendar;->getLunarText(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSolarTerm(III)Ljava/lang/String;
    .locals 4

    .line 220
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/haibin/calendarview/SolarTermUtil;->getSolarTerms(I)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 227
    array-length p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, v0, v1

    .line 228
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    .line 229
    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static getSpecialFestival(III)Ljava/lang/String;
    .locals 4

    .line 271
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/haibin/calendarview/LunarCalendar;->getSpecialFestivals(I)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 278
    array-length p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, v0, v1

    .line 279
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    .line 280
    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static getSpecialFestivals(I)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x3

    .line 296
    new-array v0, v0, [Ljava/lang/String;

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 298
    invoke-virtual {v1, p0, v3, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v3, 0x7

    .line 299
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ne v4, v3, :cond_0

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v4, v2

    invoke-static {p0, v6, v4}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    goto :goto_0

    .line 304
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-static {p0, v6, v4}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 306
    :goto_0
    invoke-virtual {v1, p0, v6, v2}, Ljava/util/Calendar;->set(III)V

    .line 307
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v2

    const/4 v5, 0x6

    if-ne v4, v3, :cond_1

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-static {p0, v5, v4}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 312
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v4, v3

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-static {p0, v5, v4}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    :goto_1
    const/16 v4, 0xa

    .line 315
    invoke-virtual {v1, p0, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 316
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    const/16 v1, 0xb

    const/4 v2, 0x2

    if-gt v3, v2, :cond_2

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v6

    invoke-static {p0, v1, v3}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    goto :goto_2

    .line 321
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, 0xe

    add-int/2addr v3, v6

    invoke-static {p0, v1, v3}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    :goto_2
    return-object v0
.end method

.method private static getString(II)Ljava/lang/String;
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTraditionFestival(III)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 92
    invoke-static {p0, p1}, Lcom/haibin/calendarview/LunarCalendar;->daysInLunarMonth(II)I

    move-result p0

    if-ne p2, p0, :cond_0

    .line 94
    sget-object p0, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    .line 97
    :cond_0
    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 99
    sget-object p2, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    .line 101
    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static gregorianFestival(II)Ljava/lang/String;
    .locals 5

    .line 195
    invoke-static {p0, p1}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 197
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 198
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, ""

    .line 199
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method static init(Landroid/content/Context;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->init(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/haibin/calendarview/SolarTermUtil;->init(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$array;->lunar_first_of_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$array;->tradition_festival:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$array;->lunar_str:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->DAY_STR:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$array;->special_festivals:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/haibin/calendarview/R$array;->solar_festival:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    return-void
.end method

.method private static numToChinese(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 133
    invoke-static {p0, p2}, Lcom/haibin/calendarview/LunarCalendar;->numToChineseMonth(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    sget-object p0, Lcom/haibin/calendarview/LunarCalendar;->DAY_STR:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static numToChineseMonth(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_0
    sget-object p1, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 13

    .line 337
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 339
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    .line 340
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->isWeekend(Lcom/haibin/calendarview/Calendar;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setWeekend(Z)V

    .line 341
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setWeek(I)V

    .line 343
    new-instance v3, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v3}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 344
    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 345
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarUtil;->solarToLunar(III)[I

    move-result-object v4

    const/4 v5, 0x0

    .line 346
    aget v6, v4, v5

    invoke-virtual {v3, v6}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    const/4 v6, 0x1

    .line 347
    aget v7, v4, v6

    invoke-virtual {v3, v7}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    const/4 v7, 0x2

    .line 348
    aget v8, v4, v7

    invoke-virtual {v3, v8}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 349
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarUtil;->isLeapYear(I)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/haibin/calendarview/Calendar;->setLeapYear(Z)V

    const/4 v8, 0x3

    .line 350
    aget v9, v4, v8

    if-ne v9, v6, :cond_0

    .line 351
    aget v9, v4, v6

    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setLeapMonth(I)V

    .line 352
    aget v9, v4, v6

    invoke-virtual {v3, v9}, Lcom/haibin/calendarview/Calendar;->setLeapMonth(I)V

    .line 354
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v9

    .line 355
    invoke-static {v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->gregorianFestival(II)Ljava/lang/String;

    move-result-object v10

    .line 356
    aget v5, v4, v5

    aget v11, v4, v6

    aget v12, v4, v7

    invoke-static {v5, v11, v12}, Lcom/haibin/calendarview/LunarCalendar;->getTraditionFestival(III)Ljava/lang/String;

    move-result-object v5

    .line 357
    aget v6, v4, v6

    aget v7, v4, v7

    aget v4, v4, v8

    invoke-static {v6, v7, v4}, Lcom/haibin/calendarview/LunarCalendar;->numToChinese(III)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->getSpecialFestival(III)Ljava/lang/String;

    move-result-object v10

    .line 361
    :cond_1
    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setSolarTerm(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v10}, Lcom/haibin/calendarview/Calendar;->setGregorianFestival(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v5}, Lcom/haibin/calendarview/Calendar;->setTraditionFestival(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v3, v5}, Lcom/haibin/calendarview/Calendar;->setTraditionFestival(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, v9}, Lcom/haibin/calendarview/Calendar;->setSolarTerm(Ljava/lang/String;)V

    .line 366
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    invoke-virtual {p0, v10}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 371
    invoke-virtual {p0, v5}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_4
    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    .line 375
    :goto_0
    invoke-virtual {v3, v4}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    return-void
.end method
