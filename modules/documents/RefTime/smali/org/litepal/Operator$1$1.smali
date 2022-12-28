.class Lorg/litepal/Operator$1$1;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/Operator$1;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/litepal/Operator$1;I)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/litepal/Operator$1$1;->this$0:Lorg/litepal/Operator$1;

    iput p2, p0, Lorg/litepal/Operator$1$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/litepal/Operator$1$1;->this$0:Lorg/litepal/Operator$1;

    iget-object v0, v0, Lorg/litepal/Operator$1;->val$executor:Lorg/litepal/crud/async/CountExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/CountExecutor;->getListener()Lorg/litepal/crud/callback/CountCallback;

    move-result-object v0

    iget v1, p0, Lorg/litepal/Operator$1$1;->val$count:I

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/CountCallback;->onFinish(I)V

    return-void
.end method
