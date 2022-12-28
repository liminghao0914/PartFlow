.class final Lorg/litepal/Operator$9;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator;->findAllAsync(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

.field final synthetic val$ids:[J

.field final synthetic val$isEager:Z

.field final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Z[JLorg/litepal/crud/async/FindMultiExecutor;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lorg/litepal/Operator$9;->val$modelClass:Ljava/lang/Class;

    iput-boolean p2, p0, Lorg/litepal/Operator$9;->val$isEager:Z

    iput-object p3, p0, Lorg/litepal/Operator$9;->val$ids:[J

    iput-object p4, p0, Lorg/litepal/Operator$9;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1137
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lorg/litepal/Operator$9;->val$modelClass:Ljava/lang/Class;

    iget-boolean v2, p0, Lorg/litepal/Operator$9;->val$isEager:Z

    iget-object v3, p0, Lorg/litepal/Operator$9;->val$ids:[J

    invoke-static {v1, v2, v3}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object v1

    .line 1139
    iget-object v2, p0, Lorg/litepal/Operator$9;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindMultiExecutor;->getListener()Lorg/litepal/crud/callback/FindMultiCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1140
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/Operator$9$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/Operator$9$1;-><init>(Lorg/litepal/Operator$9;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
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
