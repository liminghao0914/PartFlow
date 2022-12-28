.class public LListFluHelper/PublicData;
.super Landroid/app/Application;
.source "PublicData.java"


# instance fields
.field public frashList:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrashList()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, LListFluHelper/PublicData;->frashList:Z

    return v0
.end method

.method public setFrashList(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, LListFluHelper/PublicData;->frashList:Z

    return-void
.end method
