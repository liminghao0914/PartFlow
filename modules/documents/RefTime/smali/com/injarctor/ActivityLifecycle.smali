.class public Lcom/injarctor/ActivityLifecycle;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"


# instance fields
.field private EntryTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onCreateDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onCreateDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onCreateEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onCreateEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onCreateExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onCreateExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onDestroyDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onDestroyDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onDestroyEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onDestroyEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onDestroyExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onDestroyExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onPauseDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onPauseDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onPauseEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onPauseEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onPauseExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onPauseExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onRestartDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onRestartDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onRestartEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onRestartEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onRestartExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onRestartExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onResumeDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onResumeDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onResumeEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onResumeEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onResumeExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onResumeExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStartDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onStartDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStartEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onStartEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStartExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onStartExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStopDelta(Landroid/app/Activity;J)V
    .registers 10

    new-instance v6, Lcom/injarctor/HttpHandler;

    invoke-direct {v6}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string v0, "onStopDelta"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStopEntry(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onStopEntry"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static onStopExit(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/injarctor/HttpHandler;

    invoke-direct {v0}, Lcom/injarctor/HttpHandler;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v1, "onStopExit"

    invoke-static {v1, p0, v2, v3}, Lcom/injarctor/InJARctor;->SessionStatusBuilder(Ljava/lang/String;Landroid/app/Activity;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/injarctor/HttpHandler;->setLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getEntryTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/injarctor/ActivityLifecycle;->EntryTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/injarctor/ActivityLifecycle;->EntryTime:Ljava/lang/String;

    return-void
.end method
