.class public LDBManager/Database/RePlanData;
.super Lorg/litepal/crud/LitePalSupport;
.source "RePlanData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addDate:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private cycle:I

.field private cycle0:I

.field private cycle1:I

.field private cycle2:I

.field private cycle3:I

.field private cycle4:I

.field private cycle5:I

.field private cycle6:I

.field private deleteDate:Ljava/lang/String;

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private recordId:I

.field private recordSort:I

.field private sortName:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private stopTime:Ljava/lang/String;

.field private timingColor:Ljava/lang/String;

.field private unicode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/Database/RePlanData;->recordSort:I

    const-string v1, ""

    .line 19
    iput-object v1, p0, LDBManager/Database/RePlanData;->deleteDate:Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, LDBManager/Database/RePlanData;->isSelect:Z

    const-string v1, "\u65e0"

    .line 23
    iput-object v1, p0, LDBManager/Database/RePlanData;->sortName:Ljava/lang/String;

    .line 25
    iput v0, p0, LDBManager/Database/RePlanData;->cycle1:I

    .line 26
    iput v0, p0, LDBManager/Database/RePlanData;->cycle2:I

    .line 27
    iput v0, p0, LDBManager/Database/RePlanData;->cycle3:I

    .line 28
    iput v0, p0, LDBManager/Database/RePlanData;->cycle4:I

    .line 29
    iput v0, p0, LDBManager/Database/RePlanData;->cycle5:I

    .line 30
    iput v0, p0, LDBManager/Database/RePlanData;->cycle6:I

    .line 31
    iput v0, p0, LDBManager/Database/RePlanData;->cycle0:I

    return-void
.end method

.method public constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, LDBManager/Database/RePlanData;->recordSort:I

    const-string v1, ""

    .line 19
    iput-object v1, p0, LDBManager/Database/RePlanData;->deleteDate:Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, LDBManager/Database/RePlanData;->isSelect:Z

    const-string v1, "\u65e0"

    .line 23
    iput-object v1, p0, LDBManager/Database/RePlanData;->sortName:Ljava/lang/String;

    .line 25
    iput v0, p0, LDBManager/Database/RePlanData;->cycle1:I

    .line 26
    iput v0, p0, LDBManager/Database/RePlanData;->cycle2:I

    .line 27
    iput v0, p0, LDBManager/Database/RePlanData;->cycle3:I

    .line 28
    iput v0, p0, LDBManager/Database/RePlanData;->cycle4:I

    .line 29
    iput v0, p0, LDBManager/Database/RePlanData;->cycle5:I

    .line 30
    iput v0, p0, LDBManager/Database/RePlanData;->cycle6:I

    .line 31
    iput v0, p0, LDBManager/Database/RePlanData;->cycle0:I

    .line 37
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordUnicode()I

    move-result v0

    iput v0, p0, LDBManager/Database/RePlanData;->unicode:I

    .line 39
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/Database/RePlanData;->color:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDBManager/Database/RePlanData;->timingColor:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSort()I

    move-result v0

    iput v0, p0, LDBManager/Database/RePlanData;->recordSort:I

    .line 42
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getCycle()I

    move-result v0

    iput v0, p0, LDBManager/Database/RePlanData;->cycle:I

    .line 43
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDBManager/Database/RePlanData;->sortName:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->unicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RePlanData;->recordId:I

    return-void
.end method


# virtual methods
.method public getAddDate()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, LDBManager/Database/RePlanData;->addDate:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, LDBManager/Database/RePlanData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCycle()I
    .locals 1

    .line 190
    iget v0, p0, LDBManager/Database/RePlanData;->cycle:I

    return v0
.end method

.method public getCycle0()I
    .locals 1

    .line 181
    iget v0, p0, LDBManager/Database/RePlanData;->cycle0:I

    return v0
.end method

.method public getCycle1()I
    .locals 1

    .line 127
    iget v0, p0, LDBManager/Database/RePlanData;->cycle1:I

    return v0
.end method

.method public getCycle2()I
    .locals 1

    .line 136
    iget v0, p0, LDBManager/Database/RePlanData;->cycle2:I

    return v0
.end method

.method public getCycle3()I
    .locals 1

    .line 145
    iget v0, p0, LDBManager/Database/RePlanData;->cycle3:I

    return v0
.end method

.method public getCycle4()I
    .locals 1

    .line 154
    iget v0, p0, LDBManager/Database/RePlanData;->cycle4:I

    return v0
.end method

.method public getCycle5()I
    .locals 1

    .line 163
    iget v0, p0, LDBManager/Database/RePlanData;->cycle5:I

    return v0
.end method

.method public getCycle6()I
    .locals 1

    .line 172
    iget v0, p0, LDBManager/Database/RePlanData;->cycle6:I

    return v0
.end method

.method public getDeleteDate()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, LDBManager/Database/RePlanData;->deleteDate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    .line 115
    iget v0, p0, LDBManager/Database/RePlanData;->recordId:I

    return v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 211
    iget v0, p0, LDBManager/Database/RePlanData;->recordSort:I

    return v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, LDBManager/Database/RePlanData;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, LDBManager/Database/RePlanData;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, LDBManager/Database/RePlanData;->stopTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimingColor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, LDBManager/Database/RePlanData;->timingColor:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicode()I
    .locals 1

    .line 57
    iget v0, p0, LDBManager/Database/RePlanData;->unicode:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, LDBManager/Database/RePlanData;->isSelect:Z

    return v0
.end method

.method public setAddDate(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, LDBManager/Database/RePlanData;->addDate:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, LDBManager/Database/RePlanData;->color:Ljava/lang/String;

    return-void
.end method

.method public setCycle(I)V
    .locals 1

    .line 194
    iput p1, p0, LDBManager/Database/RePlanData;->cycle:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput p1, p0, LDBManager/Database/RePlanData;->cycle6:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle5:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle4:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle3:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle2:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle1:I

    iput p1, p0, LDBManager/Database/RePlanData;->cycle0:I

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle6:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle5:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle4:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle3:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RePlanData;->cycle0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LDBManager/Database/RePlanData;->cycle:I

    :goto_0
    return-void
.end method

.method public setCycle0(I)V
    .locals 0

    .line 185
    iput p1, p0, LDBManager/Database/RePlanData;->cycle0:I

    return-void
.end method

.method public setCycle1(I)V
    .locals 0

    .line 131
    iput p1, p0, LDBManager/Database/RePlanData;->cycle1:I

    return-void
.end method

.method public setCycle2(I)V
    .locals 0

    .line 140
    iput p1, p0, LDBManager/Database/RePlanData;->cycle2:I

    return-void
.end method

.method public setCycle3(I)V
    .locals 0

    .line 149
    iput p1, p0, LDBManager/Database/RePlanData;->cycle3:I

    return-void
.end method

.method public setCycle4(I)V
    .locals 0

    .line 158
    iput p1, p0, LDBManager/Database/RePlanData;->cycle4:I

    return-void
.end method

.method public setCycle5(I)V
    .locals 0

    .line 167
    iput p1, p0, LDBManager/Database/RePlanData;->cycle5:I

    return-void
.end method

.method public setCycle6(I)V
    .locals 0

    .line 176
    iput p1, p0, LDBManager/Database/RePlanData;->cycle6:I

    return-void
.end method

.method public setDeleteDate(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, LDBManager/Database/RePlanData;->deleteDate:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 52
    iput-object p1, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LDBManager/Database/RePlanData;->unicode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RePlanData;->recordId:I

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 215
    iput p1, p0, LDBManager/Database/RePlanData;->recordSort:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, LDBManager/Database/RePlanData;->isSelect:Z

    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, LDBManager/Database/RePlanData;->sortName:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, LDBManager/Database/RePlanData;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStopTime(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, LDBManager/Database/RePlanData;->stopTime:Ljava/lang/String;

    return-void
.end method

.method public setTimingColor(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, LDBManager/Database/RePlanData;->timingColor:Ljava/lang/String;

    return-void
.end method

.method public setUnicode(I)V
    .locals 2

    .line 61
    iput p1, p0, LDBManager/Database/RePlanData;->unicode:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, LDBManager/Database/RePlanData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RePlanData;->recordId:I

    return-void
.end method
