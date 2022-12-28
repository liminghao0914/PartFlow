.class public Lorg/litepal/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field private static dbListener:Lorg/litepal/tablemanager/callback/DatabaseListener;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/litepal/Operator;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lorg/litepal/Operator;->dbListener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesKey(Ljava/lang/String;)V
    .locals 0

    .line 166
    sput-object p0, Lorg/litepal/util/cipher/CipherUtil;->aesKey:Ljava/lang/String;

    return-void
.end method

.method public static average(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/litepal/Operator;->average(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static average(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .line 451
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 452
    :try_start_0
    new-instance v1, Lorg/litepal/FluentQuery;

    invoke-direct {v1}, Lorg/litepal/FluentQuery;-><init>()V

    .line 453
    invoke-virtual {v1, p0, p1}, Lorg/litepal/FluentQuery;->average(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static averageAsync(Ljava/lang/Class;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/litepal/crud/async/AverageExecutor;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/litepal/Operator;->averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
    .locals 2

    .line 467
    new-instance v0, Lorg/litepal/crud/async/AverageExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/AverageExecutor;-><init>()V

    .line 468
    new-instance v1, Lorg/litepal/Operator$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/Operator$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/litepal/crud/async/AverageExecutor;)V

    .line 484
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/AverageExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static count(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/Operator;->count(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static count(Ljava/lang/String;)I
    .locals 2

    .line 360
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 361
    :try_start_0
    new-instance v1, Lorg/litepal/FluentQuery;

    invoke-direct {v1}, Lorg/litepal/FluentQuery;-><init>()V

    .line 362
    invoke-virtual {v1, p0}, Lorg/litepal/FluentQuery;->count(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static countAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/CountExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/litepal/crud/async/CountExecutor;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/Operator;->countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;
    .locals 2

    .line 374
    new-instance v0, Lorg/litepal/crud/async/CountExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/CountExecutor;-><init>()V

    .line 375
    new-instance v1, Lorg/litepal/Operator$1;

    invoke-direct {v1, p0, v0}, Lorg/litepal/Operator$1;-><init>(Ljava/lang/String;Lorg/litepal/crud/async/CountExecutor;)V

    .line 391
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/CountExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/Class;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)I"
        }
    .end annotation

    .line 1208
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1210
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1211
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1213
    :try_start_1
    new-instance v2, Lorg/litepal/crud/DeleteHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/DeleteHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1214
    invoke-virtual {v2, p0, p1, p2}, Lorg/litepal/crud/DeleteHandler;->onDelete(Ljava/lang/Class;J)I

    move-result p0

    .line 1215
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_1
    move-exception p0

    .line 1220
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static varargs deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1279
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1280
    :try_start_0
    new-instance v1, Lorg/litepal/crud/DeleteHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/DeleteHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1281
    invoke-virtual {v1, p0, p1}, Lorg/litepal/crud/DeleteHandler;->onDeleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs deleteAll(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1350
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1351
    :try_start_0
    new-instance v1, Lorg/litepal/crud/DeleteHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/DeleteHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1352
    invoke-virtual {v1, p0, p1}, Lorg/litepal/crud/DeleteHandler;->onDeleteAll(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs deleteAllAsync(Ljava/lang/Class;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;"
        }
    .end annotation

    .line 1301
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 1302
    new-instance v1, Lorg/litepal/Operator$11;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/Operator$11;-><init>(Ljava/lang/Class;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 1318
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs deleteAllAsync(Ljava/lang/String;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2

    .line 1372
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 1373
    new-instance v1, Lorg/litepal/Operator$12;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/Operator$12;-><init>(Ljava/lang/String;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 1389
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static deleteAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;"
        }
    .end annotation

    .line 1233
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 1234
    new-instance v1, Lorg/litepal/Operator$10;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$10;-><init>(Ljava/lang/Class;JLorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 1250
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static deleteDatabase(Ljava/lang/String;)Z
    .locals 4

    .line 138
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".db"

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    :cond_0
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {p0}, Lorg/litepal/Operator;->removeVersionInSharedPreferences(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->clearLitePalOpenHelperInstance()V

    .line 150
    :cond_1
    monitor-exit v0

    return v1

    .line 152
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {p0}, Lorg/litepal/Operator;->removeVersionInSharedPreferences(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->clearLitePalOpenHelperInstance()V

    .line 159
    :cond_3
    monitor-exit v0

    return v1

    :cond_4
    const/4 p0, 0x0

    .line 161
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static find(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 818
    invoke-static {p0, p1, p2, v0}, Lorg/litepal/Operator;->find(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static find(Ljava/lang/Class;JZ)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;JZ)TT;"
        }
    .end annotation

    .line 850
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 851
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 852
    invoke-virtual {v1, p0, p1, p2, p3}, Lorg/litepal/crud/QueryHandler;->onFind(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs findAll(Ljava/lang/Class;Z[J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z[J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1115
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1116
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1117
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/crud/QueryHandler;->onFindAll(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs findAll(Ljava/lang/Class;[J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1082
    invoke-static {p0, v0, p1}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAllAsync(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z[J)",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 1133
    new-instance v0, Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindMultiExecutor;-><init>()V

    .line 1134
    new-instance v1, Lorg/litepal/Operator$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$9;-><init>(Ljava/lang/Class;Z[JLorg/litepal/crud/async/FindMultiExecutor;)V

    .line 1150
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindMultiExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs findAllAsync(Ljava/lang/Class;[J)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[J)",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1095
    invoke-static {p0, v0, p1}, Lorg/litepal/Operator;->findAllAsync(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/FindExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 831
    invoke-static {p0, p1, p2, v0}, Lorg/litepal/Operator;->findAsync(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findAsync(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;JZ)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 868
    new-instance v6, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v6}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 869
    new-instance v7, Lorg/litepal/Operator$6;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/litepal/Operator$6;-><init>(Ljava/lang/Class;JZLorg/litepal/crud/async/FindExecutor;)V

    .line 885
    invoke-virtual {v6, v7}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public static varargs findBySQL([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 1171
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1172
    :try_start_0
    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1174
    monitor-exit v0

    return-object v1

    .line 1176
    :cond_0
    array-length v2, p0

    if-gtz v2, :cond_1

    .line 1177
    monitor-exit v0

    return-object v1

    .line 1180
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 1183
    :cond_2
    array-length v1, p0

    sub-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/String;

    .line 1184
    array-length v2, p0

    sub-int/2addr v2, v4

    invoke-static {p0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1186
    :goto_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    aget-object p0, p0, v3

    invoke-virtual {v2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 905
    invoke-static {p0, v0}, Lorg/litepal/Operator;->findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 933
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 934
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 935
    invoke-virtual {v1, p0, p1}, Lorg/litepal/crud/QueryHandler;->onFindFirst(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 936
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static findFirstAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 916
    invoke-static {p0, v0}, Lorg/litepal/Operator;->findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 949
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 950
    new-instance v1, Lorg/litepal/Operator$7;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/Operator$7;-><init>(Ljava/lang/Class;ZLorg/litepal/crud/async/FindExecutor;)V

    .line 966
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static findLast(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 986
    invoke-static {p0, v0}, Lorg/litepal/Operator;->findLast(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 1014
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1015
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1016
    invoke-virtual {v1, p0, p1}, Lorg/litepal/crud/QueryHandler;->onFindLast(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1017
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static findLastAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 997
    invoke-static {p0, v0}, Lorg/litepal/Operator;->findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 1030
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 1031
    new-instance v1, Lorg/litepal/Operator$8;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/Operator$8;-><init>(Ljava/lang/Class;ZLorg/litepal/crud/async/FindExecutor;)V

    .line 1047
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static getDBListener()Lorg/litepal/tablemanager/callback/DatabaseListener;
    .locals 1

    .line 1702
    sget-object v0, Lorg/litepal/Operator;->dbListener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    return-object v0
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 95
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 74
    sget-object v0, Lorg/litepal/Operator;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 86
    sput-object p0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static isDefaultDatabase(Ljava/lang/String;)Z
    .locals 2

    .line 190
    invoke-static {}, Lorg/litepal/util/BaseUtility;->isLitePalXMLExists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".db"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    :cond_0
    invoke-static {}, Lorg/litepal/parser/LitePalParser;->parseLitePalConfiguration()Lorg/litepal/parser/LitePalConfig;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getDbName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs isExist(Ljava/lang/Class;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1691
    invoke-static {p1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/litepal/FluentQuery;->count(Ljava/lang/Class;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static limit(I)Lorg/litepal/FluentQuery;
    .locals 1

    .line 283
    new-instance v0, Lorg/litepal/FluentQuery;

    invoke-direct {v0}, Lorg/litepal/FluentQuery;-><init>()V

    .line 284
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    return-object v0
.end method

.method public static markAsDeleted(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/LitePalSupport;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1675
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/LitePalSupport;

    .line 1676
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->clearSavedState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static max(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 552
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 553
    :try_start_0
    new-instance v1, Lorg/litepal/FluentQuery;

    invoke-direct {v1}, Lorg/litepal/FluentQuery;-><init>()V

    .line 554
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/FluentQuery;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static maxAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 570
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 571
    new-instance v1, Lorg/litepal/Operator$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 587
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static min(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 655
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 656
    :try_start_0
    new-instance v1, Lorg/litepal/FluentQuery;

    invoke-direct {v1}, Lorg/litepal/FluentQuery;-><init>()V

    .line 657
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/FluentQuery;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static minAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 673
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 674
    new-instance v1, Lorg/litepal/Operator$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 690
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static offset(I)Lorg/litepal/FluentQuery;
    .locals 1

    .line 303
    new-instance v0, Lorg/litepal/FluentQuery;

    invoke-direct {v0}, Lorg/litepal/FluentQuery;-><init>()V

    .line 304
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/litepal/FluentQuery;->mOffset:Ljava/lang/String;

    return-object v0
.end method

.method public static order(Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 1

    .line 263
    new-instance v0, Lorg/litepal/FluentQuery;

    invoke-direct {v0}, Lorg/litepal/FluentQuery;-><init>()V

    .line 264
    iput-object p0, v0, Lorg/litepal/FluentQuery;->mOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method public static registerDatabaseListener(Lorg/litepal/tablemanager/callback/DatabaseListener;)V
    .locals 0

    .line 1698
    sput-object p0, Lorg/litepal/Operator;->dbListener:Lorg/litepal/tablemanager/callback/DatabaseListener;

    return-void
.end method

.method private static removeVersionInSharedPreferences(Ljava/lang/String;)V
    .locals 1

    .line 175
    invoke-static {p0}, Lorg/litepal/Operator;->isDefaultDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 176
    invoke-static {p0}, Lorg/litepal/util/SharedUtil;->removeVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p0}, Lorg/litepal/util/SharedUtil;->removeVersion(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static saveAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/LitePalSupport;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1616
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1617
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1618
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1620
    :try_start_1
    new-instance v2, Lorg/litepal/crud/SaveHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/SaveHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1621
    invoke-virtual {v2, p0}, Lorg/litepal/crud/SaveHandler;->onSaveAll(Ljava/util/Collection;)V

    .line 1622
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1626
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1628
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1624
    :try_start_3
    new-instance v2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1626
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_1
    move-exception p0

    .line 1628
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static saveAllAsync(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/LitePalSupport;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/litepal/crud/async/SaveExecutor;"
        }
    .end annotation

    .line 1639
    new-instance v0, Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/SaveExecutor;-><init>()V

    .line 1640
    new-instance v1, Lorg/litepal/Operator$15;

    invoke-direct {v1, p0, v0}, Lorg/litepal/Operator$15;-><init>(Ljava/util/Collection;Lorg/litepal/crud/async/SaveExecutor;)V

    .line 1663
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/SaveExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs select([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 1

    .line 220
    new-instance v0, Lorg/litepal/FluentQuery;

    invoke-direct {v0}, Lorg/litepal/FluentQuery;-><init>()V

    .line 221
    iput-object p0, v0, Lorg/litepal/FluentQuery;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public static sum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 717
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 758
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 759
    :try_start_0
    new-instance v1, Lorg/litepal/FluentQuery;

    invoke-direct {v1}, Lorg/litepal/FluentQuery;-><init>()V

    .line 760
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/FluentQuery;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sumAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 776
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 777
    new-instance v1, Lorg/litepal/Operator$5;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 793
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static update(Ljava/lang/Class;Landroid/content/ContentValues;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "J)I"
        }
    .end annotation

    .line 1415
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1416
    :try_start_0
    new-instance v1, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1417
    invoke-virtual {v1, p0, p2, p3, p1}, Lorg/litepal/crud/UpdateHandler;->onUpdate(Ljava/lang/Class;JLandroid/content/ContentValues;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1487
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1486
    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 3

    .line 1544
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1545
    :try_start_0
    new-instance v1, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1546
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/crud/UpdateHandler;->onUpdateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1547
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs updateAllAsync(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;"
        }
    .end annotation

    .line 1510
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1509
    invoke-static {p0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAllAsync(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs updateAllAsync(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2

    .line 1569
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 1570
    new-instance v1, Lorg/litepal/Operator$14;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/Operator$14;-><init>(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 1586
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static updateAsync(Ljava/lang/Class;Landroid/content/ContentValues;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "J)",
            "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;"
        }
    .end annotation

    .line 1434
    new-instance v6, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v6}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 1435
    new-instance v7, Lorg/litepal/Operator$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/litepal/Operator$13;-><init>(Ljava/lang/Class;Landroid/content/ContentValues;JLorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 1451
    invoke-virtual {v6, v7}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public static use(Lorg/litepal/LitePalDB;)V
    .locals 3

    .line 106
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setDbName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setVersion(I)V

    .line 110
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getStorage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setStorage(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/parser/LitePalAttr;->setClassNames(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/Operator;->isDefaultDatabase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/litepal/parser/LitePalAttr;->setExtraKeyName(Ljava/lang/String;)V

    const-string p0, "lower"

    .line 115
    invoke-virtual {v1, p0}, Lorg/litepal/parser/LitePalAttr;->setCases(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->clearLitePalOpenHelperInstance()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static useDefault()V
    .locals 2

    .line 125
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->clearInstance()V

    .line 127
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->clearLitePalOpenHelperInstance()V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs where([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 1

    .line 241
    new-instance v0, Lorg/litepal/FluentQuery;

    invoke-direct {v0}, Lorg/litepal/FluentQuery;-><init>()V

    .line 242
    iput-object p0, v0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    return-object v0
.end method
