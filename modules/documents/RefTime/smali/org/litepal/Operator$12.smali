.class final Lorg/litepal/Operator$12;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator;->deleteAllAsync(Ljava/lang/String;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conditions:[Ljava/lang/String;

.field final synthetic val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V
    .locals 0

    .line 1373
    iput-object p1, p0, Lorg/litepal/Operator$12;->val$tableName:Ljava/lang/String;

    iput-object p2, p0, Lorg/litepal/Operator$12;->val$conditions:[Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/Operator$12;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1376
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1377
    :try_start_0
    iget-object v1, p0, Lorg/litepal/Operator$12;->val$tableName:Ljava/lang/String;

    iget-object v2, p0, Lorg/litepal/Operator$12;->val$conditions:[Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1378
    iget-object v2, p0, Lorg/litepal/Operator$12;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->getListener()Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1379
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/Operator$12$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/Operator$12$1;-><init>(Lorg/litepal/Operator$12;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1386
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
