.class Lorg/litepal/Operator$2$1;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/Operator$2;

.field final synthetic val$average:D


# direct methods
.method constructor <init>(Lorg/litepal/Operator$2;D)V
    .locals 0

    .line 474
    iput-object p1, p0, Lorg/litepal/Operator$2$1;->this$0:Lorg/litepal/Operator$2;

    iput-wide p2, p0, Lorg/litepal/Operator$2$1;->val$average:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 477
    iget-object v0, p0, Lorg/litepal/Operator$2$1;->this$0:Lorg/litepal/Operator$2;

    iget-object v0, v0, Lorg/litepal/Operator$2;->val$executor:Lorg/litepal/crud/async/AverageExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/AverageExecutor;->getListener()Lorg/litepal/crud/callback/AverageCallback;

    move-result-object v0

    iget-wide v1, p0, Lorg/litepal/Operator$2$1;->val$average:D

    invoke-interface {v0, v1, v2}, Lorg/litepal/crud/callback/AverageCallback;->onFinish(D)V

    return-void
.end method
