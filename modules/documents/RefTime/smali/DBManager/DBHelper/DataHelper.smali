.class public LDBManager/DBHelper/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeleteData(I)V
    .locals 4

    .line 190
    const-class v0, LDBManager/Database/RecordData;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recordId = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static DeleteRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)V
    .locals 7

    .line 194
    const-class v0, LDBManager/Database/RecordData;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "recordTime < ?  and status = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "60"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "0"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 195
    const-class v0, LDBManager/Database/RecordData;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "recordId = ? and recordDate = ? and startTime = ?  and status = ? "

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "1"

    const/4 p1, 0x4

    aput-object p0, v2, p1

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static DeleteRecordDate(Ljava/lang/String;LDBManager/Database/RecordData;)V
    .locals 4

    .line 340
    const-class v0, LDBManager/Database/RecordData;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recordId = ? and startTime = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static GetAllRecord(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDBManager/MainActivityData/RecordList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and recordDate = ? and status = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "0"

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, LDBManager/Database/RecordData;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, LDBManager/DBHelper/DataHelper$2;

    invoke-direct {v1}, LDBManager/DBHelper/DataHelper$2;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    const-string v4, "TestTestRealRecord"

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6d4b\u8bd5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getRecordName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5f00\u59cb\u65f6\u95f4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 90
    new-instance v1, LDBManager/MainActivityData/RecordList;

    invoke-direct {v1, p0}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/MainActivityData/RecordList;)V

    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x12c

    if-ge v1, v4, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v4}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 102
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v4

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/MainActivityData/RecordList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    goto :goto_2

    .line 107
    :cond_1
    new-instance v4, LDBManager/MainActivityData/RecordList;

    invoke-direct {v4, p0}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/MainActivityData/RecordList;)V

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/Database/RecordData;

    invoke-virtual {v5}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/Database/RecordData;

    invoke-virtual {v5}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/Database/RecordData;

    invoke-virtual {v5}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v5

    invoke-virtual {v4, v5}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    .line 111
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 117
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_4

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result p0

    if-ge p0, v5, :cond_3

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public static GetAllRecordData(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "LListFluHelper/ListFlu;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 284
    invoke-static {p0, v1}, LDateHelper/DateHelper;->getSomeDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v2}, LDBManager/DBHelper/DataHelper;->GetAllRecordListByDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 286
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 287
    new-instance v4, LListFluHelper/ListFlu;

    invoke-direct {v4, v2, v3}, LListFluHelper/ListFlu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static GetAllRecordDataById(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LListFluHelper/ListFlu;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    .line 295
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recordId = ? and status = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "0"

    const/4 v4, 0x2

    aput-object p0, v1, v4

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v1, LDBManager/Database/RecordData;

    invoke-virtual {p0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 297
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 300
    :cond_0
    new-instance v1, LDBManager/DBHelper/DataHelper$3;

    invoke-direct {v1}, LDBManager/DBHelper/DataHelper$3;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_2

    .line 314
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    invoke-virtual {v4}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RecordData;

    invoke-virtual {v6}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    new-instance v4, LListFluHelper/ListFlu;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/Database/RecordData;

    invoke-virtual {v3}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v1}, LListFluHelper/ListFlu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move v3, v5

    goto :goto_0

    .line 321
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v3, LListFluHelper/ListFlu;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDBManager/Database/RecordData;

    invoke-virtual {p0}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v1}, LListFluHelper/ListFlu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_3
    new-instance v1, LListFluHelper/ListFlu;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RecordData;

    invoke-virtual {v2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, LListFluHelper/ListFlu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static GetAllRecordDetail(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-static {v2, p1}, LDBManager/DBHelper/DataHelper;->GetAllRecord(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static GetAllRecordList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;"
        }
    .end annotation

    .line 274
    const-class v0, LDBManager/Database/RecordData;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetAllRecordListByDate(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;"
        }
    .end annotation

    const-string v0, "startTime asc"

    .line 278
    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recordDate = ? and status = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "0"

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RecordData;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static GetAllRecordTime(LDBManager/MainActivityData/RecordList;)LDBManager/MainActivityData/RecordList;
    .locals 6

    const/4 v0, 0x3

    .line 171
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and status = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "0"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, LDBManager/Database/RecordData;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 173
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordData;

    .line 175
    invoke-virtual {v4}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v5

    add-int/2addr v3, v5

    .line 176
    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v2}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    .line 178
    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, LDBManager/MainActivityData/RecordList;->setStopTime(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, v3}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    return-object p0
.end method

.method public static GetSomeDayTime(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)LDBManager/MainActivityData/RecordList;
    .locals 5

    const/4 v0, 0x4

    .line 236
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and recordDate = ? and status = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "0"

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v0, LDBManager/Database/RecordData;

    invoke-virtual {p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 239
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDBManager/Database/RecordData;

    .line 240
    invoke-virtual {v1}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v4

    add-int/2addr v0, v4

    .line 241
    invoke-virtual {v1}, LDBManager/Database/RecordData;->isStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-virtual {p0, v3}, LDBManager/MainActivityData/RecordList;->setStatus(Z)V

    .line 243
    invoke-virtual {v1}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LDBManager/MainActivityData/RecordList;->setStartTime(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0, v0}, LDBManager/MainActivityData/RecordList;->setRecordTime(I)V

    return-object p0
.end method

.method public static GetSomeDayTimeForChart(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x4

    .line 263
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and recordDate = ? and status = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "0"

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, LDBManager/Database/RecordData;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 266
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 267
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordData;

    .line 268
    invoke-virtual {v0}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static SearchDataByStatus(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "LDBManager/MainActivityData/RecordList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "status = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RecordData;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 26
    new-instance v1, LDBManager/MainActivityData/RecordList;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDBManager/Database/RecordData;

    invoke-direct {v1, v3}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RecordData;)V

    .line 27
    invoke-virtual {v1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-static {v3}, LDBManager/DBHelper/MenuHelper;->GetRecordMenuById(I)LDBManager/Database/RecordMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v3}, LDBManager/Database/RecordMenu;->getRecordSort()I

    move-result v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setRecordSort(I)V

    .line 30
    invoke-virtual {v3}, LDBManager/Database/RecordMenu;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setRecordSortColorTiming(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, LDBManager/Database/RecordMenu;->getRecordSortColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, LDBManager/MainActivityData/RecordList;->setRecordSortColor(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, LDBManager/Database/RecordMenu;->getRecordSortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LDBManager/MainActivityData/RecordList;->setRecordSortName(Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 39
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static UpdateRecordData(LDBManager/MainActivityData/RecordList;)V
    .locals 6

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "startTime"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stopTime"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recordTime"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 230
    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-class v1, LDBManager/Database/RecordData;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "recordId = ? and startTime = ? "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method

.method public static UpdateRecordData(LDBManager/MainActivityData/RecordList;Ljava/lang/String;Z)V
    .locals 8

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "startTime"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "stopTime"

    const-string v1, ""

    .line 203
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "stopTime"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "recordTime"

    .line 206
    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string p2, "status"

    .line 208
    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-class p2, LDBManager/Database/RecordData;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "recordId = ? and recordDate = ? and startTime = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v2, v7

    invoke-static {p2, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 211
    const-class p2, LDBManager/Database/RecordData;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "recordId = ? and recordDate = ? and startTime = ?  and recordTime = ? "

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p1, v0, v3

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "0"

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static UpdateRecordData(Ljava/lang/String;LDBManager/Database/RecordData;)V
    .locals 5

    .line 331
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "startTime"

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stopTime"

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recordDate"

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recordTime"

    .line 335
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-class v1, LDBManager/Database/RecordData;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "recordId = ? and startTime = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v1, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method

.method public static UpdateRecordDataForCounting(LDBManager/MainActivityData/RecordList;Ljava/lang/String;I)V
    .locals 8

    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "stopTime"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recordTime"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "status"

    const-string v1, "0"

    .line 219
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-class p2, LDBManager/Database/RecordData;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "recordId = ? and recordDate = ? and startTime = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v2, v7

    invoke-static {p2, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 222
    const-class p2, LDBManager/Database/RecordData;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "recordId = ? and recordDate = ? and startTime = ?  and recordTime = ? "

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p1, v0, v3

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "0"

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static getAllRecordListForRePlan(Ljava/lang/String;)Ljava/util/List;
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

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordDate = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RecordData;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 46
    new-instance v0, LDBManager/DBHelper/DataHelper$1;

    invoke-direct {v0}, LDBManager/DBHelper/DataHelper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static recordDataExist(LDBManager/MainActivityData/RecordList;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x4

    .line 252
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and recordDate = ? and startTime = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-virtual {p0}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, LDBManager/Database/RecordData;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 253
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v3, :cond_0

    return v2

    :cond_0
    return v3
.end method
