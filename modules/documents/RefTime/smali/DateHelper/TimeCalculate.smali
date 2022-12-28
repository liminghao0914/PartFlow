.class public LDateHelper/TimeCalculate;
.super Ljava/lang/Object;
.source "TimeCalculate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CompareTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, ""

    const/4 v1, -0x2

    if-eq p0, v0, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    :try_start_0
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    .line 57
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p1, p0

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, p1

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    return v2

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    :try_start_0
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    .line 35
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    .line 36
    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v4, v2

    const/4 v2, 0x3

    .line 37
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    :cond_1
    const p0, 0x15180

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p0

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    return v1
.end method
