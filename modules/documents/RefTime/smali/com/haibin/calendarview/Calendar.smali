.class public final Lcom/haibin/calendarview/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/Calendar$Scheme;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/haibin/calendarview/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f60d640f96f427L


# instance fields
.field private day:I

.field private gregorianFestival:Ljava/lang/String;

.field private isCurrentDay:Z

.field private isCurrentMonth:Z

.field private isLeapYear:Z

.field private isWeekend:Z

.field private leapMonth:I

.field private lunar:Ljava/lang/String;

.field private lunarCalendar:Lcom/haibin/calendarview/Calendar;

.field private month:I

.field private scheme:Ljava/lang/String;

.field private schemeColor:I

.field private schemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private solarTerm:Ljava/lang/String;

.field private traditionFestival:Ljava/lang/String;

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addScheme(IILjava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScheme(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScheme(ILjava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScheme(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScheme(Lcom/haibin/calendarview/Calendar$Scheme;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final clearScheme()V
    .locals 1

    const-string v0, ""

    .line 402
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    return-void
.end method

.method public compareTo(Lcom/haibin/calendarview/Calendar;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    return p1
.end method

.method public final differ(Lcom/haibin/calendarview/Calendar;)I
    .locals 0

    .line 344
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 371
    instance-of v0, p1, Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 372
    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/Calendar;->year:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/Calendar;->month:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 375
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDay()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->day:I

    return v0
.end method

.method public getGregorianFestival()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->gregorianFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getLeapMonth()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->leapMonth:I

    return v0
.end method

.method public getLunar()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->lunar:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->lunarCalendar:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->month:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeColor()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->schemeColor:I

    return v0
.end method

.method public getSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    return-object v0
.end method

.method public getSolarTerm()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->solarTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 3

    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 365
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTraditionFestival()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->traditionFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    return v0
.end method

.method public hasScheme()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 353
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->day:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/16 v4, 0x76c

    if-lt v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/16 v4, 0x833

    if-gt v3, v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    and-int/2addr v0, v1

    return v0
.end method

.method public isCurrentDay()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isCurrentDay:Z

    return v0
.end method

.method public isCurrentMonth()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isCurrentMonth:Z

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isLeapYear:Z

    return v0
.end method

.method public isSameMonth(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2

    .line 321
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/haibin/calendarview/Calendar;->month:I

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWeekend()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isWeekend:Z

    return v0
.end method

.method final mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object p2

    .line 395
    :goto_0
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 398
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    return-void
.end method

.method public setCurrentDay(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isCurrentDay:Z

    return-void
.end method

.method public setCurrentMonth(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isCurrentMonth:Z

    return-void
.end method

.method public setDay(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    return-void
.end method

.method public setGregorianFestival(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->gregorianFestival:Ljava/lang/String;

    return-void
.end method

.method public setLeapMonth(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->leapMonth:I

    return-void
.end method

.method public setLeapYear(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isLeapYear:Z

    return-void
.end method

.method public setLunar(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->lunar:Ljava/lang/String;

    return-void
.end method

.method public setLunarCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->lunarCalendar:Lcom/haibin/calendarview/Calendar;

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setSchemeColor(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->schemeColor:I

    return-void
.end method

.method public setSchemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    return-void
.end method

.method public setSolarTerm(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->solarTerm:Ljava/lang/String;

    return-void
.end method

.method public setTraditionFestival(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->traditionFestival:Ljava/lang/String;

    return-void
.end method

.method public setWeek(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->week:I

    return-void
.end method

.method public setWeekend(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isWeekend:Z

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/haibin/calendarview/Calendar;->day:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
