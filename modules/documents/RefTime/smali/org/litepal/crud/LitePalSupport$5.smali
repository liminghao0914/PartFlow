.class Lorg/litepal/crud/LitePalSupport$5;
.super Ljava/lang/Object;
.source "LitePalSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/LitePalSupport;->saveOrUpdateAsync([Ljava/lang/String;)Lorg/litepal/crud/async/SaveExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/LitePalSupport;

.field final synthetic val$conditions:[Ljava/lang/String;

.field final synthetic val$executor:Lorg/litepal/crud/async/SaveExecutor;


# direct methods
.method constructor <init>(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;Lorg/litepal/crud/async/SaveExecutor;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lorg/litepal/crud/LitePalSupport$5;->this$0:Lorg/litepal/crud/LitePalSupport;

    iput-object p2, p0, Lorg/litepal/crud/LitePalSupport$5;->val$conditions:[Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/crud/LitePalSupport$5;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 517
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/LitePalSupport$5;->this$0:Lorg/litepal/crud/LitePalSupport;

    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport$5;->val$conditions:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/litepal/crud/LitePalSupport;->saveOrUpdate([Ljava/lang/String;)Z

    move-result v1

    .line 519
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport$5;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/SaveExecutor;->getListener()Lorg/litepal/crud/callback/SaveCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 520
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/LitePalSupport$5$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/LitePalSupport$5$1;-><init>(Lorg/litepal/crud/LitePalSupport$5;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
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
