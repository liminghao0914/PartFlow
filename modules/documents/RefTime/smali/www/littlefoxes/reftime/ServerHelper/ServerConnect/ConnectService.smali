.class public Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/ConnectService;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConnJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const-string v2, "SSL"

    :try_start_6
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v5, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/MyX509TrustManager;

    invoke-direct {v5}, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/MyX509TrustManager;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_77

    const-string v5, "Content-Type"

    const-string v6, "application/json;charset=UTF-8"

    :try_start_31
    invoke-virtual {v2, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_77

    const-string v3, "GET"

    :try_start_40
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7b

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_6d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_76} :catch_77

    goto :goto_6d

    :catch_77
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7b
    const-string v2, "Error"

    :goto_7d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "GetConnJsonDelta"

    const-string v6, "www.littlefoxes.reftime.ServerHelper.ServerConnect.ConnectService"

    const-string v7, "(Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_8c
    :try_start_8c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_77

    move-result-object v2

    goto :goto_7d
.end method

.method private static GetConnSerialized(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 9

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const-string v2, "SSL"

    :try_start_7
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    new-instance v6, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/MyX509TrustManager;

    invoke-direct {v6}, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/MyX509TrustManager;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_5f

    const-string v3, "Content-type"

    const-string v6, "application/x-java-serialized-object"

    :try_start_32
    invoke-virtual {v2, v3, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_59

    const-string v3, "GET"

    :try_start_41
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_59

    :goto_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "GetConnSerializedDelta"

    const-string v6, "www.littlefoxes.reftime.ServerHelper.ServerConnect.ConnectService"

    const-string v7, "(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :catch_59
    move-exception v3

    move-object v4, v3

    :goto_5b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    :catch_5f
    move-exception v4

    move-object v2, v3

    goto :goto_5b
.end method
