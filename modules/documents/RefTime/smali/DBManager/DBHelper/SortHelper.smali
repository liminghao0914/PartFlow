.class public LDBManager/DBHelper/SortHelper;
.super Ljava/lang/Object;
.source "SortHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeleteSort(LDBManager/Database/RecordSort;)V
    .locals 4

    .line 46
    const-class v0, LDBManager/Database/RecordSort;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "id = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RecordSort;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    return-void
.end method

.method public static GetAllRelanList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LDBManager/RePlanData/ReplanList;",
            ">;"
        }
    .end annotation

    .line 51
    const-class v0, LDBManager/Database/RecordSort;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    new-instance v3, LDBManager/RePlanData/ReplanList;

    new-instance v4, LDBManager/Database/RecordSort;

    const-string v5, "\u65e0"

    sget-object v6, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v6, v6, v1

    sget-object v7, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR_TIMING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v4, v1, v5, v6, v7}, LDBManager/Database/RecordSort;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, LDBManager/RePlanData/ReplanList;-><init>(LDBManager/Database/RecordSort;)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v3, LDBManager/RePlanData/ReplanList;

    new-instance v4, LDBManager/Database/RecordSort;

    const-string v5, "None"

    sget-object v6, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR:[Ljava/lang/String;

    aget-object v6, v6, v1

    sget-object v7, Lwww/littlefoxes/reftime/record/AddRecordActivity;->SORT_COLOR_TIMING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v4, v1, v5, v6, v7}, LDBManager/Database/RecordSort;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, LDBManager/RePlanData/ReplanList;-><init>(LDBManager/Database/RecordSort;)V

    .line 60
    :goto_0
    invoke-virtual {v3}, LDBManager/RePlanData/ReplanList;->getRecordSortName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, LDBManager/DBHelper/MenuHelper;->GetAllRePlanDataBySort(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, LDBManager/RePlanData/ReplanList;->setRePlanDataList(Ljava/util/List;)V

    .line 61
    invoke-virtual {v3}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 62
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 65
    new-instance v3, LDBManager/RePlanData/ReplanList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDBManager/Database/RecordSort;

    invoke-direct {v3, v4}, LDBManager/RePlanData/ReplanList;-><init>(LDBManager/Database/RecordSort;)V

    .line 66
    invoke-virtual {v3}, LDBManager/RePlanData/ReplanList;->getRecordSortName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, LDBManager/DBHelper/MenuHelper;->GetAllRePlanDataBySort(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, LDBManager/RePlanData/ReplanList;->setRePlanDataList(Ljava/util/List;)V

    .line 67
    invoke-virtual {v3}, LDBManager/RePlanData/ReplanList;->getRePlanDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public static GetRecordSortById(I)LDBManager/Database/RecordSort;
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "id = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RecordSort;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 77
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDBManager/Database/RecordSort;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static UpdateSort(LDBManager/Database/RecordSort;)V
    .locals 5

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "color"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "colorTiming"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-class v1, LDBManager/Database/RecordSort;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id = ? "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDBManager/Database/RecordSort;->getId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    return-void
.end method

.method public static getAllSortList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;"
        }
    .end annotation

    .line 21
    const-class v0, LDBManager/Database/RecordSort;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static recordSortExit(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x2

    .line 25
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "name = ? "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v4, LDBManager/Database/RecordSort;

    invoke-virtual {v1, v4}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "recordName = ? "

    aput-object v4, v0, v3

    aput-object p0, v0, v2

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, LDBManager/Database/RecordMenu;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    return v3
.end method
