.class public LDBManager/Database/UserSettingData;
.super Lorg/litepal/crud/LitePalSupport;
.source "UserSettingData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private CountdownTime:Z

.field private ShowPercentage:Z

.field private mMinute:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LDBManager/Database/UserSettingData;->CountdownTime:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LDBManager/Database/UserSettingData;->ShowPercentage:Z

    const-string v0, "25min"

    .line 10
    iput-object v0, p0, LDBManager/Database/UserSettingData;->mMinute:Ljava/lang/String;

    .line 13
    iput-boolean p1, p0, LDBManager/Database/UserSettingData;->CountdownTime:Z

    .line 14
    iput-object p3, p0, LDBManager/Database/UserSettingData;->mMinute:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, LDBManager/Database/UserSettingData;->ShowPercentage:Z

    return-void
.end method


# virtual methods
.method public getmMinute()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, LDBManager/Database/UserSettingData;->mMinute:Ljava/lang/String;

    return-object v0
.end method

.method public isCountdownTime()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, LDBManager/Database/UserSettingData;->CountdownTime:Z

    return v0
.end method

.method public isShowPercentage()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, LDBManager/Database/UserSettingData;->ShowPercentage:Z

    return v0
.end method

.method public setCountdownTime(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, LDBManager/Database/UserSettingData;->CountdownTime:Z

    return-void
.end method

.method public setShowPercentage(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, LDBManager/Database/UserSettingData;->ShowPercentage:Z

    return-void
.end method

.method public setmMinute(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, LDBManager/Database/UserSettingData;->mMinute:Ljava/lang/String;

    return-void
.end method
