.class Lcom/haibin/calendarview/SolarTermUtil$Nutation;
.super Ljava/lang/Object;
.source "SolarTermUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/SolarTermUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Nutation"
.end annotation


# instance fields
.field private Lon:D

.field private Obl:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/SolarTermUtil$1;)V
    .locals 0

    .line 638
    invoke-direct {p0}, Lcom/haibin/calendarview/SolarTermUtil$Nutation;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/haibin/calendarview/SolarTermUtil$Nutation;)D
    .locals 2

    .line 638
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Nutation;->Lon:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/haibin/calendarview/SolarTermUtil$Nutation;D)D
    .locals 0

    .line 638
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Nutation;->Lon:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/haibin/calendarview/SolarTermUtil$Nutation;)D
    .locals 2

    .line 638
    iget-wide v0, p0, Lcom/haibin/calendarview/SolarTermUtil$Nutation;->Obl:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/haibin/calendarview/SolarTermUtil$Nutation;D)D
    .locals 0

    .line 638
    iput-wide p1, p0, Lcom/haibin/calendarview/SolarTermUtil$Nutation;->Obl:D

    return-wide p1
.end method
