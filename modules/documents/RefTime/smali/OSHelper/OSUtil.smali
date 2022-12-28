.class public LOSHelper/OSUtil;
.super Ljava/lang/Object;
.source "OSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOSHelper/OSUtil$BuildProperties;
    }
.end annotation


# static fields
.field private static final KEY_EMUI_API_LEVEL:Ljava/lang/String; = "ro.build.hw_emui_api_level"

.field private static final KEY_EMUI_CONFIG_HW_SYS_VERSION:Ljava/lang/String; = "ro.confg.hw_systemversion"

.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_FLYME_ICON_FALG:Ljava/lang/String; = "persist.sys.use.flyme.icon"

.field private static final KEY_FLYME_ID_FALG_KEY:Ljava/lang/String; = "ro.build.display.id"

.field private static final KEY_FLYME_ID_FALG_VALUE_KEYWORD:Ljava/lang/String; = "Flyme"

.field private static final KEY_FLYME_PUBLISH_FALG:Ljava/lang/String; = "ro.flyme.published"

.field private static final KEY_FLYME_SETUP_FALG:Ljava/lang/String; = "ro.meizu.setupwizard.flyme"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEMUI()Z
    .locals 3

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ro.build.version.emui"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ro.build.hw_emui_api_level"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ro.confg.hw_systemversion"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, LOSHelper/OSUtil;->isPropertiesExist([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlyme()Z
    .locals 5

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "persist.sys.use.flyme.icon"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ro.meizu.setupwizard.flyme"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ro.flyme.published"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v0}, LOSHelper/OSUtil;->isPropertiesExist([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 49
    :cond_0
    :try_start_0
    invoke-static {}, LOSHelper/OSUtil$BuildProperties;->newInstance()LOSHelper/OSUtil$BuildProperties;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    .line 50
    invoke-virtual {v0, v1}, LOSHelper/OSUtil$BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.build.display.id"

    .line 51
    invoke-virtual {v0, v1}, LOSHelper/OSUtil$BuildProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v3

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public static isMIUI()Z
    .locals 3

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ro.miui.ui.version.code"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ro.miui.ui.version.name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ro.miui.internal.storage"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, LOSHelper/OSUtil;->isPropertiesExist([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs isPropertiesExist([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 81
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    :try_start_0
    invoke-static {}, LOSHelper/OSUtil$BuildProperties;->newInstance()LOSHelper/OSUtil$BuildProperties;

    move-result-object v1

    .line 86
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 87
    invoke-virtual {v1, v4}, LOSHelper/OSUtil$BuildProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method
