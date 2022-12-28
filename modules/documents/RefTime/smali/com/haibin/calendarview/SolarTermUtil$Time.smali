.class Lcom/haibin/calendarview/SolarTermUtil$Time;
.super Ljava/lang/Object;
.source "SolarTermUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/SolarTermUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Time"
.end annotation


# instance fields
.field private day:D

.field private hour:D

.field private minute:D

.field private month:D

.field private second:D

.field private year:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/SolarTermUtil$1;)V
    .locals 0

    .line 651
    invoke-direct {p0}, Lcom/haibin/calendarview/SolarTermUtil$Time;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->year:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->year:D

    return-wide p1
.end method

.method static synthetic access$008(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 4

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->year:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->year:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->month:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->month:D

    return-wide p1
.end method

.method static synthetic access$110(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 4

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->month:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    iput-wide v2, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->month:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->day:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->day:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->second:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->second:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->minute:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->minute:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/SolarTermUtil$Time;)D
    .locals 2

    .line 651
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->hour:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/haibin/calendarview/SolarTermUtil$Time;D)D
    .locals 0

    .line 651
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->hour:D

    return-wide p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->year:D

    invoke-static {v1, v2}, Lcom/haibin/calendarview/SolarTermUtil;->access$1000(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->month:D

    invoke-static {v1, v2}, Lcom/haibin/calendarview/SolarTermUtil;->access$1000(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/haibin/calendarview/SolarTermUtil$Time;->day:D

    invoke-static {v1, v2}, Lcom/haibin/calendarview/SolarTermUtil;->access$1000(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
