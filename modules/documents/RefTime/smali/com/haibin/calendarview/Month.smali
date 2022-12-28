.class final Lcom/haibin/calendarview/Month;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I

.field private diff:I

.field private month:I

.field private year:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/haibin/calendarview/Month;->count:I

    return v0
.end method

.method getDiff()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/haibin/calendarview/Month;->diff:I

    return v0
.end method

.method getMonth()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/haibin/calendarview/Month;->month:I

    return v0
.end method

.method getYear()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/haibin/calendarview/Month;->year:I

    return v0
.end method

.method setCount(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/haibin/calendarview/Month;->count:I

    return-void
.end method

.method setDiff(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/haibin/calendarview/Month;->diff:I

    return-void
.end method

.method setMonth(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/haibin/calendarview/Month;->month:I

    return-void
.end method

.method setYear(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/haibin/calendarview/Month;->year:I

    return-void
.end method
