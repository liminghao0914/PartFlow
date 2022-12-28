.class public final Lcom/haibin/calendarview/TrunkBranchAnnals;
.super Ljava/lang/Object;
.source "TrunkBranchAnnals.java"


# static fields
.field private static BRANCH_STR:[Ljava/lang/String;

.field private static TRUNK_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBranchInt(I)I
    .locals 0

    .line 77
    rem-int/lit8 p0, p0, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static getBranchString(I)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->BRANCH_STR:[Ljava/lang/String;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getBranchInt(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getTrunkBranchYear(I)Ljava/lang/String;
    .locals 4

    const-string v0, "%s%s"

    const/4 v1, 0x2

    .line 88
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getTrunkString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getBranchString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrunkInt(I)I
    .locals 0

    .line 54
    rem-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static getTrunkString(I)Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getTrunkInt(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 27
    sget-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/haibin/calendarview/R$array;->trunk_string_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/TrunkBranchAnnals;->TRUNK_STR:[Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/haibin/calendarview/R$array;->branch_string_array:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/haibin/calendarview/TrunkBranchAnnals;->BRANCH_STR:[Ljava/lang/String;

    return-void
.end method
