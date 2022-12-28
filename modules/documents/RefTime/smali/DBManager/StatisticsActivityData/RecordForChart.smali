.class public LDBManager/StatisticsActivityData/RecordForChart;
.super Lorg/litepal/crud/LitePalSupport;
.source "RecordForChart.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private recordName:Ljava/lang/String;

.field private recordSort:I

.field private recordSortColorTiming:Ljava/lang/String;

.field private recordSortName:Ljava/lang/String;

.field private recordTime:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 17
    iput-object p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordName:Ljava/lang/String;

    .line 18
    iput p2, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordTime:I

    .line 19
    iput p3, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSort:I

    .line 20
    iput-object p4, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortName:Ljava/lang/String;

    .line 21
    iput-object p5, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSort()I
    .locals 1

    .line 41
    iget v0, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSort:I

    return v0
.end method

.method public getRecordSortColorTiming()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortColorTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordSortName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordTime()I
    .locals 1

    .line 33
    iget v0, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordTime:I

    return v0
.end method

.method public setRecordName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordName:Ljava/lang/String;

    return-void
.end method

.method public setRecordSort(I)V
    .locals 0

    .line 45
    iput p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSort:I

    return-void
.end method

.method public setRecordSortColorTiming(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortColorTiming:Ljava/lang/String;

    return-void
.end method

.method public setRecordSortName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordSortName:Ljava/lang/String;

    return-void
.end method

.method public setRecordTime(I)V
    .locals 0

    .line 37
    iput p1, p0, LDBManager/StatisticsActivityData/RecordForChart;->recordTime:I

    return-void
.end method
