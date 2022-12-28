.class public LDateHelper/GetHashCode;
.super Ljava/lang/Object;
.source "GetHashCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHash(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x2b69

    const/4 v1, 0x0

    const/16 v2, 0x2b69

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x60

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v3

    .line 10
    rem-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
