.class Lorg/litepal/FluentQuery$5;
.super Ljava/lang/Object;
.source "FluentQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/FluentQuery;->averageAsync(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/FluentQuery;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$executor:Lorg/litepal/crud/async/AverageExecutor;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;Lorg/litepal/crud/async/AverageExecutor;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lorg/litepal/FluentQuery$5;->this$0:Lorg/litepal/FluentQuery;

    iput-object p2, p0, Lorg/litepal/FluentQuery$5;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/FluentQuery$5;->val$column:Ljava/lang/String;

    iput-object p4, p0, Lorg/litepal/FluentQuery$5;->val$executor:Lorg/litepal/crud/async/AverageExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 605
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Lorg/litepal/FluentQuery$5;->this$0:Lorg/litepal/FluentQuery;

    iget-object v2, p0, Lorg/litepal/FluentQuery$5;->val$tableName:Ljava/lang/String;

    iget-object v3, p0, Lorg/litepal/FluentQuery$5;->val$column:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/litepal/FluentQuery;->average(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    .line 607
    iget-object v3, p0, Lorg/litepal/FluentQuery$5;->val$executor:Lorg/litepal/crud/async/AverageExecutor;

    invoke-virtual {v3}, Lorg/litepal/crud/async/AverageExecutor;->getListener()Lorg/litepal/crud/callback/AverageCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 608
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/litepal/FluentQuery$5$1;

    invoke-direct {v4, p0, v1, v2}, Lorg/litepal/FluentQuery$5$1;-><init>(Lorg/litepal/FluentQuery$5;D)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
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
