.class public Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/MyX509TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "checkClientTrustedDelta"

    const-string v5, "www.littlefoxes.reftime.ServerHelper.ServerConnect.MyX509TrustManager"

    const-string v6, "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "checkServerTrustedDelta"

    const-string v5, "www.littlefoxes.reftime.ServerHelper.ServerConnect.MyX509TrustManager"

    const-string v6, "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getAcceptedIssuersDelta"

    const-string v6, "www.littlefoxes.reftime.ServerHelper.ServerConnect.MyX509TrustManager"

    const-string v7, "()[Ljava/security/cert/X509Certificate;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method
