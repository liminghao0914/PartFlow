.class public LDBManager/Database/RecordMenu;
.super Lorg/litepal/crud/LitePalSupport;
.source "RecordMenu.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addRecordDate:Ljava/lang/String;

.field private deleteRecordDate:Ljava/lang/String;

.field private recordId:I

.field private recordName:Ljava/lang/String;

.field private recordSort:I

.field private recordSortColor:Ljava/lang/String;

.field private recordSortColorTiming:Ljava/lang/String;

.field private recordSortName:Ljava/lang/String;

.field private recordUnicode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, LDBManager/Database/RecordMenu;->deleteRecordDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, LDBManager/Database/RecordMenu;->recordSort:I

    const-string v0, "0"

    .line 18
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortName:Ljava/lang/String;

    const-string v0, "#CCEDD2"

    .line 19
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColor:Ljava/lang/String;

    const-string v0, "#8BC5A1"

    .line 20
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, LDBManager/Database/RecordMenu;->deleteRecordDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, LDBManager/Database/RecordMenu;->recordSort:I

    const-string v0, "0"

    .line 18
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortName:Ljava/lang/String;

    const-string v0, "#CCEDD2"

    .line 19
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColor:Ljava/lang/String;

    const-string v0, "#8BC5A1"

    .line 20
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColorTiming:Ljava/lang/String;

    .line 31
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    .line 32
    iput p2, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordMenu;->recordId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, LDBManager/Database/RecordMenu;->deleteRecordDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, LDBManager/Database/RecordMenu;->recordSort:I

    const-string v0, "0"

    .line 18
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortName:Ljava/lang/String;

    const-string v0, "#CCEDD2"

    .line 19
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColor:Ljava/lang/String;

    const-string v0, "#8BC5A1"

    .line 20
    iput-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColorTiming:Ljava/lang/String;

    .line 24
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    .line 25
    iput p2, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    .line 26
    iput-object p3, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordMenu;->recordId:I

    return-void
.end method


# virtual methods
.method public getAddRecordDate()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteRecordDate()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, LDBManager/Database/RecordMenu;->deleteRecordDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    .line 62
    iget v0, p0, LDBManager/Database/RecordMenu;->recordId:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 74
    iget v0, p0, LDBManager/Database/RecordMenu;->recordSort:I

    return v0
.end method

.method public getRecordSortColor()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortColorTiming()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordSortColorTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordUnicode()I
    .locals 1

    .line 45
    iget v0, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    return v0
.end method

.method public setAddRecordDate(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, LDBManager/Database/RecordMenu;->addRecordDate:Ljava/lang/String;

    return-void
.end method

.method public setDeleteRecordDate(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, LDBManager/Database/RecordMenu;->deleteRecordDate:Ljava/lang/String;

    return-void
.end method

.method public setRecordName(Ljava/lang/String;)V
    .locals 1

    .line 41
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordMenu;->recordId:I

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 78
    iput p1, p0, LDBManager/Database/RecordMenu;->recordSort:I

    return-void
.end method

.method public setRecordSortColor(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordSortColor:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortColorTiming(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, LDBManager/Database/RecordMenu;->recordSortName:Ljava/lang/String;

    return-void
.end method

.method public setRecordUnicode(I)V
    .locals 1

    .line 49
    iput p1, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LDBManager/Database/RecordMenu;->recordUnicode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDBManager/Database/RecordMenu;->recordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LDateHelper/GetHashCode;->getHash(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LDBManager/Database/RecordMenu;->recordId:I

    return-void
.end method
