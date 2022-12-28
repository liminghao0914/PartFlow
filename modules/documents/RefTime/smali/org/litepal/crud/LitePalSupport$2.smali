.class Lorg/litepal/crud/LitePalSupport$2;
.super Ljava/lang/Object;
.source "LitePalSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/LitePalSupport;->updateAsync(J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/LitePalSupport;

.field final synthetic val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lorg/litepal/crud/LitePalSupport;JLorg/litepal/crud/async/UpdateOrDeleteExecutor;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/litepal/crud/LitePalSupport$2;->this$0:Lorg/litepal/crud/LitePalSupport;

    iput-wide p2, p0, Lorg/litepal/crud/LitePalSupport$2;->val$id:J

    iput-object p4, p0, Lorg/litepal/crud/LitePalSupport$2;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/LitePalSupport$2;->this$0:Lorg/litepal/crud/LitePalSupport;

    iget-wide v2, p0, Lorg/litepal/crud/LitePalSupport$2;->val$id:J

    invoke-virtual {v1, v2, v3}, Lorg/litepal/crud/LitePalSupport;->update(J)I

    move-result v1

    .line 231
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport$2;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->getListener()Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Lorg/litepal/Operator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/LitePalSupport$2$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/LitePalSupport$2$1;-><init>(Lorg/litepal/crud/LitePalSupport$2;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
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
