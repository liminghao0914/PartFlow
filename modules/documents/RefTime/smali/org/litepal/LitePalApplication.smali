.class public Lorg/litepal/LitePalApplication;
.super Landroid/app/Application;
.source "LitePalApplication.java"


# static fields
.field public static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    sput-object p0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 63
    sget-object v0, Lorg/litepal/LitePalApplication;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/litepal/exceptions/GlobalException;

    const-string v1, "Application context is null. Maybe you neither configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml, nor called LitePal.initialize(Context) method."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/GlobalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
