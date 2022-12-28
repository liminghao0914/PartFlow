.class final LDBManager/DBHelper/GetListData$1;
.super Ljava/lang/Object;
.source "GetListData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDBManager/DBHelper/GetListData;->getAllChartDataForMonth(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LDBManager/StatisticsActivityData/RecordForChart;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(LDBManager/StatisticsActivityData/RecordForChart;LDBManager/StatisticsActivityData/RecordForChart;)I
    .locals 0

    .line 73
    invoke-virtual {p1}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordSort()I

    move-result p1

    invoke-virtual {p2}, LDBManager/StatisticsActivityData/RecordForChart;->getRecordSort()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 70
    check-cast p1, LDBManager/StatisticsActivityData/RecordForChart;

    check-cast p2, LDBManager/StatisticsActivityData/RecordForChart;

    invoke-virtual {p0, p1, p2}, LDBManager/DBHelper/GetListData$1;->compare(LDBManager/StatisticsActivityData/RecordForChart;LDBManager/StatisticsActivityData/RecordForChart;)I

    move-result p1

    return p1
.end method
