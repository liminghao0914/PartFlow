.class public LDBManager/DBHelper/GetListData;
.super Ljava/lang/Object;
.source "GetListData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllChartData(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "LDBManager/StatisticsActivityData/RecordForChart;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, LDBManager/DBHelper/MenuHelper;->getAllChartDataByDate()Ljava/util/List;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, p1, :cond_0

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-static {p0, v4}, LDateHelper/DateHelper;->getSomeDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LDBManager/DBHelper/DataHelper;->GetSomeDayTimeForChart(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v7, :cond_1

    .line 94
    new-instance v4, LDBManager/StatisticsActivityData/RecordForChart;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, LDBManager/StatisticsActivityData/RecordForChart;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    new-instance p0, LDBManager/DBHelper/GetListData$2;

    invoke-direct {p0}, LDBManager/DBHelper/GetListData$2;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static getAllChartDataForMonth(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "LDBManager/StatisticsActivityData/RecordForChart;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, LDBManager/DBHelper/MenuHelper;->getAllChartDataByDate()Ljava/util/List;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "-"

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    const/4 v4, 0x4

    .line 60
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "recordId = ? and recordDate like ? and status = ? "

    aput-object v5, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v6}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 v5, 0x3

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-class v5, LDBManager/Database/RecordData;

    invoke-virtual {v4, v5}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 61
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 62
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 63
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v6

    add-int/2addr v8, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    if-lez v8, :cond_2

    .line 66
    new-instance v4, LDBManager/StatisticsActivityData/RecordForChart;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v9

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v5}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, LDBManager/StatisticsActivityData/RecordForChart;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 70
    :cond_3
    new-instance p0, LDBManager/DBHelper/GetListData$1;

    invoke-direct {p0}, LDBManager/DBHelper/GetListData$1;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static getAllRecordList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, LDBManager/DBHelper/MenuHelper;->getAllDayListByDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {v2}, LDBManager/DBHelper/DataHelper;->GetAllRecordTime(LDBManager/MainActivityData/RecordList;)LDBManager/MainActivityData/RecordList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAllRecordListDetail(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, LDBManager/DBHelper/MenuHelper;->getAllDayListByDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-static {v3, p0}, LDBManager/DBHelper/DataHelper;->GetAllRecord(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getTodayRecordList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, LDBManager/DBHelper/MenuHelper;->getTodayListByDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/MainActivityData/RecordList;

    invoke-static {v3, p0}, LDBManager/DBHelper/DataHelper;->GetSomeDayTime(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)LDBManager/MainActivityData/RecordList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
