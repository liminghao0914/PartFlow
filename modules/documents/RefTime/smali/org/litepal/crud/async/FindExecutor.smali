.class public Lorg/litepal/crud/async/FindExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "FindExecutor.java"


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
.field private cb:Lorg/litepal/crud/callback/FindCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/litepal/crud/callback/FindCallback<",
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
.method public getListener()Lorg/litepal/crud/callback/FindCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/litepal/crud/callback/FindCallback<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/litepal/crud/async/FindExecutor;->cb:Lorg/litepal/crud/callback/FindCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/FindCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/callback/FindCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lorg/litepal/crud/async/FindExecutor;->cb:Lorg/litepal/crud/callback/FindCallback;

    .line 37
    invoke-virtual {p0}, Lorg/litepal/crud/async/FindExecutor;->execute()V

    return-void
.end method
