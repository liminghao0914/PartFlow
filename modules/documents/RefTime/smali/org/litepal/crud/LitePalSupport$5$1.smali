.class Lorg/litepal/crud/LitePalSupport$5$1;
.super Ljava/lang/Object;
.source "LitePalSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/LitePalSupport$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/litepal/crud/LitePalSupport$5;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lorg/litepal/crud/LitePalSupport$5;Z)V
    .locals 0

    .line 520
    iput-object p1, p0, Lorg/litepal/crud/LitePalSupport$5$1;->this$1:Lorg/litepal/crud/LitePalSupport$5;

    iput-boolean p2, p0, Lorg/litepal/crud/LitePalSupport$5$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 523
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport$5$1;->this$1:Lorg/litepal/crud/LitePalSupport$5;

    iget-object v0, v0, Lorg/litepal/crud/LitePalSupport$5;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/SaveExecutor;->getListener()Lorg/litepal/crud/callback/SaveCallback;

    move-result-object v0

    iget-boolean v1, p0, Lorg/litepal/crud/LitePalSupport$5$1;->val$success:Z

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/SaveCallback;->onFinish(Z)V

    return-void
.end method
