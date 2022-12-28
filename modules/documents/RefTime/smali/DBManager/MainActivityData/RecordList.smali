.class public LDBManager/MainActivityData/RecordList;
.super Lorg/litepal/crud/LitePalSupport;
.source "RecordList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cycle:I

.field private editable:Z

.field private recordId:I

.field private recordName:Ljava/lang/String;

.field private recordSort:I

.field private recordSortColor:Ljava/lang/String;

.field private recordSortColorTiming:Ljava/lang/String;

.field private recordSortName:Ljava/lang/String;

.field private recordTime:I

.field private recordUnicode:I

.field private startTime:Ljava/lang/String;

.field private status:Z

.field private stopTime:Ljava/lang/String;

.field private timingRecordTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 19
    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    .line 24
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    const-string v1, "\u65e0"

    .line 25
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 28
    iput v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    .line 30
    iput v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    return-void
.end method

.method public constructor <init>(LDBManager/Database/RePlanData;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 19
    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    .line 24
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    const-string v1, "\u65e0"

    .line 25
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 28
    iput v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    .line 30
    iput v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    .line 33
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getUnicode()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    .line 35
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getRecordId()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    .line 36
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getSortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortColor:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getTimingColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortColorTiming:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getStartTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getStopTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->isSelect()Z

    move-result v0

    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    .line 42
    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getCycle()I

    move-result p1

    iput p1, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    return-void
.end method

.method public constructor <init>(LDBManager/Database/RecordData;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 19
    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    .line 24
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    const-string v1, "\u65e0"

    .line 25
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 28
    iput v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    .line 30
    iput v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    .line 46
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordUnicode()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    .line 49
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordTime()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 50
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStartTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, LDBManager/Database/RecordData;->isStatus()Z

    move-result v0

    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    .line 52
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getStopTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordSort()I

    move-result p1

    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    return-void
.end method

.method public constructor <init>(LDBManager/MainActivityData/RecordList;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 19
    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    .line 24
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    const-string v1, "\u65e0"

    .line 25
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 28
    iput v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    .line 30
    iput v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    .line 56
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    .line 59
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordTime()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 60
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v0

    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    .line 62
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v0

    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    .line 64
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortColor:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    .line 19
    iput-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    .line 24
    iput v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    const-string v1, "\u65e0"

    .line 25
    iput-object v1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    .line 28
    iput v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    .line 30
    iput v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    .line 69
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    .line 70
    iput p2, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    return-void
.end method


# virtual methods
.method public getCycle()I
    .locals 1

    .line 176
    iget v0, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    return v0
.end method

.method public getRecordId()I
    .locals 1

    .line 103
    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 136
    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    return v0
.end method

.method public getRecordSortColor()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortColorTiming()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortColorTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordTime()I
    .locals 1

    .line 95
    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    return v0
.end method

.method public getRecordUnicode()I
    .locals 1

    .line 86
    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimingRecordTime()I
    .locals 1

    .line 184
    iget v0, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    return v0
.end method

.method public isStatus()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, LDBManager/MainActivityData/RecordList;->status:Z

    return v0
.end method

.method public setCycle(I)V
    .locals 0

    .line 180
    iput p1, p0, LDBManager/MainActivityData/RecordList;->cycle:I

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, LDBManager/MainActivityData/RecordList;->editable:Z

    return-void
.end method

.method public setRecordName(Ljava/lang/String;)V
    .locals 1

    .line 80
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 140
    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordSort:I

    return-void
.end method

.method public setRecordSortColor(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordSortColor:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortColorTiming(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortName(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->recordSortName:Ljava/lang/String;

    return-void
.end method

.method public setRecordTime(I)V
    .locals 0

    .line 99
    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    return-void
.end method

.method public setRecordUnicode(I)V
    .locals 1

    .line 90
    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/MainActivityData/RecordList;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordId:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, LDBManager/MainActivityData/RecordList;->status:Z

    const-string p1, ""

    .line 121
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, LDBManager/MainActivityData/RecordList;->status:Z

    return-void
.end method

.method public setStopTime(Ljava/lang/String;)V
    .locals 2

    .line 129
    iput-object p1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, LDBManager/MainActivityData/RecordList;->status:Z

    .line 131
    iget-object p1, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    invoke-static {p1, v0}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 132
    iget p1, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    iget-object v0, p0, LDBManager/MainActivityData/RecordList;->startTime:Ljava/lang/String;

    iget-object v1, p0, LDBManager/MainActivityData/RecordList;->stopTime:Ljava/lang/String;

    invoke-static {v0, v1}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, LDBManager/MainActivityData/RecordList;->recordTime:I

    :cond_0
    return-void
.end method

.method public setTimingRecordTime(I)V
    .locals 0

    .line 188
    iput p1, p0, LDBManager/MainActivityData/RecordList;->timingRecordTime:I

    return-void
.end method
