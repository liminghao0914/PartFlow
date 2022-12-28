.class public LDBManager/Database/RecordSort;
.super Lorg/litepal/crud/LitePalSupport;
.source "RecordSort.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private childNum:I

.field private color:Ljava/lang/String;

.field private colorTiming:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 18
    iput p1, p0, LDBManager/Database/RecordSort;->id:I

    .line 19
    iput-object p2, p0, LDBManager/Database/RecordSort;->name:Ljava/lang/String;

    .line 20
    iput-object p3, p0, LDBManager/Database/RecordSort;->color:Ljava/lang/String;

    .line 21
    iput-object p4, p0, LDBManager/Database/RecordSort;->colorTiming:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildNum()I
    .locals 1

    .line 57
    iget v0, p0, LDBManager/Database/RecordSort;->childNum:I

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, LDBManager/Database/RecordSort;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getColorTiming()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, LDBManager/Database/RecordSort;->colorTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 25
    iget v0, p0, LDBManager/Database/RecordSort;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, LDBManager/Database/RecordSort;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 33
    iget v0, p0, LDBManager/Database/RecordSort;->priority:I

    return v0
.end method

.method public setChildNum(I)V
    .locals 0

    .line 61
    iput p1, p0, LDBManager/Database/RecordSort;->childNum:I

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, LDBManager/Database/RecordSort;->color:Ljava/lang/String;

    return-void
.end method

.method public setColorTiming(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, LDBManager/Database/RecordSort;->colorTiming:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 29
    iput p1, p0, LDBManager/Database/RecordSort;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, LDBManager/Database/RecordSort;->name:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 37
    iput p1, p0, LDBManager/Database/RecordSort;->priority:I

    return-void
.end method
