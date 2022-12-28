.class public LDBManager/DBHelper/ReplanHelper;
.super Ljava/lang/Object;
.source "ReplanHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddReplanData(LDBManager/Database/RePlanData;)Z
    .locals 2

    .line 26
    invoke-static {p0}, LDBManager/DBHelper/ReplanHelper;->IsPlanExit(LDBManager/Database/RePlanData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-virtual {p0, v1}, LDBManager/Database/RePlanData;->assignBaseObjId(I)V

    .line 30
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->save()Z

    const-string p0, "Ceshi"

    const-string v0, "Ceishi"

    .line 31
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static DeleteRePlanData(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x2

    .line 131
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "recordId = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDBManager/Database/RePlanData;

    .line 136
    :try_start_0
    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDBManager/DBHelper/ReplanHelper;->GetFloatTime(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDBManager/DBHelper/ReplanHelper;->GetFloatTime(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 137
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getCycle()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eqz v6, :cond_0

    .line 138
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "deleteDate"

    .line 139
    invoke-virtual {v6, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-class v9, LDBManager/Database/RePlanData;

    new-array v8, v8, [Ljava/lang/String;

    const-string v10, "recordId = ? and  startTime = ? and stopTime = ? "

    aput-object v10, v8, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-static {v9, v6, v8}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_0
    const-class v6, LDBManager/Database/RePlanData;

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "recordId = ? and  startTime = ? and stopTime = ? "

    aput-object v9, v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v5}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-static {v6, v8}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v3

    :cond_2
    return v4
.end method

.method public static EditReplanData(LDBManager/Database/RePlanData;)Z
    .locals 7

    const/4 v0, 0x3

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and deleteDate = ? "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, ""

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RePlanData;

    invoke-virtual {v0}, LDBManager/Database/RePlanData;->getCycle()I

    move-result v0

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 99
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unicode"

    .line 100
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "color"

    .line 101
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timingColor"

    .line 102
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getTimingColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startTime"

    .line 103
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stopTime"

    .line 104
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-class v1, LDBManager/Database/RePlanData;

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "recordId = ? "

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v1, v0, v4}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return v3

    .line 108
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 109
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unicode"

    .line 110
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "color"

    .line 111
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timingColor"

    .line 112
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getTimingColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deleteDate"

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startTime"

    .line 114
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stopTime"

    .line 115
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-class v1, LDBManager/Database/RePlanData;

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "recordId = ? "

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v0, v4}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->save()Z

    move-result p0

    return p0
.end method

.method public static GetFloatTime(Ljava/lang/String;)F
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 124
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    .line 155
    invoke-static {p0}, LDateHelper/DateHelper;->GetWeekDayFromDate(Ljava/lang/String;)I

    move-result v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 159
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cycle = ?"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "0"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    const-class v4, LDBManager/Database/RePlanData;

    invoke-virtual {v3, v4}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 160
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 161
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LDBManager/Database/RePlanData;

    .line 162
    invoke-virtual {v7}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 164
    new-instance v8, LDBManager/MainActivityData/RecordList;

    invoke-direct {v8, v7}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 220
    :pswitch_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle5 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 221
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 222
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 223
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 225
    :cond_2
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 210
    :pswitch_1
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle4 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 211
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 212
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 213
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 215
    :cond_4
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    :pswitch_2
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle3 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 201
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 202
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 203
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    .line 205
    :cond_6
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 190
    :pswitch_3
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle2 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 191
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 192
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 193
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_9

    .line 195
    :cond_8
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 180
    :pswitch_4
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle1 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 181
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 182
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 183
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    .line 185
    :cond_a
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 170
    :pswitch_5
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle0 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 171
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 172
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 173
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_d

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    .line 175
    :cond_c
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 230
    :pswitch_6
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "cycle6 = ?"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, LDBManager/Database/RePlanData;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 231
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 232
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    .line 233
    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getAddDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_f

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, LDBManager/Database/RePlanData;->getDeleteDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, LDateHelper/DateHelper;->CompareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_f

    .line 235
    :cond_e
    new-instance v3, LDBManager/MainActivityData/RecordList;

    invoke-direct {v3, v2}, LDBManager/MainActivityData/RecordList;-><init>(LDBManager/Database/RePlanData;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 242
    :cond_10
    :goto_8
    new-instance p0, LDBManager/DBHelper/ReplanHelper$1;

    invoke-direct {p0}, LDBManager/DBHelper/ReplanHelper$1;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static IsPlanExit(LDBManager/Database/RePlanData;)Z
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 40
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recordId = ? and startTime = ? and stopTime = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v1, v4

    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v1, v0

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RePlanData;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public static UpdateRePlanData(LDBManager/Database/RePlanData;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)Z
    .locals 8

    .line 60
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v0

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v1

    const/4 v2, 0x2

    .line 61
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "recordId = ? "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    const-class v3, LDBManager/Database/RePlanData;

    invoke-virtual {p1, v3}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 64
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LDBManager/Database/RePlanData;

    .line 65
    invoke-virtual {v6}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDBManager/DBHelper/ReplanHelper;->GetFloatTime(Ljava/lang/String;)F

    move-result v7

    cmpl-float v7, v7, v0

    if-nez v7, :cond_0

    invoke-virtual {v6}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDBManager/DBHelper/ReplanHelper;->GetFloatTime(Ljava/lang/String;)F

    move-result v7

    cmpl-float v7, v7, v1

    if-nez v7, :cond_0

    .line 66
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "name"

    .line 67
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unicode"

    .line 68
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "recordId"

    .line 69
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "color"

    .line 70
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timingColor"

    .line 71
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getTimingColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startTime"

    .line 72
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopTime"

    .line 73
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cycle"

    .line 74
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle0"

    .line 75
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle1"

    .line 76
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle2"

    .line 77
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle3"

    .line 78
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle3()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle4"

    .line 79
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle4()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle5"

    .line 80
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle5()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cycle6"

    .line 81
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getCycle6()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "recordSort"

    .line 82
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getRecordSort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sortName"

    .line 83
    invoke-virtual {p0}, LDBManager/Database/RePlanData;->getSortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-class p0, LDBManager/Database/RePlanData;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recordId = ? and  startTime = ? and stopTime = ? "

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v6}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-virtual {v6}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return v5
.end method
