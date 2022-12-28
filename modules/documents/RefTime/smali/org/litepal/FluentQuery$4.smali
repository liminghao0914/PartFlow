.class Lorg/litepal/FluentQuery$4;
.super Ljava/lang/Object;
.source "FluentQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/FluentQuery;->countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/FluentQuery;

.field final synthetic val$executor:Lorg/litepal/crud/async/CountExecutor;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/litepal/FluentQuery;Ljava/lang/String;Lorg/litepal/crud/async/CountExecutor;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lorg/litepal/FluentQuery$4;->this$0:Lorg/litepal/FluentQuery;

    iput-object p2, p0, Lorg/litepal/FluentQuery$4;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/FluentQuery$4;->val$executor:Lorg/litepal/crud/async/CountExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 512
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lorg/litepal/FluentQuery$4;->this$0:Lorg/litepal/FluentQuery;

    iget-object v2, p0, Lorg/litepal/FluentQuery$4;->val$tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->count(Ljava/lang/String;)I

    move-result v1

    .line 514
    iget-object v2, p0, Lorg/litepal/FluentQuery$4;->val$executor:Lorg/litepal/crud/async/CountExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/CountExecutor;->getListener()Lorg/litepal/crud/callback/CountCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 515
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/FluentQuery$4$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/FluentQuery$4$1;-><init>(Lorg/litepal/FluentQuery$4;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
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
