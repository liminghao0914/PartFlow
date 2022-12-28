.class public LDBManager/StatisticsActivityData/ChartDataHelper;
.super Ljava/lang/Object;
.source "ChartDataHelper.java"


# static fields
.field public static Color1:[Ljava/lang/String;

.field public static Color2:[Ljava/lang/String;

.field public static Color3:[Ljava/lang/String;

.field public static Color4:[Ljava/lang/String;

.field public static Color5:[Ljava/lang/String;

.field public static Color6:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "#8BC5A1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#649C7A"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "#3E7555"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "#185033"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "#002E13"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, LDBManager/StatisticsActivityData/ChartDataHelper;->Color1:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "#76ABDE"

    aput-object v2, v1, v3

    const-string v2, "#5087B8"

    aput-object v2, v1, v4

    const-string v2, "#256593"

    aput-object v2, v1, v5

    const-string v2, "#004570"

    aput-object v2, v1, v6

    const-string v2, "#00274F"

    aput-object v2, v1, v7

    sput-object v1, LDBManager/StatisticsActivityData/ChartDataHelper;->Color2:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "#A47AC4"

    aput-object v2, v1, v3

    const-string v2, "#855DA4"

    aput-object v2, v1, v4

    const-string v2, "#674186"

    aput-object v2, v1, v5

    const-string v2, "#4A2668"

    aput-object v2, v1, v6

    const-string v2, "#2D0C4C"

    aput-object v2, v1, v7

    sput-object v1, LDBManager/StatisticsActivityData/ChartDataHelper;->Color3:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "#DE8476"

    aput-object v2, v1, v3

    const-string v2, "#B86356"

    aput-object v2, v1, v4

    const-string v2, "#934338"

    aput-object v2, v1, v5

    const-string v2, "#6F231D"

    aput-object v2, v1, v6

    const-string v2, "#4C0000"

    aput-object v2, v1, v7

    sput-object v1, LDBManager/StatisticsActivityData/ChartDataHelper;->Color4:[Ljava/lang/String;

    .line 18
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "#E79DD5"

    aput-object v2, v1, v3

    const-string v2, "#BD76AC"

    aput-object v2, v1, v4

    const-string v2, "#955186"

    aput-object v2, v1, v5

    const-string v2, "#6E2D61"

    aput-object v2, v1, v6

    const-string v2, "#48053E"

    aput-object v2, v1, v7

    sput-object v1, LDBManager/StatisticsActivityData/ChartDataHelper;->Color5:[Ljava/lang/String;

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#94ACDC"

    aput-object v1, v0, v3

    const-string v1, "#6E87B5"

    aput-object v1, v0, v4

    const-string v1, "#4A648F"

    aput-object v1, v0, v5

    const-string v1, "#25436C"

    aput-object v1, v0, v6

    const-string v1, "#00254A"

    aput-object v1, v0, v7

    sput-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color6:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\u65e0"

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u9ed8\u8ba4"

    return-object p0

    :cond_0
    const-string v0, "None"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Default"

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static GetJsonString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/StatisticsActivityData/RecordForChart;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "{\"data\":["

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/StatisticsActivityData/RecordForChart;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{\"value\": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordTime()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \"name\": \""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"},"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/StatisticsActivityData/RecordForChart;

    .line 30
    invoke-virtual {v0}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordTime()I

    move-result v3

    if-lez v3, :cond_1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{\"value\": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordTime()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \"name\": \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],\"sort\":["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f008c

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 39
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LDBManager/StatisticsActivityData/RecordForChart;

    .line 41
    invoke-virtual {v7}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v7}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordSort()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v7}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordSortName()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 46
    invoke-virtual {v7}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordTime()I

    move-result v6

    add-int/2addr p1, v6

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{\"value\":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"name\":\""

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"},"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_3
    invoke-virtual {v7}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordTime()I

    move-result p1

    move-object v5, v8

    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x1

    goto :goto_1

    .line 57
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{\"value\":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"name\":\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"},"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "],\"color\":["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, LDBManager/StatisticsActivityData/ChartDataHelper;->getColor(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetRecordChartByList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;)",
            "Ljava/util/List<",
            "LDBManager/StatisticsActivityData/RecordForChart;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    new-instance v2, LDBManager/StatisticsActivityData/RecordForChart;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v3}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, LDBManager/StatisticsActivityData/RecordForChart;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getChildColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    :goto_0
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x4

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color2:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color2:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 156
    :cond_1
    sget-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color3:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color3:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 159
    :cond_2
    sget-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color4:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color4:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 162
    :cond_3
    sget-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color5:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color5:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 165
    :cond_4
    sget-object v0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color6:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 166
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color6:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 168
    :cond_5
    sget-object p0, LDBManager/StatisticsActivityData/ChartDataHelper;->Color1:[Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static getColor(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    if-eqz p0, :cond_2

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    .line 116
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    const/4 v6, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 120
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v5, :cond_0

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v6}, LDBManager/StatisticsActivityData/ChartDataHelper;->getChildColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 126
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, LDBManager/StatisticsActivityData/ChartDataHelper;->getChildColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    move-object v1, v2

    move-object v2, v4

    .line 132
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
