.class public LDBManager/Database/RecordData;
.super Lorg/litepal/crud/LitePalSupport;
.source "RecordData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private recordDate:Ljava/lang/String;

.field private recordId:I

.field private recordName:Ljava/lang/String;

.field private recordSort:I

.field private recordTime:I

.field private recordUnicode:I

.field private startTime:Ljava/lang/String;

.field private status:Z

.field private stopTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, LDBManager/Database/RecordData;->recordTime:I

    .line 15
    iput v0, p0, LDBManager/Database/RecordData;->recordSort:I

    const-string v1, ""

    .line 16
    iput-object v1, p0, LDBManager/Database/RecordData;->startTime:Ljava/lang/String;

    const-string v1, ""

    .line 17
    iput-object v1, p0, LDBManager/Database/RecordData;->stopTime:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, LDBManager/Database/RecordData;->status:Z

    .line 21
    iput-object p1, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    .line 22
    iput p2, p0, LDBManager/Database/RecordData;->recordUnicode:I

    .line 23
    iput-object p3, p0, LDBManager/Database/RecordData;->recordDate:Ljava/lang/String;

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordData;->recordId:I

    return-void
.end method


# virtual methods
.method public getRecordDate()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, LDBManager/Database/RecordData;->recordDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    .line 28
    iget v0, p0, LDBManager/Database/RecordData;->recordId:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 70
    iget v0, p0, LDBManager/Database/RecordData;->recordSort:I

    return v0
.end method

.method public getRecordTime()I
    .locals 1

    .line 54
    iget v0, p0, LDBManager/Database/RecordData;->recordTime:I

    return v0
.end method

.method public getRecordUnicode()I
    .locals 1

    .line 45
    iget v0, p0, LDBManager/Database/RecordData;->recordUnicode:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, LDBManager/Database/RecordData;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, LDBManager/Database/RecordData;->stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, LDBManager/Database/RecordData;->status:Z

    return v0
.end method

.method public setRecordDate(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, LDBManager/Database/RecordData;->recordDate:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(I)V
    .locals 0

    .line 32
    iput p1, p0, LDBManager/Database/RecordData;->recordId:I

    return-void
.end method

.method public setRecordName(Ljava/lang/String;)V
    .locals 1

    .line 40
    iput-object p1, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RecordData;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordData;->recordId:I

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 74
    iput p1, p0, LDBManager/Database/RecordData;->recordSort:I

    return-void
.end method

.method public setRecordTime(I)V
    .locals 0

    .line 58
    iput p1, p0, LDBManager/Database/RecordData;->recordTime:I

    return-void
.end method

.method public setRecordUnicode(I)V
    .locals 1

    .line 49
    iput p1, p0, LDBManager/Database/RecordData;->recordUnicode:I

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RecordData;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/Database/RecordData;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordData;->recordId:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, LDBManager/Database/RecordData;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, LDBManager/Database/RecordData;->status:Z

    return-void
.end method

.method public setStopTime(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, LDBManager/Database/RecordData;->stopTime:Ljava/lang/String;

    return-void
.end method
