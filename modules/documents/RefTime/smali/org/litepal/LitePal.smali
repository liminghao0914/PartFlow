.class public Lorg/litepal/LitePal;
.super Ljava/lang/Object;
.source "LitePal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesKey(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p0}, Lorg/litepal/Operator;->aesKey(Ljava/lang/String;)V

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

    .line 278
    invoke-static {p0, p1}, Lorg/litepal/Operator;->average(Ljava/lang/Class;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static average(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 314
    invoke-static {p0, p1}, Lorg/litepal/Operator;->average(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
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

    .line 291
    invoke-static {p0, p1}, Lorg/litepal/Operator;->averageAsync(Ljava/lang/Class;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
    .locals 0

    .line 327
    invoke-static {p0, p1}, Lorg/litepal/Operator;->averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;

    move-result-object p0

    return-object p0
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

    .line 211
    invoke-static {p0}, Lorg/litepal/Operator;->count(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static count(Ljava/lang/String;)I
    .locals 0

    .line 244
    invoke-static {p0}, Lorg/litepal/Operator;->count(Ljava/lang/String;)I

    move-result p0

    return p0
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

    .line 222
    invoke-static {p0}, Lorg/litepal/Operator;->countAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/CountExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;
    .locals 0

    .line 255
    invoke-static {p0}, Lorg/litepal/Operator;->countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/lang/Class;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)I"
        }
    .end annotation

    .line 886
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->delete(Ljava/lang/Class;J)I

    move-result p0

    return p0
.end method

.method public static varargs deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 927
    invoke-static {p0, p1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs deleteAll(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 977
    invoke-static {p0, p1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs deleteAllAsync(Ljava/lang/Class;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0
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

    .line 946
    invoke-static {p0, p1}, Lorg/litepal/Operator;->deleteAllAsync(Ljava/lang/Class;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteAllAsync(Ljava/lang/String;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0

    .line 996
    invoke-static {p0, p1}, Lorg/litepal/Operator;->deleteAllAsync(Ljava/lang/String;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static deleteAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;"
        }
    .end annotation

    .line 899
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->deleteAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDatabase(Ljava/lang/String;)Z
    .locals 0

    .line 91
    invoke-static {p0}, Lorg/litepal/Operator;->deleteDatabase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static find(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 597
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static find(Ljava/lang/Class;JZ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;JZ)TT;"
        }
    .end annotation

    .line 629
    invoke-static {p0, p1, p2, p3}, Lorg/litepal/Operator;->find(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAll(Ljava/lang/Class;Z[J)Ljava/util/List;
    .locals 0
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

    .line 830
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAll(Ljava/lang/Class;[J)Ljava/util/List;
    .locals 0
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

    .line 798
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAllAsync(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 0
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

    .line 845
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->findAllAsync(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAllAsync(Ljava/lang/Class;[J)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 0
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

    .line 811
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findAllAsync(Ljava/lang/Class;[J)Lorg/litepal/crud/async/FindMultiExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 610
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->findAsync(Ljava/lang/Class;J)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findAsync(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 644
    invoke-static {p0, p1, p2, p3}, Lorg/litepal/Operator;->findAsync(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findBySQL([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 865
    invoke-static {p0}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 663
    invoke-static {p0}, Lorg/litepal/Operator;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 691
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findFirstAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 674
    invoke-static {p0}, Lorg/litepal/Operator;->findFirstAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 704
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 723
    invoke-static {p0}, Lorg/litepal/Operator;->findLast(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 751
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findLast(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static findLastAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 734
    invoke-static {p0}, Lorg/litepal/Operator;->findLastAsync(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 764
    invoke-static {p0, p1}, Lorg/litepal/Operator;->findLastAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 65
    invoke-static {}, Lorg/litepal/Operator;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lorg/litepal/Operator;->initialize(Landroid/content/Context;)V

    return-void
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

    .line 1212
    invoke-static {p0, p1}, Lorg/litepal/Operator;->isExist(Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static limit(I)Lorg/litepal/FluentQuery;
    .locals 0

    .line 171
    invoke-static {p0}, Lorg/litepal/Operator;->limit(I)Lorg/litepal/FluentQuery;

    move-result-object p0

    return-object p0
.end method

.method public static markAsDeleted(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/LitePalSupport;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1198
    invoke-static {p0}, Lorg/litepal/Operator;->markAsDeleted(Ljava/util/Collection;)V

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

    .line 353
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->max(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    .line 394
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 368
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->maxAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 409
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
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

    .line 435
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->min(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    .line 476
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 450
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->minAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 491
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->minAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static offset(I)Lorg/litepal/FluentQuery;
    .locals 0

    .line 189
    invoke-static {p0}, Lorg/litepal/Operator;->offset(I)Lorg/litepal/FluentQuery;

    move-result-object p0

    return-object p0
.end method

.method public static order(Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 153
    invoke-static {p0}, Lorg/litepal/Operator;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    return-object p0
.end method

.method public static registerDatabaseListener(Lorg/litepal/tablemanager/callback/DatabaseListener;)V
    .locals 0

    .line 1219
    invoke-static {p0}, Lorg/litepal/Operator;->registerDatabaseListener(Lorg/litepal/tablemanager/callback/DatabaseListener;)V

    return-void
.end method

.method public static saveAll(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/LitePalSupport;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1176
    invoke-static {p0}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)V

    return-void
.end method

.method public static saveAllAsync(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;
    .locals 0
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

    .line 1187
    invoke-static {p0}, Lorg/litepal/Operator;->saveAllAsync(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs select([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 114
    invoke-static {p0}, Lorg/litepal/Operator;->select([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    return-object p0
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

    .line 517
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    .line 558
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 532
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sumAsync(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
    .locals 0
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

    .line 573
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->sumAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static update(Ljava/lang/Class;Landroid/content/ContentValues;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "J)I"
        }
    .end annotation

    .line 1021
    invoke-static {p0, p1, p2, p3}, Lorg/litepal/Operator;->update(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    move-result p0

    return p0
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

    .line 1070
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static varargs updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 0

    .line 1125
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    return p0
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

    .line 1092
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAllAsync(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs updateAllAsync(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0

    .line 1147
    invoke-static {p0, p1, p2}, Lorg/litepal/Operator;->updateAllAsync(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static updateAsync(Ljava/lang/Class;Landroid/content/ContentValues;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 0
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

    .line 1037
    invoke-static {p0, p1, p2, p3}, Lorg/litepal/Operator;->updateAsync(Ljava/lang/Class;Landroid/content/ContentValues;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static use(Lorg/litepal/LitePalDB;)V
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/litepal/Operator;->use(Lorg/litepal/LitePalDB;)V

    return-void
.end method

.method public static useDefault()V
    .locals 0

    .line 81
    invoke-static {}, Lorg/litepal/Operator;->useDefault()V

    return-void
.end method

.method public static varargs where([Ljava/lang/String;)Lorg/litepal/FluentQuery;
    .locals 0

    .line 133
    invoke-static {p0}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    return-object p0
.end method
