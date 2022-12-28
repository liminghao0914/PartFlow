.class public Lorg/litepal/FluentQuery;
.super Ljava/lang/Object;
.source "FluentQuery.java"


# instance fields
.field public mColumns:[Ljava/lang/String;

.field public mConditions:[Ljava/lang/String;

.field public mLimit:Ljava/lang/String;

.field public mOffset:Ljava/lang/String;

.field public mOrderBy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public average(Ljava/lang/Class;Ljava/lang/String;)D
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

    .line 549
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/litepal/FluentQuery;->average(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public average(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3

    .line 585
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 586
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 587
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lorg/litepal/crud/QueryHandler;->onAverage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public averageAsync(Ljava/lang/Class;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
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

    .line 562
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/litepal/FluentQuery;->averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;

    move-result-object p1

    return-object p1
.end method

.method public averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
    .locals 2

    .line 601
    new-instance v0, Lorg/litepal/crud/async/AverageExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/AverageExecutor;-><init>()V

    .line 602
    new-instance v1, Lorg/litepal/FluentQuery$5;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/FluentQuery$5;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;Lorg/litepal/crud/async/AverageExecutor;)V

    .line 618
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/AverageExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public count(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->count(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/String;)I
    .locals 3

    .line 494
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 495
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 496
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/litepal/crud/QueryHandler;->onCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public countAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/CountExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/litepal/crud/async/CountExecutor;"
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;

    move-result-object p1

    return-object p1
.end method

.method public countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;
    .locals 2

    .line 508
    new-instance v0, Lorg/litepal/crud/async/CountExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/CountExecutor;-><init>()V

    .line 509
    new-instance v1, Lorg/litepal/FluentQuery$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/FluentQuery$4;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Lorg/litepal/crud/async/CountExecutor;)V

    .line 525
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/CountExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public find(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public find(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 223
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mOffset:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 227
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    move-object v6, v2

    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "0"

    .line 230
    iput-object v2, p0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    .line 232
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/litepal/FluentQuery;->mOffset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 234
    :goto_0
    iget-object v3, p0, Lorg/litepal/FluentQuery;->mColumns:[Ljava/lang/String;

    iget-object v4, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    iget-object v5, p0, Lorg/litepal/FluentQuery;->mOrderBy:Ljava/lang/String;

    move-object v2, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/litepal/crud/QueryHandler;->onFind(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->findAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p1

    return-object p1
.end method

.method public findAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindMultiExecutor;-><init>()V

    .line 249
    new-instance v1, Lorg/litepal/FluentQuery$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/FluentQuery$1;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/Class;ZLorg/litepal/crud/async/FindMultiExecutor;)V

    .line 265
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindMultiExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 287
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 315
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 316
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    .line 317
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 318
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 320
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findFirstAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
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

    .line 298
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
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

    .line 334
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 335
    new-instance v1, Lorg/litepal/FluentQuery$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/FluentQuery$2;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/Class;ZLorg/litepal/crud/async/FindExecutor;)V

    .line 351
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public findLast(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 373
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->findLast(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 401
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 402
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 405
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 407
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 408
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findLastAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
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

    .line 384
    invoke-virtual {p0, p1, v0}, Lorg/litepal/FluentQuery;->findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p1

    return-object p1
.end method

.method public findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
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

    .line 421
    new-instance v0, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 422
    new-instance v1, Lorg/litepal/FluentQuery$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/FluentQuery$3;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/Class;ZLorg/litepal/crud/async/FindExecutor;)V

    .line 438
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public limit(I)Lorg/litepal/FluentQuery;
    .locals 0

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/litepal/FluentQuery;->mLimit:Ljava/lang/String;

    return-object p0
.end method

.method public max(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 645
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 686
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 687
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 688
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/litepal/crud/QueryHandler;->onMax(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public maxAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
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

    .line 660
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p1

    return-object p1
.end method

.method public maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 8
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

    .line 704
    new-instance v6, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v6}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 705
    new-instance v7, Lorg/litepal/FluentQuery$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/litepal/FluentQuery$6;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 721
    invoke-virtual {v6, v7}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public min(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 748
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 789
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 790
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 791
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/litepal/crud/QueryHandler;->onMin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 792
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public minAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
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

    .line 763
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p1

    return-object p1
.end method

.method public minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 8
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

    .line 807
    new-instance v6, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v6}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 808
    new-instance v7, Lorg/litepal/FluentQuery$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/litepal/FluentQuery$7;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 824
    invoke-virtual {v6, v7}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public offset(I)Lorg/litepal/FluentQuery;
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/litepal/FluentQuery;->mOffset:Ljava/lang/String;

    return-object p0
.end method

.method public order(Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/litepal/FluentQuery;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/litepal/FluentQuery;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public sum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 851
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 892
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 893
    :try_start_0
    new-instance v1, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 894
    iget-object v2, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/litepal/crud/QueryHandler;->onSum(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 895
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sumAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
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

    .line 866
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/FluentQuery;->sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p1

    return-object p1
.end method

.method public sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 8
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

    .line 910
    new-instance v6, Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {v6}, Lorg/litepal/crud/async/FindExecutor;-><init>()V

    .line 911
    new-instance v7, Lorg/litepal/FluentQuery$8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/litepal/FluentQuery$8;-><init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V

    .line 927
    invoke-virtual {v6, v7}, Lorg/litepal/crud/async/FindExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public varargs where([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/litepal/FluentQuery;->mConditions:[Ljava/lang/String;

    return-object p0
.end method
