.class public LDBManager/RePlanData/ReplanList;
.super Ljava/lang/Object;
.source "ReplanList.java"


# instance fields
.field private isSelect:Z

.field private rePlanDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/Database/RePlanData;",
            ">;"
        }
    .end annotation
.end field

.field private recordSort:I

.field private recordSortColor:Ljava/lang/String;

.field private recordSortColorTiming:Ljava/lang/String;

.field private recordSortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(LDBManager/Database/RecordSort;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, LDBManager/RePlanData/ReplanList;->isSelect:Z

    .line 11
    iput v0, p0, LDBManager/RePlanData/ReplanList;->recordSort:I

    const-string v0, "0"

    .line 12
    iput-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortName:Ljava/lang/String;

    const-string v0, "#CCEDD2"

    .line 13
    iput-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortColor:Ljava/lang/String;

    const-string v0, "#8BC5A1"

    .line 14
    iput-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortColorTiming:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getId()I

    move-result v0

    iput v0, p0, LDBManager/RePlanData/ReplanList;->recordSort:I

    .line 18
    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortColor:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDBManager/RePlanData/ReplanList;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRePlanDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDBManager/Database/RePlanData;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, LDBManager/RePlanData/ReplanList;->rePlanDataList:Ljava/util/List;

    return-object v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 48
    iget v0, p0, LDBManager/RePlanData/ReplanList;->recordSort:I

    return v0
.end method

.method public getRecordSortColor()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortColorTiming()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortColorTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, LDBManager/RePlanData/ReplanList;->recordSortName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, LDBManager/RePlanData/ReplanList;->isSelect:Z

    return v0
.end method

.method public setRePlanDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RePlanData;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, LDBManager/RePlanData/ReplanList;->rePlanDataList:Ljava/util/List;

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 52
    iput p1, p0, LDBManager/RePlanData/ReplanList;->recordSort:I

    return-void
.end method

.method public setRecordSortColor(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, LDBManager/RePlanData/ReplanList;->recordSortColor:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortColorTiming(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, LDBManager/RePlanData/ReplanList;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, LDBManager/RePlanData/ReplanList;->recordSortName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, LDBManager/RePlanData/ReplanList;->isSelect:Z

    return-void
.end method
