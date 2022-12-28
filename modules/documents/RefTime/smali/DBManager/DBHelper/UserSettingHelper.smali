.class public LDBManager/DBHelper/UserSettingHelper;
.super Ljava/lang/Object;
.source "UserSettingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatDB(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lorg/litepal/LitePal;->initialize(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lorg/litepal/LitePal;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static UpdateCountDownTime(Z)V
    .locals 4

    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "CountdownTime"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-class p0, LDBManager/Database/UserSettingData;

    const-wide/16 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/litepal/LitePal;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    return-void
.end method

.method public static UpdateShowPercentage(Z)V
    .locals 4

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ShowPercentage"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-class p0, LDBManager/Database/UserSettingData;

    const-wide/16 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/litepal/LitePal;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    return-void
.end method

.method public static UpdateTime(Ljava/lang/String;)V
    .locals 4

    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mMinute"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-class p0, LDBManager/Database/UserSettingData;

    const-wide/16 v1, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/litepal/LitePal;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    return-void
.end method

.method public static getUserSetting()LDBManager/Database/UserSettingData;
    .locals 3

    .line 41
    const-class v0, LDBManager/Database/UserSettingData;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/UserSettingData;

    return-object v0
.end method

.method public static initUserSetting()V
    .locals 4

    .line 18
    const-class v0, LDBManager/Database/UserSettingData;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, LDBManager/Database/UserSettingData;

    const/4 v2, 0x1

    const-string v3, "30min"

    invoke-direct {v0, v1, v2, v3}, LDBManager/Database/UserSettingData;-><init>(ZZLjava/lang/String;)V

    .line 22
    invoke-virtual {v0}, LDBManager/Database/UserSettingData;->save()Z

    return-void
.end method
