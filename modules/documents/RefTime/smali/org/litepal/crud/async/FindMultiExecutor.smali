.class public Lorg/litepal/crud/async/FindMultiExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "FindMultiExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/litepal/crud/async/AsyncExecutor;"
    }
.end annotation


# instance fields
.field private cb:Lorg/litepal/crud/callback/FindMultiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/litepal/crud/callback/FindMultiCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/litepal/crud/async/AsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/litepal/crud/callback/FindMultiCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/litepal/crud/callback/FindMultiCallback<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/litepal/crud/async/FindMultiExecutor;->cb:Lorg/litepal/crud/callback/FindMultiCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/FindMultiCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/callback/FindMultiCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lorg/litepal/crud/async/FindMultiExecutor;->cb:Lorg/litepal/crud/callback/FindMultiCallback;

    .line 37
    invoke-virtual {p0}, Lorg/litepal/crud/async/FindMultiExecutor;->execute()V

    return-void
.end method
