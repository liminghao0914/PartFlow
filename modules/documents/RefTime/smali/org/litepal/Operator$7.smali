.class final Lorg/litepal/Operator$7;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator;->findFirstAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Lorg/litepal/crud/async/FindExecutor;

.field final synthetic val$isEager:Z

.field final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;ZLorg/litepal/crud/async/FindExecutor;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lorg/litepal/Operator$7;->val$modelClass:Ljava/lang/Class;

    iput-boolean p2, p0, Lorg/litepal/Operator$7;->val$isEager:Z

    iput-object p3, p0, Lorg/litepal/Operator$7;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 953
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lorg/litepal/Operator$7;->val$modelClass:Ljava/lang/Class;

    iget-boolean v2, p0, Lorg/litepal/Operator$7;->val$isEager:Z

    invoke-static {v1, v2}, Lorg/litepal/Operator;->findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .line 955
    iget-object v2, p0, Lorg/litepal/Operator$7;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindExecutor;->getListener()Lorg/litepal/crud/callback/FindCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 956
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/Operator$7$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/Operator$7$1;-><init>(Lorg/litepal/Operator$7;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
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
